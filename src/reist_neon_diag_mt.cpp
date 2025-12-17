#include <iostream>
#include <chrono>
#include <cstdint>
#include <thread>
#include <vector>
#include <atomic>
#include <iomanip>

#if defined(__aarch64__) || defined(__arm__)
  #include <arm_neon.h>
  #define HAVE_NEON 1
#else
  #define HAVE_NEON 0
#endif

using Clock = std::chrono::high_resolution_clock;

// Global sink to prevent DCE across threads
static volatile uint64_t g_sink = 0;

struct Context {
    int32_t B, half;
    uint32_t invB;
};

// ============================================================
// Test 1: Pure computation without modulo
// ============================================================

// Scalar: no forced de-optimization; keep it realistic
static inline uint32_t test_scalar_add_kernel(int64_t N) {
    int32_t a = 1, b = 2;
    for (int64_t i = 0; i < N; i++) {
        a = a + b;
        b = a + 1;
    }
    return (uint32_t)(a ^ b);
}

static inline uint32_t test_neon_add_kernel(int64_t N) {
#if HAVE_NEON
    int32x4_t a = vdupq_n_s32(1);
    int32x4_t b = vdupq_n_s32(2);
    int32x4_t one = vdupq_n_s32(1);

    // N counts scalar iterations; NEON does 4 at a time
    int64_t it = N / 4;
    for (int64_t i = 0; i < it; i++) {
        a = vaddq_s32(a, b);
        b = vaddq_s32(a, one);
    }

    // fold lanes into scalar sink
    int32x2_t lo = vget_low_s32(a);
    int32x2_t hi = vget_high_s32(a);
    int32x2_t x = veor_s32(lo, hi);
    uint32_t r = (uint32_t)vget_lane_s32(x, 0) ^ (uint32_t)vget_lane_s32(x, 1);
    return r;
#else
    return test_scalar_add_kernel(N);
#endif
}

// ============================================================
// Test 2: Barrett approximation
// ============================================================

#if HAVE_NEON
static inline int32x4_t approx_q_neon(int32x4_t T, uint32_t invB) {
    int32x2_t T_lo = vget_low_s32(T);
    int32x2_t T_hi = vget_high_s32(T);
    int32x2_t inv = vdup_n_s32((int32_t)invB);

    int64x2_t prod_lo = vmull_s32(T_lo, inv);
    int64x2_t prod_hi = vmull_s32(T_hi, inv);

    int32x2_t q_lo = vshrn_n_s64(prod_lo, 32);
    int32x2_t q_hi = vshrn_n_s64(prod_hi, 32);

    return vcombine_s32(q_lo, q_hi);
}
#endif

static inline uint32_t test_scalar_barrett_kernel(int64_t N, const Context& ctx) {
    int32_t T = 12345;
    for (int64_t i = 0; i < N; i++) {
        int32_t q = (int32_t)((int64_t(T) * ctx.invB) >> 32);
        int32_t r = T - q * ctx.B;
        T = r + 1;
    }
    return (uint32_t)T;
}

static inline uint32_t test_neon_barrett_kernel(int64_t N, const Context& ctx) {
#if HAVE_NEON
    int32x4_t T = vdupq_n_s32(12345);
    int32x4_t Bv = vdupq_n_s32(ctx.B);
    int32x4_t one = vdupq_n_s32(1);

    int64_t it = N / 4;
    for (int64_t i = 0; i < it; i++) {
        int32x4_t q = approx_q_neon(T, ctx.invB);
        int32x4_t r = vsubq_s32(T, vmulq_s32(q, Bv));
        T = vaddq_s32(r, one);
    }

    int32x2_t lo = vget_low_s32(T);
    int32x2_t hi = vget_high_s32(T);
    int32x2_t x = vadd_s32(lo, hi);
    return (uint32_t)vget_lane_s32(x, 0) ^ (uint32_t)vget_lane_s32(x, 1);
#else
    return test_scalar_barrett_kernel(N, ctx);
#endif
}

