#include <iostream>
#include <chrono>
#include <cstdint>
#if defined(__x86_64__) || defined(_M_X64)
  #include <immintrin.h>
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

// NO_VECTORIZE
void test_scalar_add(int64_t N) {
    volatile int32_t a = 1, b = 2;
    for (int64_t i = 0; i < N; i++) {
        a = a + b;
        b = a + 1;
    }
}

void test_avx2_add(int64_t N) {
    __m256i a = _mm256_set1_epi32(1);
    __m256i b = _mm256_set1_epi32(2);
    __m256i one = _mm256_set1_epi32(1);
    
    for (int64_t i = 0; i < N/8; i++) {
        a = _mm256_add_epi32(a, b);
        b = _mm256_add_epi32(a, one);
    }
    
    volatile int32_t sink = _mm256_extract_epi32(a, 0);
}

// ============================================================
// Test 2: Barrett approximation
// ============================================================

inline __m256i approx_q_avx2(__m256i T, uint32_t invB) {
    __m256i inv = _mm256_set1_epi32((int32_t)invB);
    __m256i prod_even = _mm256_mul_epi32(T, inv);
    __m256i T_odd = _mm256_srli_epi64(T, 32);
    __m256i prod_odd = _mm256_mul_epi32(T_odd, inv);
    __m256i q_even = _mm256_srli_epi64(prod_even, 32);
    __m256i q_odd = _mm256_srli_epi64(prod_odd, 32);
    __m256i q_even_32 = _mm256_shuffle_epi32(q_even, _MM_SHUFFLE(2,0,2,0));
    __m256i q_odd_32 = _mm256_shuffle_epi32(q_odd, _MM_SHUFFLE(2,0,2,0));
    return _mm256_unpacklo_epi32(q_even_32, q_odd_32);
}

// NO_VECTORIZE
void test_scalar_barrett(int64_t N, const Context& ctx) {
    volatile int32_t T = 12345;
    for (int64_t i = 0; i < N; i++) {
        int32_t q = (int32_t)((int64_t(T) * ctx.invB) >> 32);
        int32_t r = T - q * ctx.B;
        T = r + 1;
    }
}

