#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <iomanip>
#include <iostream>
#include <limits>
#include <random>
#include <stdexcept>
#include <string>
#include <vector>

#if defined(_MSC_VER)
#include <intrin.h>
#endif

#if defined(__aarch64__) || defined(__ARM_NEON) || defined(__ARM_NEON__) \
    || defined(_M_ARM64)
#if defined(_MSC_VER) && defined(_M_ARM64)
#include <arm64_neon.h>
#else
#include <arm_neon.h>
#endif
#define REIST_TREE_HAVE_NEON 1
#else
#define REIST_TREE_HAVE_NEON 0
#endif

using Clock = std::chrono::steady_clock;

#if defined(_MSC_VER)
#define BENCH_NOINLINE __declspec(noinline)
#elif defined(__GNUC__) || defined(__clang__)
#define BENCH_NOINLINE __attribute__((noinline))
#else
#define BENCH_NOINLINE
#endif

extern "C" {
volatile std::uint64_t reist_tree_benchmark_sink = 0;
}

namespace {

constexpr std::int32_t kDefaultQ = 8'380'417;

struct Bounds {
    std::int32_t lo;
    std::int32_t hi; // exclusive
};

struct Workload {
    std::vector<std::int32_t> a;
    std::vector<std::int32_t> b;
    std::vector<std::int32_t> w;
};

struct MontgomeryParameters {
    std::uint32_t q;
    std::uint32_t negative_inverse;
    std::uint32_t r_squared;
};

inline void compiler_barrier() {
#if defined(_MSC_VER)
    _ReadWriteBarrier();
#elif defined(__GNUC__) || defined(__clang__)
    __asm__ __volatile__("" ::: "memory");
#endif
}

constexpr Bounds canonical_bounds(std::int32_t q) {
    const std::int32_t half = q / 2;
    return {-half, static_cast<std::int32_t>(q - half)};
}

constexpr bool is_canonical(std::int32_t value, std::int32_t q) {
    const Bounds bounds = canonical_bounds(q);
    return value >= bounds.lo && value < bounds.hi;
}

std::int32_t canonical_reference(std::int64_t value, std::int32_t q) {
    std::int64_t residue = value % q;
    if (residue < 0) {
        residue += q;
    }
    if (residue >= canonical_bounds(q).hi) {
        residue -= q;
    }
    return static_cast<std::int32_t>(residue);
}

constexpr std::uint32_t canonical_to_nonnegative(
    std::int32_t value, std::int32_t q) {
    return value < 0
        ? static_cast<std::uint32_t>(value + q)
        : static_cast<std::uint32_t>(value);
}

constexpr std::int32_t nonnegative_to_canonical(
    std::uint32_t value, std::int32_t q) {
    return value >= static_cast<std::uint32_t>(canonical_bounds(q).hi)
        ? static_cast<std::int32_t>(
            static_cast<std::int64_t>(value) - q)
        : static_cast<std::int32_t>(value);
}

constexpr std::int32_t correct_canonical_once(
    std::int64_t sum, std::int32_t q) {
    const Bounds bounds = canonical_bounds(q);
    if (sum >= bounds.hi) {
        sum -= q;
    } else if (sum < bounds.lo) {
        sum += q;
    }
    return static_cast<std::int32_t>(sum);
}

std::int32_t exact_product_centered(
    std::int32_t lhs, std::int32_t rhs, std::int32_t q) {
    const std::uint64_t left = canonical_to_nonnegative(lhs, q);
    const std::uint64_t right = canonical_to_nonnegative(rhs, q);
    const std::uint32_t residue = static_cast<std::uint32_t>(
        (left * right) % static_cast<std::uint32_t>(q));
    return nonnegative_to_canonical(residue, q);
}

std::uint32_t montgomery_reduce(
    std::uint64_t value,
    std::uint32_t q,
    std::uint32_t negative_inverse) {
    const std::uint32_t multiplier =
        static_cast<std::uint32_t>(value) * negative_inverse;
    const std::uint64_t combined =
        value + static_cast<std::uint64_t>(multiplier) * q;
    std::uint32_t result = static_cast<std::uint32_t>(combined >> 32U);
    if (result >= q) {
        result -= q;
    }
    return result;
}

MontgomeryParameters make_montgomery_parameters(std::uint32_t q) {
    if ((q & 1U) == 0U) {
        throw std::invalid_argument("Montgomery reduction requires odd q");
    }

    std::uint32_t inverse = 1;
    for (int iteration = 0; iteration < 5; ++iteration) {
        inverse *= 2U - q * inverse;
    }

    const std::uint32_t r = static_cast<std::uint32_t>(
        (std::uint64_t{1} << 32U) % q);
    const std::uint32_t r_squared = static_cast<std::uint32_t>(
        (static_cast<std::uint64_t>(r) * r) % q);
    return {q, static_cast<std::uint32_t>(0U - inverse), r_squared};
}

std::uint32_t to_montgomery(
    std::uint32_t value, const MontgomeryParameters& parameters) {
    return montgomery_reduce(
        static_cast<std::uint64_t>(value) * parameters.r_squared,
        parameters.q,
        parameters.negative_inverse);
}

std::uint32_t from_montgomery(
    std::uint32_t value, const MontgomeryParameters& parameters) {
    return montgomery_reduce(
        value, parameters.q, parameters.negative_inverse);
}

std::uint32_t add_nonnegative(
    std::uint32_t lhs, std::uint32_t rhs, std::uint32_t q) {
    const std::uint64_t sum =
        static_cast<std::uint64_t>(lhs) + rhs;
    return static_cast<std::uint32_t>(sum >= q ? sum - q : sum);
}

std::uint32_t subtract_nonnegative(
    std::uint32_t lhs, std::uint32_t rhs, std::uint32_t q) {
    return lhs >= rhs
        ? lhs - rhs
        : static_cast<std::uint32_t>(
            static_cast<std::uint64_t>(lhs) + q - rhs);
}

template<typename Function>
double time_call(Function&& function) {
    compiler_barrier();
    const auto begin = Clock::now();
    compiler_barrier();
    function();
    compiler_barrier();
    const auto end = Clock::now();
    compiler_barrier();
    return std::chrono::duration<double>(end - begin).count();
}

bool parse_positive_u64(const char* text, std::uint64_t& value) {
    try {
        const std::string input(text);
        if (input.empty()
            || !std::all_of(input.begin(), input.end(), [](char character) {
                return character >= '0' && character <= '9';
            })) {
            return false;
        }
        std::size_t used = 0;
        const unsigned long long parsed = std::stoull(input, &used, 10);
        if (used != input.size() || parsed == 0) {
            return false;
        }
        value = static_cast<std::uint64_t>(parsed);
        return true;
    } catch (...) {
        return false;
    }
}

Workload make_workload(std::size_t n, std::int32_t q) {
    Workload workload;
    workload.a.resize(n);
    workload.b.resize(n);
    workload.w.resize(n);

    const Bounds bounds = canonical_bounds(q);
    std::mt19937 generator(0x71ee1234U ^ static_cast<std::uint32_t>(q));
    std::uniform_int_distribution<std::int32_t> distribution(
        bounds.lo, static_cast<std::int32_t>(bounds.hi - 1));
    for (std::size_t i = 0; i < n; ++i) {
        workload.a[i] = distribution(generator);
        workload.b[i] = distribution(generator);
        workload.w[i] = distribution(generator);
    }

    const std::int32_t zero = 0;
    const std::int32_t upper = static_cast<std::int32_t>(bounds.hi - 1);
    const std::int32_t lower = bounds.lo;
    const std::int32_t one = nonnegative_to_canonical(
        static_cast<std::uint32_t>(1 % q), q);
    const std::int32_t minus_one = nonnegative_to_canonical(
        static_cast<std::uint32_t>((q - 1) % q), q);
    const std::array<std::array<std::int32_t, 3>, 8> boundaries = {{
        {zero, zero, zero},
        {upper, upper, one},
        {lower, lower, one},
        {upper, lower, minus_one},
        {lower, upper, upper},
        {upper, upper, upper},
        {lower, lower, lower},
        {lower, upper, one}
    }};
    for (std::size_t i = 0; i < std::min(n, boundaries.size()); ++i) {
        workload.a[i] = boundaries[i][0];
        workload.b[i] = boundaries[i][1];
        workload.w[i] = boundaries[i][2];
    }
    return workload;
}

void to_nonnegative_vectors(
    const Workload& workload,
    std::int32_t q,
    std::vector<std::uint32_t>& a,
    std::vector<std::uint32_t>& b,
    std::vector<std::uint32_t>& w) {
    const std::size_t n = workload.a.size();
    a.resize(n);
    b.resize(n);
    w.resize(n);
    for (std::size_t i = 0; i < n; ++i) {
        a[i] = canonical_to_nonnegative(workload.a[i], q);
        b[i] = canonical_to_nonnegative(workload.b[i], q);
        w[i] = canonical_to_nonnegative(workload.w[i], q);
    }
}

void reference_butterflies(
    std::vector<std::uint32_t>& a,
    std::vector<std::uint32_t>& b,
    const std::vector<std::uint32_t>& w,
    std::uint64_t rounds,
    std::uint32_t q) {
    for (std::uint64_t round = 0; round < rounds; ++round) {
        for (std::size_t i = 0; i < a.size(); ++i) {
            const std::uint32_t product = static_cast<std::uint32_t>(
                (static_cast<std::uint64_t>(b[i]) * w[i]) % q);
            const std::uint32_t original_a = a[i];
            a[i] = add_nonnegative(original_a, product, q);
            b[i] = subtract_nonnegative(original_a, product, q);
        }
    }
}

bool preflight_bounds(std::int32_t q) {
    const Bounds bounds = canonical_bounds(q);
    const std::array<std::int64_t, 8> values = {
        bounds.lo,
        static_cast<std::int64_t>(bounds.hi) - 1,
        bounds.hi,
        static_cast<std::int64_t>(bounds.lo) - 1,
        static_cast<std::int64_t>(bounds.hi) * 2 - 2,
        static_cast<std::int64_t>(bounds.lo) * 2,
        0,
        q - 1
    };
    for (const std::int64_t value : values) {
        const std::int32_t actual = correct_canonical_once(value, q);
        const std::int32_t expected = canonical_reference(value, q);
        if (actual != expected || !is_canonical(actual, q)) {
            std::cerr << "PRECHECK FAILED at canonical boundary q=" << q
                      << ", value=" << value << ", actual=" << actual
                      << ", expected=" << expected << '\n';
            return false;
        }
    }
    return true;
}

bool verify_centered(
    const std::vector<std::int32_t>& a,
    const std::vector<std::int32_t>& b,
    const std::vector<std::uint32_t>& expected_a,
    const std::vector<std::uint32_t>& expected_b,
    std::int32_t q,
    const char* phase,
    const char* implementation) {
    for (std::size_t i = 0; i < a.size(); ++i) {
        if (!is_canonical(a[i], q) || !is_canonical(b[i], q)
            || canonical_to_nonnegative(a[i], q) != expected_a[i]
            || canonical_to_nonnegative(b[i], q) != expected_b[i]) {
            std::cerr << phase << " FAILED in " << implementation
                      << " for q=" << q << ", index=" << i << '\n';
            return false;
        }
    }
    return true;
}

bool verify_montgomery(
    const std::vector<std::uint32_t>& a,
    const std::vector<std::uint32_t>& b,
    const std::vector<std::uint32_t>& expected_a,
    const std::vector<std::uint32_t>& expected_b,
    const MontgomeryParameters& parameters,
    const char* phase) {
    for (std::size_t i = 0; i < a.size(); ++i) {
        const std::uint32_t actual_a = from_montgomery(a[i], parameters);
        const std::uint32_t actual_b = from_montgomery(b[i], parameters);
        if (actual_a != expected_a[i] || actual_b != expected_b[i]) {
            std::cerr << phase << " FAILED in Montgomery kernel for q="
                      << parameters.q << ", index=" << i << '\n';
            return false;
        }
    }
    return true;
}

void make_montgomery_vectors(
    const std::vector<std::uint32_t>& source_a,
    const std::vector<std::uint32_t>& source_b,
    const std::vector<std::uint32_t>& source_w,
    const MontgomeryParameters& parameters,
    std::vector<std::uint32_t>& a,
    std::vector<std::uint32_t>& b,
    std::vector<std::uint32_t>& w) {
    a.resize(source_a.size());
    b.resize(source_b.size());
    w.resize(source_w.size());
    for (std::size_t i = 0; i < source_a.size(); ++i) {
        a[i] = to_montgomery(source_a[i], parameters);
        b[i] = to_montgomery(source_b[i], parameters);
        w[i] = to_montgomery(source_w[i], parameters);
    }
}

} // namespace

