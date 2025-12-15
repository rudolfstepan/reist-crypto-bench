#include <iostream>
#include <chrono>
#include <vector>
#include <iomanip>
#include <immintrin.h>
#include <cstdint>

#if defined(__AVX2__)
#define HAVE_AVX2 1
#else
#define HAVE_AVX2 0
#endif

using Clock = std::chrono::high_resolution_clock;

// ============================================================
// Classic modulo (reference, uses %)
// ============================================================
inline int64_t classic_modadd(int64_t a, int64_t b, int64_t n) {
    return (a + b) % n;
}

// Helper: center into [-half, half]
inline int64_t center64(int64_t x, int64_t n) {
    int64_t half = n >> 1;
    x %= n;
    if (x > half) x -= n;
    return x;
}
inline int32_t center32(int32_t x, int32_t n) {
    int32_t half = n >> 1;
    x %= n;
    if (x > half) x -= n;
    return x;
}

// ============================================================
// REIST v1 (centered remainder, NO division)
// ============================================================
inline int64_t reist_v1_modadd_nodiv(int64_t a, int64_t b, int64_t n) {
    int64_t half = n >> 1;
    int64_t r = a + b;
    if (r > half)        r -= n;
    else if (r <= -half) r += n;
    return r;
}

// ============================================================
// Barret-REIST v2 contexts (division-free)
// ============================================================
struct BarretReistCtx {
    int64_t  B;
    int64_t  half;
    uint64_t invB;
    int      shift;

    explicit BarretReistCtx(int64_t modulus)
        : B(modulus), half(modulus >> 1), shift(32) {
        // Fixed-point reciprocal; final correction yields centered remainder
        double inv = 1.0 / (double)B;
        invB = (uint64_t)(inv * (1ULL << shift));
    }
};

struct BarretReistCtx32 {
    int32_t  B;
    int32_t  half;
    uint32_t invB;
    int      shift;

    explicit BarretReistCtx32(int32_t modulus)
        : B(modulus), half(modulus >> 1), shift(32) {
        double inv = 1.0 / (double)B;
        invB = (uint32_t)(inv * (1ULL << shift));
    }
};

// ============================================================
// Barret-REIST v2 scalar reducers
// ============================================================
inline int64_t Barret_reist_reduce(int64_t T, const BarretReistCtx& ctx) {
    int64_t Q;
#ifndef _WIN32
    Q = (int64_t)(((__int128_t)T * ctx.invB) >> ctx.shift);
#else
    // Windows MSVC does not support __int128_t. Use 64-bit multiplication as fallback (less precise for large T).
    Q = (int64_t)(((int64_t)T * (int64_t)ctx.invB) >> ctx.shift);
    // NOTE: This fallback may lose precision for large T. For full 128-bit support, use a library like boost::multiprecision.
#endif
    int64_t R = T - Q * ctx.B;
    if (R > ctx.half)        R -= ctx.B;
    else if (R <= -ctx.half) R += ctx.B;
    return R;
}

inline int32_t Barret_reist_reduce32(int32_t T, const BarretReistCtx32& ctx) {
    int32_t Q = (int32_t)((int64_t(T) * ctx.invB) >> ctx.shift);
    int32_t R = T - Q * ctx.B;
    if (R > ctx.half)        R -= ctx.B;
    else if (R <= -ctx.half) R += ctx.B;
    return R;
}

// ============================================================
// AVX2 kernels
// ============================================================
#if HAVE_AVX2

static inline __m256i approx_q_avx2_i32(__m256i T, uint32_t invB) {
    __m256i inv = _mm256_set1_epi32((int32_t)invB);

    __m256i prod_even = _mm256_mul_epi32(T, inv);
    __m256i T_odd     = _mm256_srli_epi64(T, 32);
    __m256i prod_odd  = _mm256_mul_epi32(T_odd, inv);

    __m256i q_even_64 = _mm256_srli_epi64(prod_even, 32);
    __m256i q_odd_64  = _mm256_srli_epi64(prod_odd,  32);

    __m256i q_even_32 = _mm256_shuffle_epi32(q_even_64, _MM_SHUFFLE(2,0,2,0));
    __m256i q_odd_32  = _mm256_shuffle_epi32(q_odd_64,  _MM_SHUFFLE(2,0,2,0));

    return _mm256_unpacklo_epi32(q_even_32, q_odd_32);
}