// ============================================================
// Test 3: Full reduction with centering
// ============================================================

static inline uint32_t test_scalar_full_kernel(int64_t N, const Context& ctx) {
    int32_t T = 12345;
    for (int64_t i = 0; i < N; i++) {
        int32_t q = (int32_t)((int64_t(T) * ctx.invB) >> 32);
        int32_t r = T - q * ctx.B;

        // bounded correction (Tree-like), replace while-loops
        // two passes are enough for this synthetic range
        if (r > ctx.half) r -= ctx.B;
        if (r > ctx.half) r -= ctx.B;
        if (r <= -ctx.half) r += ctx.B;
        if (r <= -ctx.half) r += ctx.B;

        T = r + 100;
    }
    return (uint32_t)T;
}

static inline uint32_t test_neon_full_kernel(int64_t N, const Context& ctx) {
#if HAVE_NEON
    int32x4_t T = vdupq_n_s32(12345);
    int32x4_t Bv = vdupq_n_s32(ctx.B);
    int32x4_t half = vdupq_n_s32(ctx.half);
    int32x4_t neg_half = vnegq_s32(half);
    int32x4_t inc = vdupq_n_s32(100);

    int64_t it = N / 4;
    for (int64_t i = 0; i < it; i++) {
        int32x4_t q = approx_q_neon(T, ctx.invB);
        int32x4_t r = vsubq_s32(T, vmulq_s32(q, Bv));

        // Two correction passes, branchless
        for (int pass = 0; pass < 2; pass++) {
            uint32x4_t m_hi = vcgtq_s32(r, half);
            uint32x4_t gt_nh = vcgtq_s32(r, neg_half);
            uint32x4_t m_lo = vmvnq_u32(gt_nh);

            r = vsubq_s32(r, vandq_s32(vreinterpretq_s32_u32(m_hi), Bv));
            r = vaddq_s32(r, vandq_s32(vreinterpretq_s32_u32(m_lo), Bv));
        }

        T = vaddq_s32(r, inc);
    }

    int32x2_t lo = vget_low_s32(T);
    int32x2_t hi = vget_high_s32(T);
    int32x2_t x = veor_s32(lo, hi);
    return (uint32_t)vget_lane_s32(x, 0) ^ (uint32_t)vget_lane_s32(x, 1);
#else
    return test_scalar_full_kernel(N, ctx);
#endif
}

// ============================================================
// Test 4: Memory bandwidth test
// ============================================================

static inline uint32_t test_scalar_memory_kernel(int64_t N, int32_t* data) {
    for (int64_t i = 0; i < N; i++) {
        int idx = (int)((i * 8) & 1023);
        data[idx] = data[idx] + 1;
    }
    return (uint32_t)data[0] ^ (uint32_t)data[777];
}

static inline uint32_t test_neon_memory_kernel(int64_t N, int32_t* data) {
#if HAVE_NEON
    for (int64_t i = 0; i < N / 4; i++) {
        int idx = (int)((i * 4) & 255); // 256*4 ints = 1024
        int32x4_t vec = vld1q_s32(data + idx * 4);
        vec = vaddq_s32(vec, vdupq_n_s32(1));
        vst1q_s32(data + idx * 4, vec);
    }
    return (uint32_t)data[0] ^ (uint32_t)data[777];
#else
    return test_scalar_memory_kernel(N, data);
#endif
}

// ============================================================
// Parallel runner
// ============================================================

template<typename Kernel>
double bench_mt(const char* label, Kernel&& kernel, int threads, int64_t N_total) {
    // split work evenly
    int64_t per = N_total / threads;
    int64_t rem = N_total % threads;

    std::vector<std::thread> ts;
    ts.reserve((size_t)threads);

    std::vector<uint32_t> sinks((size_t)threads, 0);

    auto t0 = Clock::now();

    for (int t = 0; t < threads; ++t) {
        int64_t n = per + (t < rem ? 1 : 0);
        ts.emplace_back([&, t, n]() {
            sinks[(size_t)t] = kernel(n, t);
        });
    }
    for (auto& th : ts) th.join();

    auto t1 = Clock::now();
    double sec = std::chrono::duration<double>(t1 - t0).count();

    uint32_t fold = 0;
    for (auto v : sinks) fold ^= v;
    g_sink ^= fold;

    std::cout << label << ": " << (sec * 1000.0) << " ms\n";
    return sec;
}