extern "C" BENCH_NOINLINE void canonical_butterfly_runtime_kernel(
    std::int32_t* a,
    std::int32_t* b,
    const std::int32_t* w,
    std::size_t n,
    std::uint64_t rounds,
    std::int32_t q) {
    for (std::uint64_t round = 0; round < rounds; ++round) {
        for (std::size_t i = 0; i < n; ++i) {
            const std::int32_t product = exact_product_centered(b[i], w[i], q);
            const std::int32_t original_a = a[i];
            a[i] = correct_canonical_once(
                static_cast<std::int64_t>(original_a) + product, q);
            b[i] = correct_canonical_once(
                static_cast<std::int64_t>(original_a) - product, q);
        }
    }
    reist_tree_benchmark_sink = static_cast<std::uint32_t>(a[0])
        ^ (static_cast<std::uint64_t>(static_cast<std::uint32_t>(b[n / 2]))
           << 32U);
}

extern "C" BENCH_NOINLINE void montgomery_butterfly_runtime_kernel(
    std::uint32_t* a,
    std::uint32_t* b,
    const std::uint32_t* w,
    std::size_t n,
    std::uint64_t rounds,
    std::uint32_t q,
    std::uint32_t negative_inverse) {
    for (std::uint64_t round = 0; round < rounds; ++round) {
        for (std::size_t i = 0; i < n; ++i) {
            const std::uint32_t product = montgomery_reduce(
                static_cast<std::uint64_t>(b[i]) * w[i],
                q,
                negative_inverse);
            const std::uint32_t original_a = a[i];
            a[i] = add_nonnegative(original_a, product, q);
            b[i] = subtract_nonnegative(original_a, product, q);
        }
    }
    reist_tree_benchmark_sink = a[0]
        ^ (static_cast<std::uint64_t>(b[n / 2]) << 32U);
}

