#include <iostream>
#include <chrono>
#include <vector>
#include <cstdint>
#include <iomanip>
#include <fstream>

using Clock = std::chrono::steady_clock;

static inline void do_not_optimize_away(uint64_t v) {
    asm volatile("" :: "r"(v) : "memory");
}

// ============================================================================
// CLASSIC MODULO (FORCED SLOW PATH ON ARM)
// Forces real 128-bit division (ARM executes this VERY slowly).
// r = (r + step) % B
// ============================================================================

__attribute__((noinline))
static uint64_t classic_mod_add(uint64_t B, uint64_t iters, uint64_t step)
{
    volatile uint64_t Bv = B;          // prevents constant folding
    uint64_t r = 0;

    for (uint64_t i = 0; i < iters; i++) {
        uint64_t t = r + step;
        __uint128_t wide = ( __uint128_t ) t;
        r = (uint64_t)(wide % Bv);     // REAL division on ARM: slow
    }
    return r;
}

// ============================================================================
// REIST MODULO ADDITION (branchless, no division)
// r = (r + step) mod B
// implemented as:
//   t = r + step
//   r = t - (t >= B)*B
// This is VERY fast on ARM due to simple ALU ops.
// ============================================================================

__attribute__((noinline))
static uint64_t reist_mod_add(uint64_t B, uint64_t iters, uint64_t step)
{
    uint64_t r = 0;

    for (uint64_t i = 0; i < iters; i++) {
        uint64_t t  = r + step;
        uint64_t ge = (t >= B);    // branchless compare
        r = t - ge * B;            // 1 subtract, no division
    }
    return r;
}

// ============================================================================
// Adaptive timing: scales iteration count until >= 20 ms
// (ARM CPUs have lower clocks; 10 ms is too unstable)
// ============================================================================

template<typename F>
double adaptive_bench(F func, uint64_t& out_iters)
{
    const double TARGET = 0.020;      // 20 ms minimum runtime (ARM-friendly)
    volatile uint64_t sink = 0;

    uint64_t iters = 50000;

    auto run = [&](uint64_t reps) {
        auto t0 = Clock::now();
        sink ^= func(reps);
        auto t1 = Clock::now();
        return std::chrono::duration<double>(t1 - t0).count();
    };

    run(iters);

    double elapsed;
    while (true) {
        elapsed = run(iters);
        if (elapsed >= TARGET) break;
        iters *= 2;
        if (iters > (1ULL << 34)) break;  // safety
    }

    double best = elapsed;
    for (int i = 0; i < 2; i++) {
        double d = run(iters);
        if (d < best)
            best = d;
    }

    do_not_optimize_away(sink);
    out_iters = iters;
    return best;
}

// ============================================================================
// MAIN
// ============================================================================

int main()
{
    std::vector<uint64_t> moduli = {
        257,
        997,
        10007,
        1000003,
        10000019,
        1000000007
    };

    // ARM-friendly step: ensures wraparound happens often
    auto compute_step = [&](uint64_t B) {
        return (B / 2) + 17;
    };

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "=== REIST vs CLASSIC (ARM Benchmark) ===\n";
    std::cout << "Forced real division in classic path\n";
    std::cout << "Branchless ALU-only REIST fast path\n";
    std::cout << "Adaptive timing (>= 20 ms)\n\n";

    for (uint64_t B : moduli)
    {
        uint64_t step = compute_step(B);
        uint64_t it_classic = 0, it_reist = 0;

        double t_classic = adaptive_bench(
            [&](uint64_t reps){ return classic_mod_add(B, reps, step); },
            it_classic
        );

        double t_reist = adaptive_bench(
            [&](uint64_t reps){ return reist_mod_add(B, reps, step); },
            it_reist
        );

        std::cout << "B = " << B << " (step = " << step << ")\n";
        std::cout << "  classic_mod: " << t_classic
                  << " s  (" << it_classic << " iters)\n";
        std::cout << "  reist_mod  : " << t_reist
                  << " s  (" << it_reist   << " iters)\n";

        if (t_reist > 0.0)
            std::cout << "  SPEEDUP    : " << (t_classic / t_reist) << "x\n\n";
    }

    return 0;
}
