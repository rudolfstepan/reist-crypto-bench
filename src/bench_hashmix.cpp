#include <iostream>
#include <chrono>
#include <cstdint>
#include <iomanip>
#include <vector>

using Clock = std::chrono::high_resolution_clock;

// Classic hash-mix style step: x = (x * A + B) % M
static std::uint64_t hashmix_classic(std::uint64_t x, std::uint64_t A, std::uint64_t B, std::uint64_t M) {
    return (x * A + B) % M;
}

// REIST-style: symmetrische Reduktion ohne Division
static std::int64_t hashmix_reist(std::int64_t x, std::int64_t A, std::int64_t B, std::int64_t M) {
    std::int64_t q = M;
    std::int64_t half = q / 2;
    std::int64_t neg_half = -half;

    std::int64_t r = x * A + B;
    r %= q; // optional: falls man overflow-einschränkung will; ansonsten kann man hier
            // auch mit 128-Bit rechnen, je nach Plattform. Für dieses Benchmark
            // bleibt der Fokus aber auf der Reduktion.

    // REIST-Korrektur (branchless)
    std::int64_t gt  = (r >  half);
    std::int64_t leq = (r <= neg_half);
    r -= gt  * q;
    r += leq * q;
    return r;
}

template<typename F>
double time_loop(F&& f, std::uint64_t iters) {
    auto t0 = Clock::now();
    f(iters);
    auto t1 = Clock::now();
    std::chrono::duration<double> dt = t1 - t0;
    return dt.count();
}

int main(int argc, char** argv) {
    std::uint64_t N = 100'000'000;
    std::vector<std::uint64_t> moduli;
    std::uint64_t A = 6364136223846793005ULL;
    std::uint64_t B = 1442695040888963407ULL;

    // Usage: bench_hashmix [N] [B]
    if (argc >= 2) N = std::stoull(argv[1]);
    if (argc >= 3) B = std::stoull(argv[2]);

    if (argc >= 4) {
        // Runtime parameter scenario for modulus
        moduli.push_back(std::stoull(argv[3]));
    } else {
        // Constant scenario (default moduli)
        moduli = {
            1'000'003ULL,
            10'000'019ULL,
            100'000'007ULL,
            1'000'000'007ULL
        };
    }

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "Hashmix benchmark (classic % vs REIST reduction)";
    std::cout << "Iterations N = " << N << "";

    for (auto M : moduli) {
        std::uint64_t x1 = 0x1234567890abcdefULL;
        std::int64_t  x2 = static_cast<std::int64_t>(0x1234567890abcdefULL);

        double t_classic = time_loop([&](std::uint64_t n){
            for (std::uint64_t i = 0; i < n; ++i) {
                x1 = hashmix_classic(x1, A, B, M);
            }
        }, N);

        double t_reist = time_loop([&](std::uint64_t n){
            for (std::uint64_t i = 0; i < n; ++i) {
                x2 = hashmix_reist(x2, static_cast<std::int64_t>(A),
                                   static_cast<std::int64_t>(B),
                                   static_cast<std::int64_t>(M));
            }
        }, N);

        std::cout << "M = " << M << "";
        std::cout << "  classic : " << t_classic << "";
        std::cout << "  REIST   : " << t_reist   << "";
        if (t_reist > 0.0) {
            std::cout << "  speedup : " << (t_classic / t_reist) << "x (classic / REIST)";
        }
        std::cout << "  sink values: " << std::hex << x1 << " / " << x2 << std::dec << "";
    }

    return 0;
}
