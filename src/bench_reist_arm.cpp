#include <iostream>
#include <chrono>
#include <vector>
#include <random>
#include <cstdint>
#include <iomanip>
#include <fstream>
#include <unistd.h>
#include <cstdio>
#include <string>
#include <cctype>

#if defined(__aarch64__) || defined(__ARM_NEON) || defined(__ARM_NEON__)
    #include <arm_neon.h>
    #define REIST_HAS_NEON 1
#else
    #define REIST_HAS_NEON 0
#endif


using Clock = std::chrono::steady_clock;

static inline void do_not_optimize_away(uint32_t v) {
    asm volatile("" :: "r"(v) : "memory");
}

// ============================================================================
// Classic polynomial modular add (scalar, forced division)
// out[i] = (a[i] + b[i]) % q
// ============================================================================
__attribute__((noinline))
static uint32_t classic_poly_scalar(
    const std::vector<uint32_t>& a,
    const std::vector<uint32_t>& b,
    std::vector<uint32_t>& out,
    uint32_t q,
    uint64_t reps)
{
    const size_t N = a.size();
    volatile uint64_t qv = q;  // verhindert zu aggressive Optimierung
    uint32_t acc = 0;

    for (uint64_t r = 0; r < reps; ++r) {
        for (size_t i = 0; i < N; ++i) {
            uint64_t t = (uint64_t)a[i] + (uint64_t)b[i];
            __uint128_t T = ( __uint128_t ) t;
            uint32_t res = (uint32_t)( T % qv );  // echte Division
            out[i] = res;
            acc ^= res;
        }
    }
    return acc;
}

// ============================================================================
// REIST polynomial add (scalar, no division)
// out[i] = (a[i] + b[i]) mod q via compare/subtract
// Voraussetzung: a[i], b[i] < q, q <= 2^31, damit sum < 2q < 2^32
// ============================================================================
__attribute__((noinline))
static uint32_t reist_poly_scalar(
    const std::vector<uint32_t>& a,
    const std::vector<uint32_t>& b,
    std::vector<uint32_t>& out,
    uint32_t q,
    uint64_t reps)
{
    const size_t N = a.size();
    uint32_t acc = 0;

    for (uint64_t r = 0; r < reps; ++r) {
        for (size_t i = 0; i < N; ++i) {
            uint32_t t  = a[i] + b[i];
            uint32_t ge = (t >= q);   // 0 oder 1
            uint32_t res = t - ge * q;
            out[i] = res;
            acc ^= res;
        }
    }
    return acc;
}

// ============================================================================
// REIST polynomial add (NEON, 4-lane vektorisiert)
// out[i..i+3] = (a[i..i+3] + b[i..i+3]) mod q
// ============================================================================
__attribute__((noinline))
static uint32_t reist_poly_neon(
    const std::vector<uint32_t>& a,
    const std::vector<uint32_t>& b,
    std::vector<uint32_t>& out,
    uint32_t q,
    uint64_t reps)
{
    const size_t N = a.size();
    const size_t V = N & ~size_t(3);  // größtes Vielfaches von 4
    uint32_t acc = 0;

    uint32x4_t vq = vdupq_n_u32(q);

    for (uint64_t r = 0; r < reps; ++r) {
        size_t i = 0;
        for (; i < V; i += 4) {
            uint32x4_t va = vld1q_u32(&a[i]);
            uint32x4_t vb = vld1q_u32(&b[i]);
            uint32x4_t vsum = vaddq_u32(va, vb);

            // ge = (vsum >= q) -> Maske mit 0xFFFF.. oder 0
            uint32x4_t ge = vcgeq_u32(vsum, vq);
            // ge_mask = ge & q
            uint32x4_t ge_mask = vandq_u32(ge, vq);
            // vsum - (ge * q)
            vsum = vsubq_u32(vsum, ge_mask);

            vst1q_u32(&out[i], vsum);

            // simple accumulation auf Lane 0 zur Verhinderung von DCE
            acc ^= vgetq_lane_u32(vsum, 0);
        }

        // Tail (falls N nicht durch 4 teilbar)
        for (; i < N; ++i) {
            uint32_t t  = a[i] + b[i];
            uint32_t ge = (t >= q);
            uint32_t res = t - ge * q;
            out[i] = res;
            acc ^= res;
        }
    }

    return acc;
}