#if REIST_TREE_HAVE_NEON
namespace {

int32x4_t neon_correct_canonical_once(
    int32x4_t sum, std::int32_t q, Bounds bounds) {
    const int32x4_t modulus = vdupq_n_s32(q);
    const uint32x4_t upper = vcgeq_s32(sum, vdupq_n_s32(bounds.hi));
    const uint32x4_t lower = vcltq_s32(sum, vdupq_n_s32(bounds.lo));
    sum = vbslq_s32(upper, vsubq_s32(sum, modulus), sum);
    return vbslq_s32(lower, vaddq_s32(sum, modulus), sum);
}

} // namespace

extern "C" BENCH_NOINLINE void canonical_butterfly_neon_runtime_kernel(
    std::int32_t* a,
    std::int32_t* b,
    const std::int32_t* w,
    std::size_t n,
    std::uint64_t rounds,
    std::int32_t q) {
    const Bounds bounds = canonical_bounds(q);
    const std::size_t vector_end = n & ~std::size_t{3};
    for (std::uint64_t round = 0; round < rounds; ++round) {
        std::size_t i = 0;
        for (; i < vector_end; i += 4) {
            alignas(16) std::int32_t products[4];
            for (std::size_t lane = 0; lane < 4; ++lane) {
                products[lane] = exact_product_centered(
                    b[i + lane], w[i + lane], q);
            }
            const int32x4_t original_a = vld1q_s32(a + i);
            const int32x4_t product = vld1q_s32(products);
            const int32x4_t sum = neon_correct_canonical_once(
                vaddq_s32(original_a, product), q, bounds);
            const int32x4_t difference = neon_correct_canonical_once(
                vsubq_s32(original_a, product), q, bounds);
            vst1q_s32(a + i, sum);
            vst1q_s32(b + i, difference);
        }
        for (; i < n; ++i) {
            const std::int32_t product = exact_product_centered(b[i], w[i], q);
            const std::int32_t original_a = a[i];
            a[i] = correct_canonical_once(
                static_cast<std::int64_t>(original_a) + product, q);
            b[i] = correct_canonical_once(
                static_cast<std::int64_t>(original_a) - product, q);
        }
    }
    reist_tree_benchmark_sink = static_cast<std::uint32_t>(a[0])
        ^ (static_cast<std::uint64_t>(static_cast<std::uint32_t>(b[n / 2]))
           << 32U);
}
#endif

