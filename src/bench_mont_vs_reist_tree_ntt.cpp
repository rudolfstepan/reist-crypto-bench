#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <vector>
#include <chrono>
#include <iomanip>

#if defined(__aarch64__) || defined(__arm__)
  #include <arm_neon.h>
  #define HAVE_NEON 1
#else
  #define HAVE_NEON 0
#endif

using Clock = std::chrono::high_resolution_clock;
static volatile uint64_t g_sink = 0;

// -------------------------------------------
// Helpers: timing
// -------------------------------------------
template<class F>
double bench_seconds(F&& f) {
  auto t0 = Clock::now();
  f();
  auto t1 = Clock::now();
  return std::chrono::duration<double>(t1 - t0).count();
}

// -------------------------------------------
// Parameters
// -------------------------------------------
static constexpr int32_t Q = 8380417; // Dilithium prime
static constexpr int32_t HALF_Q = Q / 2;

// -------------------------------------------
// Centered normalization for int32
// Range: [-Q/2, Q/2)
// -------------------------------------------
static inline int32_t center32(int32_t x) {
  // assumes x is not too far away, typical for NTT butterflies
  // bring into (-Q, Q) first
  if (x >= Q) x -= Q;
  if (x < 0)  x += Q;
  // now [0, Q)
  if (x > HALF_Q) x -= Q;
  return x;
}

// Branchless centered correction for add/sub
static inline int32_t reist_add_centered(int32_t a, int32_t b) {
  int32_t r = a + b;                 // may exceed range slightly
  // map to [-Q/2, Q/2) with two comparisons
  // first bring to [0,Q)
  int32_t t = r;
  t += (t < 0) ? Q : 0;
  t -= (t >= Q) ? Q : 0;
  // then center
  t -= (t > HALF_Q) ? Q : 0;
  return t;
}

static inline int32_t reist_sub_centered(int32_t a, int32_t b) {
  int32_t r = a - b;
  int32_t t = r;
  t += (t < 0) ? Q : 0;
  t -= (t >= Q) ? Q : 0;
  t -= (t > HALF_Q) ? Q : 0;
  return t;
}

// -------------------------------------------
// Barrett multiplication for 32-bit modulus Q
// We use mu = floor(2^32 / Q)
// For inputs in [0, Q) the estimate works well; we then correct once or twice.
// We will operate on non-negative representatives for multiplication.
// -------------------------------------------
static constexpr uint32_t MU32 = (uint32_t)(( (uint64_t)1 << 32 ) / (uint64_t)Q);

static inline int32_t barrett_mul_to_centered(int32_t b_centered, int32_t w_centered) {
  // map to [0,Q) for mul
  uint32_t b = (uint32_t)(b_centered >= 0 ? b_centered : (b_centered + Q));
  uint32_t w = (uint32_t)(w_centered >= 0 ? w_centered : (w_centered + Q));

  uint64_t prod = (uint64_t)b * (uint64_t)w;                // up to < Q^2 < 2^47
  uint32_t qhat = (uint32_t)((prod * (uint64_t)MU32) >> 32); // approx prod / Q
  uint64_t r = prod - (uint64_t)qhat * (uint64_t)Q;

  // Correct into [0, Q)
  // At most a couple of corrections for this parameter range
  if ((int64_t)r >= Q) r -= Q;
  if ((int64_t)r >= Q) r -= Q;

  int32_t rc = (int32_t)r;
  if (rc > HALF_Q) rc -= Q;
  return rc;
}

// -------------------------------------------
// Montgomery (32-bit modulus, R=2^32)
// We represent values in [0,Q) and mont form: xR mod Q
// N_inv = -Q^{-1} mod 2^32
// -------------------------------------------
struct Mont32 {
  uint32_t n;
  uint32_t n_inv; // -n^{-1} mod 2^32
  uint32_t r2;    // (2^32)^2 mod n

  explicit Mont32(uint32_t mod) : n(mod) {
    // modulus must be odd
    if ((n & 1u) == 0u) { std::cerr << "Montgomery requires odd modulus\n"; std::abort(); }

    // Newton iteration for inverse modulo 2^32
    uint32_t inv = 1;
    for (int i = 0; i < 5; ++i) inv *= (2u - n * inv);
    n_inv = (uint32_t)(0u - inv);

    // r2 = (2^32)^2 mod n = (0 mod n)^2 ??? use 64-bit: (2^32 mod n)^2 mod n
    uint32_t r = (uint32_t)(((uint64_t)1 << 32) % n);
    r2 = (uint32_t)((uint64_t)r * r % n);
  }