int main(int argc, char** argv) {
    std::cout << "REIST/REIST-Tree Performance Diagnosis (M2 Pro utilization)\n";
    std::cout << "=========================================================\n\n";

    int threads = (int)std::thread::hardware_concurrency();
    if (threads <= 0) threads = 8;

    // prefer performance cores count if you want fixed value:
    // M2 Pro Mac mini typically 10 cores total; perf cores are 6 or 8 depending config.
    // You can override via argv[1].
    if (argc > 1) threads = std::atoi(argv[1]);

    const int64_t N = 100'000'000; // total iterations across all threads

    Context ctx13{13, 6, 0};
    ctx13.invB = (uint32_t)((1.0 / 13.0) * (1ULL << 32));

    // Per-thread memory buffers (avoid sharing)
    std::vector<std::vector<int32_t>> mem((size_t)threads);
    for (int t = 0; t < threads; ++t) {
        mem[(size_t)t].resize(1024);
        for (int i = 0; i < 1024; ++i) mem[(size_t)t][(size_t)i] = i + t;
    }

    std::cout << std::fixed << std::setprecision(3);
    std::cout << "Threads: " << threads << "\n";
    std::cout << "Total iterations (all threads): " << N << "\n\n";

    // Test 1
    std::cout << "Test 1: Pure Addition\n";
    std::cout << "----------------------------------------------\n";
    double t_add_scalar = bench_mt("Scalar", [&](int64_t n, int){ return test_scalar_add_kernel(n); }, threads, N);
    double t_add_neon   = bench_mt("NEON  ", [&](int64_t n, int){ return test_neon_add_kernel(n);   }, threads, N);
    std::cout << "Speedup (NEON vs Scalar): " << (t_add_scalar / t_add_neon) << "x\n\n";

    // Test 2
    std::cout << "Test 2: Barrett Approximation (B=13)\n";
    std::cout << "----------------------------------------------\n";
    double t_bar_scalar = bench_mt("Scalar", [&](int64_t n, int){ return test_scalar_barrett_kernel(n, ctx13); }, threads, N);
    double t_bar_neon   = bench_mt("NEON  ", [&](int64_t n, int){ return test_neon_barrett_kernel(n, ctx13);   }, threads, N);
    std::cout << "Speedup (NEON vs Scalar): " << (t_bar_scalar / t_bar_neon) << "x\n\n";

    // Test 3
    std::cout << "Test 3: Full Reduction + Centering (Tree-style, bounded)\n";
    std::cout << "----------------------------------------------\n";
    double t_full_scalar = bench_mt("Scalar", [&](int64_t n, int){ return test_scalar_full_kernel(n, ctx13); }, threads, N);
    double t_full_neon   = bench_mt("NEON  ", [&](int64_t n, int){ return test_neon_full_kernel(n, ctx13);   }, threads, N);
    std::cout << "Speedup (NEON vs Scalar): " << (t_full_scalar / t_full_neon) << "x\n\n";

    // Test 4
    std::cout << "Test 4: Memory Bandwidth\n";
    std::cout << "----------------------------------------------\n";
    double t_mem_scalar = bench_mt("Scalar", [&](int64_t n, int tid){ return test_scalar_memory_kernel(n, mem[(size_t)tid].data()); }, threads, N);
    double t_mem_neon   = bench_mt("NEON  ", [&](int64_t n, int tid){ return test_neon_memory_kernel(n, mem[(size_t)tid].data());   }, threads, N);
    std::cout << "Speedup (NEON vs Scalar): " << (t_mem_scalar / t_mem_neon) << "x\n\n";

    std::cout << "Sink: " << (uint64_t)g_sink << "\n";
    return 0;
}