static inline __m256i Barret_reist_reduce32_avx2(__m256i T, const BarretReistCtx32& ctx) {
    __m256i q  = approx_q_avx2_i32(T, ctx.invB);
    __m256i Bv = _mm256_set1_epi32(ctx.B);
    __m256i R  = _mm256_sub_epi32(T, _mm256_mullo_epi32(q, Bv));

    __m256i half = _mm256_set1_epi32(ctx.half);
    __m256i neg_half = _mm256_sub_epi32(_mm256_setzero_si256(), half);

    __m256i m_hi = _mm256_cmpgt_epi32(R, half);
    __m256i gt_nh = _mm256_cmpgt_epi32(R, neg_half);
    __m256i m_lo = _mm256_xor_si256(gt_nh, _mm256_set1_epi32(-1));

    R = _mm256_sub_epi32(R, _mm256_and_si256(Bv, m_hi));
    R = _mm256_add_epi32(R, _mm256_and_si256(Bv, m_lo));
    return R;
}

static inline __m256i reist_v1_add_avx2(__m256i a, __m256i b, int32_t M) {
    __m256i r = _mm256_add_epi32(a, b);
    __m256i half = _mm256_set1_epi32(M >> 1);
    __m256i neg_half = _mm256_sub_epi32(_mm256_setzero_si256(), half);
    __m256i Mv = _mm256_set1_epi32(M);

    __m256i m_hi = _mm256_cmpgt_epi32(r, half);
    __m256i gt_nh = _mm256_cmpgt_epi32(r, neg_half);
    __m256i m_lo = _mm256_xor_si256(gt_nh, _mm256_set1_epi32(-1));

    r = _mm256_sub_epi32(r, _mm256_and_si256(Mv, m_hi));
    r = _mm256_add_epi32(r, _mm256_and_si256(Mv, m_lo));
    return r;
}

#endif

// ============================================================
// Timing helper
// ============================================================
template<typename F>
double time_loop(F&& f, int64_t N) {
    auto t0 = Clock::now();
    f(N);
    auto t1 = Clock::now();
    return std::chrono::duration<double>(t1 - t0).count();
}