  static inline uint32_t add(uint32_t a, uint32_t b, uint32_t n) {
    uint32_t s = a + b;
    if (s >= n || s < a) s -= n;
    return s;
  }

  static inline uint32_t sub(uint32_t a, uint32_t b, uint32_t n) {
    uint32_t d = a - b;
    if (a < b) d += n;
    return d;
  }

  inline uint32_t redc(uint64_t t) const {
    uint32_t m = (uint32_t)t * n_inv;
    uint64_t u = (t + (uint64_t)m * (uint64_t)n) >> 32;
    uint32_t r = (uint32_t)u;
    if (r >= n) r -= n;
    return r;
  }

  inline uint32_t to_mont(uint32_t x) const {
    // x * R^2 * R^{-1} = xR
    return redc((uint64_t)x * (uint64_t)r2);
  }

  inline uint32_t from_mont(uint32_t x) const {
    return redc((uint64_t)x);
  }

  inline uint32_t mul(uint32_t a_m, uint32_t b_m) const {
    return redc((uint64_t)a_m * (uint64_t)b_m);
  }
};

// -------------------------------------------
// Data init: deterministic pseudo values
// -------------------------------------------
static inline uint32_t lcg32(uint32_t& s) {
  s = s * 1664525u + 1013904223u;
  return s;
}

static void init_centered(std::vector<int32_t>& a, std::vector<int32_t>& b, std::vector<int32_t>& w) {
  uint32_t s = 1;
  for (size_t i = 0; i < a.size(); ++i) {
    uint32_t x = lcg32(s) % (uint32_t)Q;
    uint32_t y = lcg32(s) % (uint32_t)Q;
    uint32_t z = lcg32(s) % (uint32_t)Q;
    int32_t xc = (int32_t)x; if (xc > HALF_Q) xc -= Q;
    int32_t yc = (int32_t)y; if (yc > HALF_Q) yc -= Q;
    int32_t zc = (int32_t)z; if (zc > HALF_Q) zc -= Q;
    a[i] = xc;
    b[i] = yc;
    w[i] = zc;
  }
}

// -------------------------------------------
// REIST-Tree scalar butterfly
// a,b centered; w centered; t = b*w (mod Q), centered
// -------------------------------------------
static void reist_tree_butterfly_scalar(std::vector<int32_t>& a,
                                       std::vector<int32_t>& b,
                                       const std::vector<int32_t>& w,
                                       int rounds) {
  const int n = (int)a.size();
  for (int r = 0; r < rounds; ++r) {
    for (int i = 0; i < n; ++i) {
      int32_t t = barrett_mul_to_centered(b[i], w[i]);
      int32_t ai = a[i];
      a[i] = reist_add_centered(ai, t);
      b[i] = reist_sub_centered(ai, t);
    }
  }
  g_sink ^= (uint32_t)(a[0] + (uint32_t)b[n/2]);
}

// -------------------------------------------
// Montgomery butterfly (stay in mont domain)
// a_m, b_m, w_m in Montgomery form [0,Q)
// t = b_m * w_m -> mont; a' = a + t; b' = a - t (all mod Q)
// -------------------------------------------
static void mont_butterfly(std::vector<uint32_t>& a_m,
                           std::vector<uint32_t>& b_m,
                           const std::vector<uint32_t>& w_m,
                           const Mont32& mont,
                           int rounds) {
  const int n = (int)a_m.size();
  for (int r = 0; r < rounds; ++r) {
    for (int i = 0; i < n; ++i) {
      uint32_t t = mont.mul(b_m[i], w_m[i]);
      uint32_t ai = a_m[i];
      a_m[i] = Mont32::add(ai, t, mont.n);
      b_m[i] = Mont32::sub(ai, t, mont.n);
    }
  }
  // consume
  g_sink ^= mont.from_mont(a_m[0] ^ b_m[n/2]);
}

#if HAVE_NEON
// -------------------------------------------
// NEON helpers: branchless centered add/sub on 4 lanes
// Inputs expected already centered-ish; we keep it stable with 2-step mapping.
// -------------------------------------------
static inline int32x4_t neon_center_from_0q(int32x4_t x0q) {
  // x0q in [0,Q)
  int32x4_t half = vdupq_n_s32(HALF_Q);
  int32x4_t qv = vdupq_n_s32(Q);
  uint32x4_t gt = vcgtq_s32(x0q, half);
  return vsubq_s32(x0q, vandq_s32(vreinterpretq_s32_u32(gt), qv));
}