// ============================================================================
// Adaptive Benchmark: skaliert reps bis mind. target Sekunden erreicht sind
// ============================================================================
template<typename F>
double adaptive_bench(F func, uint64_t& out_reps, double target_seconds)
{
    volatile uint32_t sink = 0;
    uint64_t reps = 10;  // Startwert

    auto run = [&](uint64_t r) {
        auto t0 = Clock::now();
        sink ^= func(r);
        auto t1 = Clock::now();
        return std::chrono::duration<double>(t1 - t0).count();
    };

    // Warmup
    run(reps);

    double elapsed;
    while (true) {
        elapsed = run(reps);
        if (elapsed >= target_seconds) break;
        reps *= 2;
        if (reps > (1ULL << 32)) break;
    }

    double best = elapsed;
    for (int i = 0; i < 2; ++i) {
        double d = run(reps);
        if (d < best) best = d;
    }

    do_not_optimize_away(sink);
    out_reps = reps;
    return best;
}

int main(int argc, char** argv)
{
    int N = 1024;             // Polynom-Länge
    if (argc >= 2) {
        N = std::stoi(argv[1]);
    }

    // typische NTRU-/Lattice-Moduli
    std::vector<uint32_t> moduli = {
        1000003u,
        10000019u,
        100000007u,
        1000000007u
    };

    std::mt19937 rng(12345);

    // Collect system info
    std::string cpu_model, cpu_mhz, mem_total, hostname, os_name;
    {
        std::ifstream cpuinfo("/proc/cpuinfo");
        std::string line;
        while (std::getline(cpuinfo, line)) {
            if (line.find("model name") != std::string::npos) {
                cpu_model = line.substr(line.find(":") + 2);
            }
            if (line.find("cpu MHz") != std::string::npos) {
                cpu_mhz = line.substr(line.find(":") + 2);
            }
        }
    }
    {
        std::ifstream meminfo("/proc/meminfo");
        std::string line;
        if (std::getline(meminfo, line)) {
            if (line.find("MemTotal") != std::string::npos) {
                mem_total = line.substr(line.find(":") + 2);
            }
        }
    }
    char hn[256];
    if (gethostname(hn, sizeof(hn)) == 0) hostname = hn;
    {
        FILE* fp = popen("uname -o", "r");
        if (fp) {
            char buf[128];
            if (fgets(buf, sizeof(buf), fp)) {
                os_name = std::string(buf);
                if (!os_name.empty() && os_name.back() == '\n') {
                    os_name.pop_back();
                }
            }
            pclose(fp);
        }
    }

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "========================================\n";
    std::cout << "ARM REIST Benchmark: scalar vs NEON\n";
    std::cout << "========================================\n";
    std::cout << "System Information:\n";
    std::cout << "  Hostname: " << hostname << "\n";
    std::cout << "  OS: " << os_name << "\n";
    std::cout << "  CPU Model: " << cpu_model << "\n";
    std::cout << "  CPU MHz: " << cpu_mhz << "\n";
    std::cout << "  Memory: " << mem_total << "\n";
    std::cout << "========================================\n\n";
    std::cout << "N = " << N << " coefficients\n\n";

    std::vector<uint32_t> a(N), b(N), out(N);

    for (uint32_t q : moduli) {

        // Zufallskoeffizienten in [0, q)
        for (int i = 0; i < N; ++i) {
            uint32_t r1 = rng();
            uint32_t r2 = rng();
            a[i] = r1 % q;
            b[i] = r2 % q;
        }

        uint64_t reps_classic = 0;
        uint64_t reps_reist_scalar = 0;
        uint64_t reps_reist_neon = 0;

        double t_classic = adaptive_bench(
            [&](uint64_t reps){
                return classic_poly_scalar(a, b, out, q, reps);
            },
            reps_classic,
            0.02   // 20 ms pro Messung
        );

        double t_reist_scalar = adaptive_bench(
            [&](uint64_t reps){
                return reist_poly_scalar(a, b, out, q, reps);
            },
            reps_reist_scalar,
            0.02
        );

        double t_reist_neon = adaptive_bench(
            [&](uint64_t reps){
                return reist_poly_neon(a, b, out, q, reps);
            },
            reps_reist_neon,
            0.02
        );

        double speed_scalar = t_classic / t_reist_scalar;
        double speed_neon   = t_classic / t_reist_neon;
        double speed_neon_vs_scalar = t_reist_scalar / t_reist_neon;

        std::cout << "q = " << q << "\n";
        std::cout << "  classic scalar : " << t_classic
                  << " s  (reps=" << reps_classic << ")\n";
        std::cout << "  REIST  scalar  : " << t_reist_scalar
                  << " s  (reps=" << reps_reist_scalar << ")\n";
        std::cout << "  REIST  NEON    : " << t_reist_neon
                  << " s  (reps=" << reps_reist_neon << ")\n";

        std::cout << "  speedup REIST scalar vs classic : "
                  << speed_scalar << "x\n";
        std::cout << "  speedup REIST NEON   vs classic : "
                  << speed_neon << "x\n";
        std::cout << "  speedup NEON vs REIST scalar    : "
                  << speed_neon_vs_scalar << "x\n\n";
    }

    return 0;
}