void test_avx2_barrett(int64_t N, const Context& ctx) {
    __m256i T = _mm256_set1_epi32(12345);
    __m256i Bv = _mm256_set1_epi32(ctx.B);
    __m256i one = _mm256_set1_epi32(1);
    
    for (int64_t i = 0; i < N/8; i++) {
        __m256i q = approx_q_avx2(T, ctx.invB);
        __m256i r = _mm256_sub_epi32(T, _mm256_mullo_epi32(q, Bv));
        T = _mm256_add_epi32(r, one);
    }
    
    volatile int32_t sink = _mm256_extract_epi32(T, 0);
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

void test_avx2_full(int64_t N, const Context& ctx) {
    __m256i T = _mm256_set1_epi32(12345);
    __m256i Bv = _mm256_set1_epi32(ctx.B);
    __m256i half = _mm256_set1_epi32(ctx.half);
    __m256i neg_half = _mm256_sub_epi32(_mm256_setzero_si256(), half);
    __m256i inc = _mm256_set1_epi32(100);
    
    for (int64_t i = 0; i < N/8; i++) {
        __m256i q = approx_q_avx2(T, ctx.invB);
        __m256i r = _mm256_sub_epi32(T, _mm256_mullo_epi32(q, Bv));
        
        // Two correction passes
        for (int pass = 0; pass < 2; pass++) {
            __m256i m_hi = _mm256_cmpgt_epi32(r, half);
            __m256i gt_nh = _mm256_cmpgt_epi32(r, neg_half);
            __m256i m_lo = _mm256_xor_si256(gt_nh, _mm256_set1_epi32(-1));
            r = _mm256_sub_epi32(r, _mm256_and_si256(Bv, m_hi));
            r = _mm256_add_epi32(r, _mm256_and_si256(Bv, m_lo));
        }
        
        T = _mm256_add_epi32(r, inc);
    }
    
    volatile int32_t sink = _mm256_extract_epi32(T, 0);
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

void test_avx2_memory(int64_t N, int32_t* data) {
    for (int64_t i = 0; i < N/8; i++) {
        int idx = (i * 8) % 128; // 128 * 8 ints = 1024 ints
        __m256i vec = _mm256_load_si256((__m256i*)(data + idx * 8));
        vec = _mm256_add_epi32(vec, _mm256_set1_epi32(1));
        _mm256_store_si256((__m256i*)(data + idx * 8), vec);
    }
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
    std::cout << "REIST Performance Diagnosis\n";
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
    double t_add_avx2 = bench([&](){ test_avx2_add(N); }, "AVX2  ");
    std::cout << "Expected speedup: ~8x (8 values in parallel)\n";
    std::cout << "Actual speedup: " << (t_add_scalar / t_add_avx2) << "x\n\n";
    
    // Test 2: Barrett (B=13)
    std::cout << "Test 2: Barrett Approximation, B=13 (" << N << " iterations)\n";
    std::cout << "----------------------------------------------\n";
    double t_barrett_scalar = bench([&](){ test_scalar_barrett(N, ctx13); }, "Scalar");
    double t_barrett_avx2 = bench([&](){ test_avx2_barrett(N, ctx13); }, "AVX2  ");
    std::cout << "Expected speedup: ~4-6x\n";
    std::cout << "Actual speedup: " << (t_barrett_scalar / t_barrett_avx2) << "x\n\n";
    
    // Test 3: Full reduction (B=13)
    std::cout << "Test 3: Full Reduction with Centering, B=13 (" << N << " iterations)\n";
    std::cout << "----------------------------------------------\n";
    double t_full_scalar = bench([&](){ test_scalar_full(N, ctx13); }, "Scalar");
    double t_full_avx2 = bench([&](){ test_avx2_full(N, ctx13); }, "AVX2  ");
    std::cout << "Expected speedup: ~3-5x\n";
    std::cout << "Actual speedup: " << (t_full_scalar / t_full_avx2) << "x\n\n";
    
    // Test 4: Memory bandwidth
    alignas(32) int32_t* data = new int32_t[1024];
    for (int i = 0; i < 1024; i++) data[i] = i;
    
    std::cout << "Test 4: Memory Bandwidth (" << N << " iterations)\n";
    std::cout << "----------------------------------------------\n";
    double t_mem_scalar = bench([&](){ test_scalar_memory(N, data); }, "Scalar");
    double t_mem_avx2 = bench([&](){ test_avx2_memory(N, data); }, "AVX2  ");
    std::cout << "Expected speedup: ~2-4x (memory bound)\n";
    std::cout << "Actual speedup: " << (t_mem_scalar / t_mem_avx2) << "x\n\n";
    
    delete[] data;
    
    // Analysis
    std::cout << "============================\n";
    std::cout << "Analysis\n";
    std::cout << "============================\n\n";
    
    if (t_add_scalar / t_add_avx2 < 2.0) {
        std::cout << "⚠ WARNING: Pure addition speedup < 2x\n";
        std::cout << "   Possible causes:\n";
        std::cout << "   - Compiler is auto-vectorizing scalar code\n";
        std::cout << "   - CPU throttling AVX2 (thermal/power limits)\n";
        std::cout << "   - Measurement error\n\n";
        std::cout << "   Try: Compile with -fno-tree-vectorize\n";
        std::cout << "   Try: Check CPU frequency: cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq\n\n";
    } else if (t_add_scalar / t_add_avx2 > 6.0) {
        std::cout << "✓ Good: AVX2 providing expected speedup on pure compute\n\n";
    }
    
    if (t_barrett_scalar / t_barrett_avx2 < 2.0) {
        std::cout << "⚠ WARNING: Barrett speedup < 2x\n";
        std::cout << "   Possible causes:\n";
        std::cout << "   - 64-bit multiply (mul_epi32) is expensive\n";
        std::cout << "   - Shuffle overhead dominates\n";
        std::cout << "   - Memory pressure from wider registers\n\n";
    } else {
        std::cout << "✓ Good: Barrett benefits from AVX2\n\n";
    }
    
    if (t_full_scalar / t_full_avx2 < 1.5) {
        std::cout << "⚠ WARNING: Full reduction speedup < 1.5x\n";
        std::cout << "   Likely causes:\n";
        std::cout << "   - Branch misprediction costs dominate\n";
        std::cout << "   - Correction loops have unpredictable iterations\n";
        std::cout << "   - SIMD overhead outweighs parallel benefit\n\n";
        std::cout << "   Recommendation: REIST-Linear may not benefit from AVX2\n";
        std::cout << "   for this workload. Consider alternative approaches.\n\n";
    }
    
    std::cout << "CPU Info Check:\n";
    std::cout << "Run: lscpu | grep -E '(Model name|MHz|Flags)'\n";
    std::cout << "Look for 'avx2' in flags and check CPU frequency\n\n";
    
    return 0;
}