static inline int32x4_t neon_to_0q_from_center(int32x4_t xc) {
  // if negative add Q, else keep; then if >=Q subtract Q
  int32x4_t qv = vdupq_n_s32(Q);
  uint32x4_t neg = vcltq_s32(xc, vdupq_n_s32(0));
  int32x4_t t = vaddq_s32(xc, vandq_s32(vreinterpretq_s32_u32(neg), qv));
  uint32x4_t geq = vcgeq_s32(t, qv);
  t = vsubq_s32(t, vandq_s32(vreinterpretq_s32_u32(geq), qv));
  return t;
}

static inline int32x4_t neon_add_centered(int32x4_t a, int32x4_t b) {
  int32x4_t r = vaddq_s32(a, b);
  // map to [0,Q)
  int32x4_t t = neon_to_0q_from_center(r);
  // center
  return neon_center_from_0q(t);
}

static inline int32x4_t neon_sub_centered(int32x4_t a, int32x4_t b) {
  int32x4_t r = vsubq_s32(a, b);
  int32x4_t t = neon_to_0q_from_center(r);
  return neon_center_from_0q(t);
}

// Barrett mul NEON: compute r = (b*w) mod Q in [0,Q), then center.
// We do 32x32->64 with vmull_u32 on low/high halves.
static inline uint32x4_t neon_barrett_mul_0q(uint32x4_t b, uint32x4_t w) {
  // prod 64
  uint32x2_t b_lo = vget_low_u32(b);
  uint32x2_t b_hi = vget_high_u32(b);
  uint32x2_t w_lo = vget_low_u32(w);
  uint32x2_t w_hi = vget_high_u32(w);

  uint64x2_t p_lo = vmull_u32(b_lo, w_lo);
  uint64x2_t p_hi = vmull_u32(b_hi, w_hi);

  // qhat = (prod * MU32) >> 32, lane-wise
  uint32x2_t mu = vdup_n_u32(MU32);
  uint64x2_t q_lo64 = vmull_u32(vmovn_u64(p_lo), mu);
  uint64x2_t q_hi64 = vmull_u32(vmovn_u64(p_hi), mu);
  uint32x2_t q_lo = vshrn_n_u64(q_lo64, 32);
  uint32x2_t q_hi = vshrn_n_u64(q_hi64, 32);
  uint32x4_t qhat = vcombine_u32(q_lo, q_hi);

  // r = prod - qhat*Q
  uint32x4_t qv = vdupq_n_u32((uint32_t)Q);
  // qhat*Q in 64-bit
  uint32x2_t qh_lo = vget_low_u32(qhat);
  uint32x2_t qh_hi = vget_high_u32(qhat);
  uint64x2_t qn_lo = vmull_u32(qh_lo, vdup_n_u32((uint32_t)Q));
  uint64x2_t qn_hi = vmull_u32(qh_hi, vdup_n_u32((uint32_t)Q));

  uint64x2_t r_lo = vsubq_u64(p_lo, qn_lo);
  uint64x2_t r_hi = vsubq_u64(p_hi, qn_hi);

  // narrow to 32-bit (r is < about 2Q here for this parameter range)
  uint32x2_t r32_lo = vmovn_u64(r_lo);
  uint32x2_t r32_hi = vmovn_u64(r_hi);
  uint32x4_t r32 = vcombine_u32(r32_lo, r32_hi);

  // correct: if r >= Q then r -= Q (maybe twice)
  uint32x4_t ge1 = vcgeq_u32(r32, qv);
  r32 = vsubq_u32(r32, vandq_u32(ge1, qv));
  uint32x4_t ge2 = vcgeq_u32(r32, qv);
  r32 = vsubq_u32(r32, vandq_u32(ge2, qv));
  return r32;
}