// ============================================================
// Main benchmark
// ============================================================
int main() {
    const int64_t N = (10'000'000 / 8) * 8;

    std::vector<int64_t> moduli = {
        257, 65537, 1000003, 10000019, 1000000007
    };

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "=============================================\n";
    std::cout << "Barret-REIST v2 Benchmark (Division-Free)\n";
    std::cout << "=============================================\n";
    std::cout << "Iterations per modulus: " << N << "\n\n";

    for (int64_t M : moduli) {
        std::cout << "---------------------------------------------\n";
        std::cout << "Modulus = " << M << "\n";
        std::cout << "---------------------------------------------\n";

        // Classic seeds in [0, M)
        int64_t a_classic = 1234567 % M;
        int64_t b_classic = 891011  % M;

        // Centered seeds for REIST/Barret in [-half, half]
        int64_t a0_64 = center64(1234567, M);
        int64_t b0_64 = center64(891011,  M);

        int32_t M32 = (int32_t)M;
        int32_t a0_32 = center32((int32_t)(1234567 % M), M32);
        int32_t b0_32 = center32((int32_t)(891011  % M), M32);

        volatile int64_t sink = 0;

        BarretReistCtx ctx(M);
        BarretReistCtx32 ctx32(M32);

        // Classic (non-centered semantics)
        double t_classic = time_loop([&](int64_t n) {
            int64_t x = a_classic;
            int64_t y = b_classic;
            for (int64_t i = 0; i < n; ++i) {
                x = classic_modadd(x, y, M);
            }
            sink = x;
        }, N);

        // REIST v1 scalar (centered)
        double t_reist_v1 = time_loop([&](int64_t n) {
            int64_t x = a0_64;
            int64_t y = b0_64;
            for (int64_t i = 0; i < n; ++i) {
                x = reist_v1_modadd_nodiv(x, y, M);
            }
            sink = x;
        }, N);

        // Barret-REIST v2 scalar 64 (centered)
        double t_barret = time_loop([&](int64_t n) {
            int64_t x = a0_64;
            int64_t y = b0_64;
            for (int64_t i = 0; i < n; ++i) {
                x = Barret_reist_reduce(x + y, ctx);
            }
            sink = x;
        }, N);

        // Barret-REIST v2 int32 scalar (centered)
        double t_barret32 = time_loop([&](int64_t n) {
            int32_t x = a0_32;
            int32_t y = b0_32;
            for (int64_t i = 0; i < n; ++i) {
                x = Barret_reist_reduce32((int32_t)(x + y), ctx32);
            }
            sink = x;
        }, N);

#if HAVE_AVX2
        // REIST v1 AVX2 (centered, scalar-equivalent ops via n>>3)
        double t_reist_v1_avx2 = time_loop([&](int64_t n) {
            // build centered seeds per lane (avoid pathological out-of-range lanes)
            __m256i x = _mm256_setr_epi32(
                a0_32, center32(a0_32 + 1, M32), center32(a0_32 + 2, M32), center32(a0_32 + 3, M32),
                center32(a0_32 + 4, M32), center32(a0_32 + 5, M32), center32(a0_32 + 6, M32), center32(a0_32 + 7, M32)
            );
            __m256i y = _mm256_set1_epi32(b0_32);

            for (int64_t i = 0; i < (n >> 3); ++i) {
                x = reist_v1_add_avx2(x, y, M32);
            }

            alignas(32) int32_t out[8];
            _mm256_store_si256((__m256i*)out, x);
            sink = out[0] ^ out[3] ^ out[7];
        }, N);

        // Barret-REIST v2 int32 AVX2 (centered, scalar-equivalent ops via n>>3)
        double t_barret32_avx2 = time_loop([&](int64_t n) {
            __m256i x = _mm256_setr_epi32(
                a0_32, center32(a0_32 + 1, M32), center32(a0_32 + 2, M32), center32(a0_32 + 3, M32),
                center32(a0_32 + 4, M32), center32(a0_32 + 5, M32), center32(a0_32 + 6, M32), center32(a0_32 + 7, M32)
            );
            __m256i y = _mm256_set1_epi32(b0_32);

            for (int64_t i = 0; i < (n >> 3); ++i) {
                x = Barret_reist_reduce32_avx2(_mm256_add_epi32(x, y), ctx32);
            }

            alignas(32) int32_t out[8];
            _mm256_store_si256((__m256i*)out, x);
            sink = out[0] ^ out[3] ^ out[7];
        }, N);
#endif

        std::cout << "Classic modulo           : " << t_classic << " s\n";
        std::cout << "REIST v1 scalar          : " << t_reist_v1 << " s\n";
#if HAVE_AVX2
        std::cout << "REIST v1 int32 AVX2      : " << t_reist_v1_avx2 << " s\n";
#endif
        std::cout << "Barret-REIST v2 scalar     : " << t_barret << " s\n";
        std::cout << "Barret-REIST v2 int32      : " << t_barret32 << " s\n";
#if HAVE_AVX2
        std::cout << "Barret-REIST v2 int32 AVX2 : " << t_barret32_avx2 << " s\n";
#endif

        std::cout << "Speedups:\n";
        std::cout << "  REIST v1 scalar vs Classic        : " << (t_classic / t_reist_v1) << "x\n";
#if HAVE_AVX2
        std::cout << "  REIST v1 AVX2 vs REIST v1 scalar  : " << (t_reist_v1 / t_reist_v1_avx2) << "x\n";
#endif
        std::cout << "  Barret-REIST scalar vs Classic      : " << (t_classic / t_barret) << "x\n";
        std::cout << "  Barret-REIST int32 vs scalar        : " << (t_barret / t_barret32) << "x\n";
#if HAVE_AVX2
        std::cout << "  Barret-REIST AVX2 vs int32          : " << (t_barret32 / t_barret32_avx2) << "x\n";
        std::cout << "  Barret-REIST AVX2 vs REIST v1 scalar: " << (t_reist_v1 / t_barret32_avx2) << "x\n";
        std::cout << "  Barret-REIST AVX2 vs Classic        : " << (t_classic / t_barret32_avx2) << "x\n";
#endif
        std::cout << "\nSink: " << sink << "\n\n";
    }

    return 0;
}