int main(int argc, char** argv) {
    if (argc > 4) {
        std::cerr << "Usage: " << argv[0] << " [N>0] [rounds>0] [q>0]\n";
        return 2;
    }

    std::uint64_t parsed_n = 1024;
    std::uint64_t rounds = 5000;
    std::uint64_t parsed_q = kDefaultQ;
    if (argc >= 2 && !parse_positive_u64(argv[1], parsed_n)) {
        std::cerr << "N must be a positive integer\n";
        return 2;
    }
    if (argc >= 3 && !parse_positive_u64(argv[2], rounds)) {
        std::cerr << "rounds must be a positive integer\n";
        return 2;
    }
    if (argc >= 4 && !parse_positive_u64(argv[3], parsed_q)) {
        std::cerr << "q must be a positive integer\n";
        return 2;
    }
    if (parsed_n > std::numeric_limits<std::size_t>::max()) {
        std::cerr << "N exceeds SIZE_MAX\n";
        return 2;
    }
    if (parsed_q > static_cast<std::uint64_t>(
            std::numeric_limits<std::int32_t>::max())) {
        std::cerr << "q must be in [1, INT32_MAX]\n";
        return 2;
    }
    if (rounds > std::numeric_limits<std::uint64_t>::max() / parsed_n) {
        std::cerr << "N * rounds exceeds UINT64_MAX\n";
        return 2;
    }

    const std::size_t n = static_cast<std::size_t>(parsed_n);
    const std::int32_t q = static_cast<std::int32_t>(parsed_q);
    const bool montgomery_supported = (q & 1) != 0;

    try {
        std::cout << std::fixed << std::setprecision(6)
                  << "Canonical butterfly representation microbenchmark\n"
                  << "q = " << q << ", N = " << n
                  << ", rounds = " << rounds << '\n'
                  << "Work per timed path: " << (parsed_n * rounds)
                  << " butterfly updates across " << n
                  << " independent index streams\n\n"
                  << "Scope: repeated pointwise butterflies with fixed per-index "
                     "twiddles; this is not an end-to-end NTT.\n"
                  << "The centered path uses exact native remainder for the "
                     "multiplication; only add/sub correction is REIST-style.\n"
                  << "Montgomery conversion is outside the timed steady-state "
                     "kernel.\n";
#if REIST_TREE_HAVE_NEON
        std::cout << "NEON scope: explicit SIMD add/sub correction with four "
                     "scalar exact modular multiplications per vector.\n\n";
#else
        std::cout << "NEON: unavailable on this target; SIMD path skipped.\n\n";
#endif

        if (!preflight_bounds(q)) {
            return 1;
        }

        const Workload workload = make_workload(n, q);
        std::vector<std::uint32_t> source_a;
        std::vector<std::uint32_t> source_b;
        std::vector<std::uint32_t> source_w;
        to_nonnegative_vectors(
            workload, q, source_a, source_b, source_w);

        const std::uint64_t preflight_rounds = std::min<std::uint64_t>(rounds, 7);
        auto expected_pre_a = source_a;
        auto expected_pre_b = source_b;
        reference_butterflies(
            expected_pre_a,
            expected_pre_b,
            source_w,
            preflight_rounds,
            static_cast<std::uint32_t>(q));

        auto centered_pre_a = workload.a;
        auto centered_pre_b = workload.b;
        canonical_butterfly_runtime_kernel(
            centered_pre_a.data(), centered_pre_b.data(), workload.w.data(),
            n, preflight_rounds, q);
        if (!verify_centered(
                centered_pre_a, centered_pre_b,
                expected_pre_a, expected_pre_b,
                q, "PRECHECK", "centered scalar kernel")) {
            return 1;
        }

#if REIST_TREE_HAVE_NEON
        auto neon_pre_a = workload.a;
        auto neon_pre_b = workload.b;
        canonical_butterfly_neon_runtime_kernel(
            neon_pre_a.data(), neon_pre_b.data(), workload.w.data(),
            n, preflight_rounds, q);
        if (!verify_centered(
                neon_pre_a, neon_pre_b,
                expected_pre_a, expected_pre_b,
                q, "PRECHECK", "hybrid NEON kernel")) {
            return 1;
        }
#endif

        MontgomeryParameters parameters{};
        std::vector<std::uint32_t> source_mont_a;
        std::vector<std::uint32_t> source_mont_b;
        std::vector<std::uint32_t> source_mont_w;
        if (montgomery_supported) {
            parameters = make_montgomery_parameters(
                static_cast<std::uint32_t>(q));
            make_montgomery_vectors(
                source_a, source_b, source_w, parameters,
                source_mont_a, source_mont_b, source_mont_w);
            auto mont_pre_a = source_mont_a;
            auto mont_pre_b = source_mont_b;
            montgomery_butterfly_runtime_kernel(
                mont_pre_a.data(), mont_pre_b.data(), source_mont_w.data(),
                n, preflight_rounds, parameters.q,
                parameters.negative_inverse);
            if (!verify_montgomery(
                    mont_pre_a, mont_pre_b,
                    expected_pre_a, expected_pre_b,
                    parameters, "PRECHECK")) {
                return 1;
            }
        } else {
            std::cout << "Montgomery: SKIP because q is even. Canonical scalar"
                         " semantics are still verified and timed.\n\n";
        }

        auto expected_a = source_a;
        auto expected_b = source_b;
        reference_butterflies(
            expected_a,
            expected_b,
            source_w,
            rounds,
            static_cast<std::uint32_t>(q));

        auto centered_a = workload.a;
        auto centered_b = workload.b;
        const double centered_seconds = time_call([&] {
            canonical_butterfly_runtime_kernel(
                centered_a.data(), centered_b.data(), workload.w.data(),
                n, rounds, q);
        });
        if (!verify_centered(
                centered_a, centered_b, expected_a, expected_b,
                q, "POSTCHECK", "centered scalar kernel")) {
            return 1;
        }

#if REIST_TREE_HAVE_NEON
        double neon_seconds = 0.0;
        auto neon_a = workload.a;
        auto neon_b = workload.b;
        neon_seconds = time_call([&] {
            canonical_butterfly_neon_runtime_kernel(
                neon_a.data(), neon_b.data(), workload.w.data(),
                n, rounds, q);
        });
        if (!verify_centered(
                neon_a, neon_b, expected_a, expected_b,
                q, "POSTCHECK", "hybrid NEON kernel")) {
            return 1;
        }
#endif

        double montgomery_seconds = 0.0;
        if (montgomery_supported) {
            auto mont_a = source_mont_a;
            auto mont_b = source_mont_b;
            montgomery_seconds = time_call([&] {
                montgomery_butterfly_runtime_kernel(
                    mont_a.data(), mont_b.data(), source_mont_w.data(),
                    n, rounds, parameters.q, parameters.negative_inverse);
            });
            if (!verify_montgomery(
                    mont_a, mont_b, expected_a, expected_b,
                    parameters, "POSTCHECK")) {
                return 1;
            }
        }

        std::cout << "Results (seconds; all completed paths passed elementwise "
                     "postflight)\n"
                  << "  centered scalar, exact multiply : "
                  << centered_seconds << '\n';
#if REIST_TREE_HAVE_NEON
        std::cout << "  hybrid NEON add/sub             : "
                  << neon_seconds << '\n';
        if (neon_seconds > 0.0) {
            std::cout << "  scalar / hybrid NEON            : "
                      << centered_seconds / neon_seconds << "x\n";
        }
#endif
        if (montgomery_supported) {
            std::cout << "  Montgomery steady-state         : "
                      << montgomery_seconds << '\n';
            if (montgomery_seconds > 0.0) {
                std::cout << "  centered scalar / Montgomery    : "
                          << centered_seconds / montgomery_seconds
                          << "x (>1 means Montgomery was faster)\n";
            }
        }
        std::cout << "\nSink: " << reist_tree_benchmark_sink << '\n';
        return 0;
    } catch (const std::exception& error) {
        std::cerr << "ERROR: " << error.what() << '\n';
        return 1;
    }
}
