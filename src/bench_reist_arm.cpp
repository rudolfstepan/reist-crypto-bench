#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <iomanip>
#include <iostream>
#include <limits>
#include <random>
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
#define REIST_ARM_HAVE_NEON 1
#else
#define REIST_ARM_HAVE_NEON 0
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
volatile std::uint64_t reist_arm_benchmark_sink = 0;
}

namespace {

struct Bounds {
    std::int32_t lo;
    std::int32_t hi; // exclusive
};

struct Workload {
    std::vector<std::int32_t> a;
    std::vector<std::int32_t> b;
    std::size_t upper_corrections = 0;
    std::size_t lower_corrections = 0;
    std::size_t no_corrections = 0;
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

std::uint64_t output_token(const std::int32_t* output, std::size_t n) {
    return static_cast<std::uint32_t>(output[0])
        ^ (static_cast<std::uint64_t>(
               static_cast<std::uint32_t>(output[n / 2]))
           << 32U);
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

    const Bounds bounds = canonical_bounds(q);
    std::mt19937 generator(0xa4412345U ^ static_cast<std::uint32_t>(q));
    std::uniform_int_distribution<std::int32_t> distribution(
        bounds.lo, static_cast<std::int32_t>(bounds.hi - 1));
    for (std::size_t i = 0; i < n; ++i) {
        workload.a[i] = distribution(generator);
        workload.b[i] = distribution(generator);
    }

    const std::int32_t lower = bounds.lo;
    const std::int32_t upper = static_cast<std::int32_t>(bounds.hi - 1);
    const std::int32_t one = canonical_reference(1, q);
    const std::int32_t minus_one = canonical_reference(-1, q);
    const std::array<std::array<std::int32_t, 2>, 8> boundaries = {{
        {lower, 0},
        {upper, 0},
        {upper, one},
        {lower, minus_one},
        {upper, upper},
        {lower, lower},
        {lower, upper},
        {upper, lower}
    }};
    for (std::size_t i = 0; i < std::min(n, boundaries.size()); ++i) {
        workload.a[i] = boundaries[i][0];
        workload.b[i] = boundaries[i][1];
    }

    for (std::size_t i = 0; i < n; ++i) {
        const std::int64_t sum =
            static_cast<std::int64_t>(workload.a[i]) + workload.b[i];
        if (sum >= bounds.hi) {
            ++workload.upper_corrections;
        } else if (sum < bounds.lo) {
            ++workload.lower_corrections;
        } else {
            ++workload.no_corrections;
        }
    }
    return workload;
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

bool verify_output(
    const Workload& workload,
    const std::vector<std::int32_t>& output,
    std::int32_t q,
    const char* phase,
    const char* implementation) {
    for (std::size_t i = 0; i < output.size(); ++i) {
        const std::int32_t expected = canonical_reference(
            static_cast<std::int64_t>(workload.a[i]) + workload.b[i], q);
        if (output[i] != expected || !is_canonical(output[i], q)) {
            std::cerr << phase << " FAILED in " << implementation
                      << " for q=" << q << ", index=" << i
                      << ", actual=" << output[i]
                      << ", expected=" << expected << '\n';
            return false;
        }
    }
    return true;
}

} // namespace

extern "C" BENCH_NOINLINE std::uint32_t classic_poly_scalar(
    const std::int32_t* a,
    const std::int32_t* b,
    std::int32_t* output,
    std::size_t n,
    std::int32_t q,
    std::uint64_t repetitions) {
    const Bounds bounds = canonical_bounds(q);
    for (std::uint64_t repetition = 0;
         repetition < repetitions;
         ++repetition) {
        for (std::size_t i = 0; i < n; ++i) {
            const std::int64_t sum =
                static_cast<std::int64_t>(a[i]) + b[i];
            std::int64_t residue = sum % q;
            if (residue < 0) {
                residue += q;
            }
            if (residue >= bounds.hi) {
                residue -= q;
            }
            output[i] = static_cast<std::int32_t>(residue);
        }
    }
    const std::uint64_t token = output_token(output, n);
    reist_arm_benchmark_sink = token;
    return static_cast<std::uint32_t>(token);
}

extern "C" BENCH_NOINLINE std::uint32_t reist_poly_scalar(
    const std::int32_t* a,
    const std::int32_t* b,
    std::int32_t* output,
    std::size_t n,
    std::int32_t q,
    std::uint64_t repetitions) {
    const Bounds bounds = canonical_bounds(q);
    for (std::uint64_t repetition = 0;
         repetition < repetitions;
         ++repetition) {
        for (std::size_t i = 0; i < n; ++i) {
            std::int64_t sum = static_cast<std::int64_t>(a[i]) + b[i];
            if (sum >= bounds.hi) {
                sum -= q;
            } else if (sum < bounds.lo) {
                sum += q;
            }
            output[i] = static_cast<std::int32_t>(sum);
        }
    }
    const std::uint64_t token = output_token(output, n);
    reist_arm_benchmark_sink = token;
    return static_cast<std::uint32_t>(token);
}

#if REIST_ARM_HAVE_NEON
extern "C" BENCH_NOINLINE std::uint32_t reist_poly_neon(
    const std::int32_t* a,
    const std::int32_t* b,
    std::int32_t* output,
    std::size_t n,
    std::int32_t q,
    std::uint64_t repetitions) {
    const Bounds bounds = canonical_bounds(q);
    const int32x4_t modulus = vdupq_n_s32(q);
    const int32x4_t lower_bound = vdupq_n_s32(bounds.lo);
    const int32x4_t upper_bound = vdupq_n_s32(bounds.hi);
    const std::size_t vector_end = n & ~std::size_t{3};

    for (std::uint64_t repetition = 0;
         repetition < repetitions;
         ++repetition) {
        std::size_t i = 0;
        for (; i < vector_end; i += 4) {
            int32x4_t sum = vaddq_s32(vld1q_s32(a + i), vld1q_s32(b + i));
            const uint32x4_t upper = vcgeq_s32(sum, upper_bound);
            const uint32x4_t lower = vcltq_s32(sum, lower_bound);
            sum = vbslq_s32(upper, vsubq_s32(sum, modulus), sum);
            sum = vbslq_s32(lower, vaddq_s32(sum, modulus), sum);
            vst1q_s32(output + i, sum);
        }
        for (; i < n; ++i) {
            output[i] = correct_canonical_once(
                static_cast<std::int64_t>(a[i]) + b[i], q);
        }
    }
    const std::uint64_t token = output_token(output, n);
    reist_arm_benchmark_sink = token;
    return static_cast<std::uint32_t>(token);
}
#endif

namespace {

std::uint64_t calibrate_shared_repetitions(
    const Workload& workload,
    std::vector<std::int32_t>& scratch,
    std::int32_t q,
    double target_seconds) {
    const std::uint64_t max_for_operation_count =
        std::numeric_limits<std::uint64_t>::max() / workload.a.size();
    const std::uint64_t maximum = std::min<std::uint64_t>(
        max_for_operation_count, std::uint64_t{1} << 32U);
    std::uint64_t repetitions = 1;
    while (true) {
        const double elapsed = time_call([&] {
            reist_poly_scalar(
                workload.a.data(), workload.b.data(), scratch.data(),
                workload.a.size(), q, repetitions);
        });
        if (elapsed >= target_seconds || repetitions >= maximum) {
            return repetitions;
        }
        repetitions = repetitions > maximum / 2
            ? maximum
            : repetitions * 2;
    }
}

bool run_case(
    std::size_t n,
    std::int32_t q,
    std::uint64_t requested_repetitions) {
    if (!preflight_bounds(q)) {
        return false;
    }

    const Workload workload = make_workload(n, q);
    std::vector<std::int32_t> classic_output(n);
    std::vector<std::int32_t> scalar_output(n);
#if REIST_ARM_HAVE_NEON
    std::vector<std::int32_t> neon_output(n);
#endif

    classic_poly_scalar(
        workload.a.data(), workload.b.data(), classic_output.data(), n, q, 1);
    reist_poly_scalar(
        workload.a.data(), workload.b.data(), scalar_output.data(), n, q, 1);
    if (!verify_output(workload, classic_output, q, "PRECHECK", "classic scalar")
        || !verify_output(
            workload, scalar_output, q, "PRECHECK", "REIST scalar")) {
        return false;
    }
#if REIST_ARM_HAVE_NEON
    reist_poly_neon(
        workload.a.data(), workload.b.data(), neon_output.data(), n, q, 1);
    if (!verify_output(workload, neon_output, q, "PRECHECK", "REIST NEON")) {
        return false;
    }
#endif

    const std::uint64_t repetitions = requested_repetitions != 0
        ? requested_repetitions
        : calibrate_shared_repetitions(workload, scalar_output, q, 0.02);
    if (repetitions > std::numeric_limits<std::uint64_t>::max() / n) {
        std::cerr << "repetitions * N exceeds UINT64_MAX for q=" << q << '\n';
        return false;
    }

    const double classic_seconds = time_call([&] {
        classic_poly_scalar(
            workload.a.data(), workload.b.data(), classic_output.data(),
            n, q, repetitions);
    });
    const double scalar_seconds = time_call([&] {
        reist_poly_scalar(
            workload.a.data(), workload.b.data(), scalar_output.data(),
            n, q, repetitions);
    });
#if REIST_ARM_HAVE_NEON
    const double neon_seconds = time_call([&] {
        reist_poly_neon(
            workload.a.data(), workload.b.data(), neon_output.data(),
            n, q, repetitions);
    });
#endif

    if (!verify_output(workload, classic_output, q, "POSTCHECK", "classic scalar")
        || !verify_output(
            workload, scalar_output, q, "POSTCHECK", "REIST scalar")) {
        return false;
    }
#if REIST_ARM_HAVE_NEON
    if (!verify_output(workload, neon_output, q, "POSTCHECK", "REIST NEON")) {
        return false;
    }
#endif

    const std::size_t total = workload.upper_corrections
        + workload.lower_corrections + workload.no_corrections;
    const auto percent = [total](std::size_t count) {
        return 100.0 * static_cast<double>(count)
            / static_cast<double>(total);
    };
    const std::uint64_t operations = repetitions * n;

    std::cout << "q = " << q << "\n"
              << "  canonical interval: [" << canonical_bounds(q).lo
              << ", " << canonical_bounds(q).hi << ")\n"
              << "  repetitions shared by every timed path: "
              << repetitions << " (" << operations << " additions)\n"
              << "  correction mix per pass: upper "
              << workload.upper_corrections << " ("
              << percent(workload.upper_corrections) << "%), lower "
              << workload.lower_corrections << " ("
              << percent(workload.lower_corrections) << "%), none "
              << workload.no_corrections << " ("
              << percent(workload.no_corrections) << "%)\n"
              << "  classic canonical scalar : "
              << classic_seconds << " s\n"
              << "  REIST canonical scalar   : "
              << scalar_seconds << " s\n";
    if (scalar_seconds > 0.0) {
        std::cout << "  classic / REIST scalar   : "
                  << classic_seconds / scalar_seconds << "x\n";
    }
#if REIST_ARM_HAVE_NEON
    std::cout << "  REIST explicit NEON      : "
              << neon_seconds << " s\n";
    if (neon_seconds > 0.0) {
        std::cout << "  classic / REIST NEON     : "
                  << classic_seconds / neon_seconds << "x\n"
                  << "  scalar / explicit NEON   : "
                  << scalar_seconds / neon_seconds << "x\n";
    }
#endif
    std::cout << "  elementwise pre/postflight: PASS\n\n";
    return true;
}

} // namespace

int main(int argc, char** argv) {
    if (argc > 4) {
        std::cerr << "Usage: " << argv[0]
                  << " [N>=8] [q in 1..INT32_MAX] [repetitions>0]\n";
        return 2;
    }

    std::uint64_t parsed_n = 1024;
    std::uint64_t parsed_q = 0;
    std::uint64_t repetitions = 0;
    if (argc >= 2 && !parse_positive_u64(argv[1], parsed_n)) {
        std::cerr << "N must be a positive integer\n";
        return 2;
    }
    if (argc >= 3 && !parse_positive_u64(argv[2], parsed_q)) {
        std::cerr << "q must be a positive integer\n";
        return 2;
    }
    if (argc >= 4 && !parse_positive_u64(argv[3], repetitions)) {
        std::cerr << "repetitions must be a positive integer\n";
        return 2;
    }
    if (parsed_n < 8
        || parsed_n > std::numeric_limits<std::size_t>::max()) {
        std::cerr << "N must be in [8, SIZE_MAX]\n";
        return 2;
    }
    if (argc >= 3
        && parsed_q > static_cast<std::uint64_t>(
            std::numeric_limits<std::int32_t>::max())) {
        std::cerr << "q must be in [1, INT32_MAX]\n";
        return 2;
    }
    if (repetitions != 0
        && repetitions > std::numeric_limits<std::uint64_t>::max() / parsed_n) {
        std::cerr << "repetitions * N exceeds UINT64_MAX\n";
        return 2;
    }

    const std::size_t n = static_cast<std::size_t>(parsed_n);
    std::vector<std::int32_t> moduli;
    if (argc >= 3) {
        moduli.push_back(static_cast<std::int32_t>(parsed_q));
    } else {
        moduli = {
            1'000'000,
            1'000'003,
            10'000'019,
            100'000'007,
            1'000'000'007
        };
    }

    try {
        std::cout << std::fixed << std::setprecision(6)
                  << "========================================\n"
                  << "Canonical modular-add benchmark: scalar vs ARM NEON\n"
                  << "========================================\n"
                  << "N = " << n << " coefficients\n"
                  << "Inputs and outputs use [-floor(q/2), ceil(q/2)).\n"
                  << "Every timing for one q uses identical data, operation "
                     "counts, and a shared repetition count.\n";
#if REIST_ARM_HAVE_NEON
        std::cout << "NEON: explicit int32x4 implementation enabled.\n\n";
#else
        std::cout << "NEON: unavailable on this target; SIMD timing is skipped "
                     "without a scalar fallback label.\n\n";
#endif

        for (const std::int32_t q : moduli) {
            if (!run_case(n, q, repetitions)) {
                return 1;
            }
        }
        std::cout << "Sink: " << reist_arm_benchmark_sink << '\n';
        return 0;
    } catch (const std::exception& error) {
        std::cerr << "ERROR: " << error.what() << '\n';
        return 1;
    }
}