static void reist_tree_butterfly_neon(std::vector<int32_t>& a,
                                     std::vector<int32_t>& b,
                                     const std::vector<int32_t>& w,
                                     int rounds) {
  const int n = (int)a.size();
  const int limit = n & ~3;

  for (int r = 0; r < rounds; ++r) {
    for (int i = 0; i < limit; i += 4) {
      int32x4_t av = vld1q_s32(&a[i]);
      int32x4_t bv = vld1q_s32(&b[i]);
      int32x4_t wv = vld1q_s32(&w[i]);

      // map centered to [0,Q) for mul
      uint32x4_t b0q = vreinterpretq_u32_s32(neon_to_0q_from_center(bv));
      uint32x4_t w0q = vreinterpretq_u32_s32(neon_to_0q_from_center(wv));

      uint32x4_t t0q = neon_barrett_mul_0q(b0q, w0q);
      int32x4_t t_center = neon_center_from_0q(vreinterpretq_s32_u32(t0q));

      int32x4_t a_new = neon_add_centered(av, t_center);
      int32x4_t b_new = neon_sub_centered(av, t_center);

      vst1q_s32(&a[i], a_new);
      vst1q_s32(&b[i], b_new);
    }
    // tail
    for (int i = limit; i < n; ++i) {
      int32_t t = barrett_mul_to_centered(b[i], w[i]);
      int32_t ai = a[i];
      a[i] = reist_add_centered(ai, t);
      b[i] = reist_sub_centered(ai, t);
    }
  }
  g_sink ^= (uint32_t)(a[0] + (uint32_t)b[n/2]);
}
#endif

int main(int argc, char** argv) {
  int n = 1024;        // vector length
  int rounds = 5000;   // repeats, so runtime is stable
  bool use_neon = true;

  if (argc > 1) n = std::atoi(argv[1]);
  if (argc > 2) rounds = std::atoi(argv[2]);

  std::cout << std::fixed << std::setprecision(6);
  std::cout << "Montgomery vs REIST-Tree NTT Butterfly Benchmark\n";
  std::cout << "Modulus Q = " << Q << ", n = " << n << ", rounds = " << rounds << "\n";
#if HAVE_NEON
  std::cout << "NEON: enabled\n";
#else
  std::cout << "NEON: not available, using scalar\n";
  use_neon = false;
#endif
  std::cout << "\n";

  std::vector<int32_t> a(n), b(n), w(n);
  init_centered(a, b, w);

  // Prepare Montgomery arrays
  Mont32 mont((uint32_t)Q);
  std::vector<uint32_t> a_m(n), b_m(n), w_m(n);

  for (int i = 0; i < n; ++i) {
    uint32_t a0 = (uint32_t)(a[i] >= 0 ? a[i] : a[i] + Q);
    uint32_t b0 = (uint32_t)(b[i] >= 0 ? b[i] : b[i] + Q);
    uint32_t w0 = (uint32_t)(w[i] >= 0 ? w[i] : w[i] + Q);
    a_m[i] = mont.to_mont(a0);
    b_m[i] = mont.to_mont(b0);
    w_m[i] = mont.to_mont(w0);
  }

  // Make copies so each benchmark starts from same state
  auto a0 = a; auto b0 = b;
  auto am0 = a_m; auto bm0 = b_m;

  double t_reist_scalar = bench_seconds([&](){
    auto aa = a0; auto bb = b0;
    reist_tree_butterfly_scalar(aa, bb, w, rounds);
    g_sink ^= (uint32_t)(aa[1] + (uint32_t)bb[2]);
  });

#if HAVE_NEON
  double t_reist_neon = bench_seconds([&](){
    auto aa = a0; auto bb = b0;
    reist_tree_butterfly_neon(aa, bb, w, rounds);
    g_sink ^= (uint32_t)(aa[1] + (uint32_t)bb[2]);
  });
#endif

  double t_mont = bench_seconds([&](){
    auto aa = am0; auto bb = bm0;
    mont_butterfly(aa, bb, w_m, mont, rounds);
    // consume one value converted back
    uint32_t out = mont.from_mont(aa[3] ^ bb[4]);
    g_sink ^= out;
  });

  std::cout << "Results (seconds)\n";
  std::cout << "REIST-Tree scalar : " << t_reist_scalar << "\n";
#if HAVE_NEON
  std::cout << "REIST-Tree NEON   : " << t_reist_neon   << "\n";
#endif
  std::cout << "Montgomery (stay) : " << t_mont         << "\n\n";

#if HAVE_NEON
  std::cout << "Speedups\n";
  std::cout << "NEON vs scalar (REIST-Tree): " << (t_reist_scalar / t_reist_neon) << "x\n";
  std::cout << "Mont vs REIST-Tree NEON    : " << (t_reist_neon / t_mont) << "x  ( <1 means Montgomery faster )\n";
  std::cout << "Mont vs REIST-Tree scalar  : " << (t_reist_scalar / t_mont) << "x  ( >1 means REIST scalar faster )\n";
#else
  std::cout << "Speedups\n";
  std::cout << "Mont vs REIST-Tree scalar  : " << (t_reist_scalar / t_mont) << "x\n";
#endif

  // prevent optimizing away
  std::cout << "\nSink: " << (uint64_t)g_sink << "\n";
  return 0;
}
