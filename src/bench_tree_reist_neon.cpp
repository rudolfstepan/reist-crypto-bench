#include <iostream>
#include <chrono>
#include <cstdint>
#if defined(__aarch64__) || defined(__arm__)
  #include <arm_neon.h>
#endif

using Clock = std::chrono::high_resolution_clock;

// Disable auto-vectorization for scalar code
#ifdef __GNUC__
#define NO_VECTORIZE __attribute__((optimize("no-tree-vectorize")))
#else
#define NO_VECTORIZE
#endif

struct Context {
    int32_t B, half;
    uint32_t invB;
};

// ============================================================
// Test 1: Pure computation without modulo
// ============================================================

NO_VECTORIZE
void test_scalar_add(int64_t N) {
    volatile int32_t a = 1, b = 2;
    for (int64_t i = 0; i < N; i++) {
        a = a + b;
        b = a + 1;
    }
}

void test_neon_add(int64_t N) {
#if defined(__aarch64__) || defined(__arm__)
    int32x4_t a = vdupq_n_s32(1);
    int32x4_t b = vdupq_n_s32(2);
    int32x4_t one = vdupq_n_s32(1);
    
    for (int64_t i = 0; i < N/4; i++) {
        a = vaddq_s32(a, b);
        b = vaddq_s32(a, one);
    }
    
    volatile int32_t sink = vgetq_lane_s32(a, 0);
#else
    test_scalar_add(N);
#endif
}

// ============================================================
// Test 2: Barrett approximation
// ============================================================

#if defined(__aarch64__) || defined(__arm__)
inline int32x4_t approx_q_neon(int32x4_t T, uint32_t invB) {
    // NEON doesn't have direct 32x32->64 multiply like AVX2's mul_epi32
    // We need to manually handle the high 32 bits of the 64-bit product
    // Strategy: use vmull_s32 on lower/upper halves then extract high parts
    
    int32x2_t T_lo = vget_low_s32(T);
    int32x2_t T_hi = vget_high_s32(T);
    int32x2_t inv = vdup_n_s32((int32_t)invB);
    
    // 32x32 -> 64 bit multiply
    int64x2_t prod_lo = vmull_s32(T_lo, inv);
    int64x2_t prod_hi = vmull_s32(T_hi, inv);
    
    // Extract high 32 bits (q = product >> 32)
    int32x2_t q_lo = vshrn_n_s64(prod_lo, 32);
    int32x2_t q_hi = vshrn_n_s64(prod_hi, 32);
    
    return vcombine_s32(q_lo, q_hi);
}
#endif

NO_VECTORIZE
void test_scalar_barrett(int64_t N, const Context& ctx) {
    volatile int32_t T = 12345;
    for (int64_t i = 0; i < N; i++) {
        int32_t q = (int32_t)((int64_t(T) * ctx.invB) >> 32);
        int32_t r = T - q * ctx.B;
        T = r + 1;
    }
}

void test_neon_barrett(int64_t N, const Context& ctx) {
#if defined(__aarch64__) || defined(__arm__)
    int32x4_t T = vdupq_n_s32(12345);
    int32x4_t Bv = vdupq_n_s32(ctx.B);
    int32x4_t one = vdupq_n_s32(1);
    
    for (int64_t i = 0; i < N/4; i++) {
        int32x4_t q = approx_q_neon(T, ctx.invB);
        int32x4_t r = vsubq_s32(T, vmulq_s32(q, Bv));
        T = vaddq_s32(r, one);
    }
    
    volatile int32_t sink = vgetq_lane_s32(T, 0);
#else
    test_scalar_barrett(N, ctx);
#endif
}

// ============================================================
// Test 3: Full reduction with centering
// ============================================================

NO_VECTORIZE
void test_scalar_full(int64_t N, const Context& ctx) {
    volatile int32_t T = 12345;
    for (int64_t i = 0; i < N; i++) {
        int32_t q = (int32_t)((int64_t(T) * ctx.invB) >> 32);
        int32_t r = T - q * ctx.B;
        while (r > ctx.half) r -= ctx.B;
        while (r <= -ctx.half) r += ctx.B;
        T = r + 100;
    }
}

void test_neon_full(int64_t N, const Context& ctx) {
#if defined(__aarch64__) || defined(__arm__)
    int32x4_t T = vdupq_n_s32(12345);
    int32x4_t Bv = vdupq_n_s32(ctx.B);
    int32x4_t half = vdupq_n_s32(ctx.half);
    int32x4_t neg_half = vnegq_s32(half);
    int32x4_t inc = vdupq_n_s32(100);
    
    for (int64_t i = 0; i < N/4; i++) {
        int32x4_t q = approx_q_neon(T, ctx.invB);
        int32x4_t r = vsubq_s32(T, vmulq_s32(q, Bv));
        
        // Two correction passes
        for (int pass = 0; pass < 2; pass++) {
            uint32x4_t m_hi = vcgtq_s32(r, half);
            uint32x4_t gt_nh = vcgtq_s32(r, neg_half);
            uint32x4_t m_lo = vmvnq_u32(gt_nh);
            r = vsubq_s32(r, vandq_s32(vreinterpretq_s32_u32(m_hi), Bv));
            r = vaddq_s32(r, vandq_s32(vreinterpretq_s32_u32(m_lo), Bv));
        }
        
        T = vaddq_s32(r, inc);
    }
    
    volatile int32_t sink = vgetq_lane_s32(T, 0);
#else
    test_scalar_full(N, ctx);
#endif
}

// ============================================================
// Test 4: Memory bandwidth test
// ============================================================

NO_VECTORIZE
void test_scalar_memory(int64_t N, int32_t* data) {
    for (int64_t i = 0; i < N; i++) {
        int idx = (i * 8) % 1024;
        data[idx] = data[idx] + 1;
    }
}

void test_neon_memory(int64_t N, int32_t* data) {
#if defined(__aarch64__) || defined(__arm__)
    for (int64_t i = 0; i < N/4; i++) {
        int idx = (i * 4) % 256; // 256 * 4 ints = 1024 ints
        int32x4_t vec = vld1q_s32(data + idx * 4);
        vec = vaddq_s32(vec, vdupq_n_s32(1));
        vst1q_s32(data + idx * 4, vec);
    }
#else
    test_scalar_memory(N, data);
#endif
}

// ============================================================
// Runner
// ============================================================

template<typename F>
double bench(F&& f, const char* name) {
    auto t0 = Clock::now();
    f();
    auto t1 = Clock::now();
    double time = std::chrono::duration<double>(t1 - t0).count();
    std::cout << name << ": " << (time * 1000.0) << " ms\n";
    return time;
}

int main() {
    std::cout << "REIST Performance Diagnosis (NEON)\n";
    std::cout << "============================\n\n";
    
    const int64_t N = 100'000'000;
    
    Context ctx13 = {13, 6, 0};
    ctx13.invB = (uint32_t)((1.0 / 13.0) * (1ULL << 32));
    
    Context ctx257 = {257, 128, 0};
    ctx257.invB = (uint32_t)((1.0 / 257.0) * (1ULL << 32));
    
    // Test 1: Pure addition
    std::cout << "Test 1: Pure Addition (" << N << " iterations)\n";
    std::cout << "----------------------------------------------\n";
    double t_add_scalar = bench([&](){ test_scalar_add(N); }, "Scalar");
    double t_add_neon = bench([&](){ test_neon_add(N); }, "NEON  ");
    std::cout << "Expected speedup: ~4x (4 values in parallel)\n";
    std::cout << "Actual speedup: " << (t_add_scalar / t_add_neon) << "x\n\n";
    
    // Test 2: Barrett (B=13)
    std::cout << "Test 2: Barrett Approximation, B=13 (" << N << " iterations)\n";
    std::cout << "----------------------------------------------\n";
    double t_barrett_scalar = bench([&](){ test_scalar_barrett(N, ctx13); }, "Scalar");
    double t_barrett_neon = bench([&](){ test_neon_barrett(N, ctx13); }, "NEON  ");
    std::cout << "Expected speedup: ~2-4x\n";
    std::cout << "Actual speedup: " << (t_barrett_scalar / t_barrett_neon) << "x\n\n";
    
    // Test 3: Full reduction (B=13)
    std::cout << "Test 3: Full Reduction with Centering, B=13 (" << N << " iterations)\n";
    std::cout << "----------------------------------------------\n";
    double t_full_scalar = bench([&](){ test_scalar_full(N, ctx13); }, "Scalar");
    double t_full_neon = bench([&](){ test_neon_full(N, ctx13); }, "NEON  ");
    std::cout << "Expected speedup: ~2-4x\n";
    std::cout << "Actual speedup: " << (t_full_scalar / t_full_neon) << "x\n\n";
    
    // Test 4: Memory bandwidth
    alignas(16) int32_t* data = new int32_t[1024];
    for (int i = 0; i < 1024; i++) data[i] = i;
    
    std::cout << "Test 4: Memory Bandwidth (" << N << " iterations)\n";
    std::cout << "----------------------------------------------\n";
    double t_mem_scalar = bench([&](){ test_scalar_memory(N, data); }, "Scalar");
    double t_mem_neon = bench([&](){ test_neon_memory(N, data); }, "NEON  ");
    std::cout << "Expected speedup: ~2-3x (memory bound)\n";
    std::cout << "Actual speedup: " << (t_mem_scalar / t_mem_neon) << "x\n\n";
    
    delete[] data;
    
    // Analysis
    std::cout << "============================\n";
    std::cout << "Analysis\n";
    std::cout << "============================\n\n";
    
    if (t_add_scalar / t_add_neon < 1.5) {
        std::cout << "⚠ WARNING: Pure addition speedup < 1.5x\n";
        std::cout << "   Possible causes:\n";
        std::cout << "   - Compiler is auto-vectorizing scalar code\n";
        std::cout << "   - CPU throttling NEON (thermal/power limits)\n";
        std::cout << "   - Measurement error\n\n";
        std::cout << "   Try: Compile with -fno-tree-vectorize\n\n";
    } else if (t_add_scalar / t_add_neon > 3.0) {
        std::cout << "✓ Good: NEON providing expected speedup on pure compute\n\n";
    }
    
    if (t_barrett_scalar / t_barrett_neon < 1.5) {
        std::cout << "⚠ WARNING: Barrett speedup < 1.5x\n";
        std::cout << "   Possible causes:\n";
        std::cout << "   - 64-bit multiply overhead\n";
        std::cout << "   - Shuffle/extract overhead dominates\n";
        std::cout << "   - Memory pressure from wider registers\n\n";
    } else {
        std::cout << "✓ Good: Barrett benefits from NEON\n\n";
    }
    
    if (t_full_scalar / t_full_neon < 1.2) {
        std::cout << "⚠ WARNING: Full reduction speedup < 1.2x\n";
        std::cout << "   Likely causes:\n";
        std::cout << "   - Branch misprediction costs dominate\n";
        std::cout << "   - Correction loops have unpredictable iterations\n";
        std::cout << "   - SIMD overhead outweighs parallel benefit\n\n";
        std::cout << "   Recommendation: REIST-Linear may not benefit from NEON\n";
        std::cout << "   for this workload. Consider alternative approaches.\n\n";
    }
    
    std::cout << "CPU Info Check:\n";
    std::cout << "Run: sysctl -a | grep -E 'machdep.cpu|hw.optional'\n";
    std::cout << "Look for NEON/ASIMD support and check CPU frequency\n\n";
    
    return 0;
}
