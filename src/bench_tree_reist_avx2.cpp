#include "reist_mod.hpp"

#include <array>
#include <bit>
#include <chrono>
#include <cstdint>
#include <exception>
#include <iomanip>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>

#if defined(__AVX2__)
#include <immintrin.h>
#endif

#if !defined(__AVX2__)

int main() {
    std::cerr
        << "bench_tree_reist_avx2 is an experimental AVX2 throughput "
           "diagnostic; rebuild this source with AVX2 enabled (for example "
           "-mavx2). No scalar result is presented as an AVX2 measurement.\n";
    return 2;
}

#else

namespace {

using Clock = std::chrono::steady_clock;

#if defined(__GNUC__) && !defined(__clang__)
#define REIST_NO_AUTOVECTORIZE __attribute__((optimize("no-tree-vectorize")))
#else
#define REIST_NO_AUTOVECTORIZE
#endif

class Context32 {
public:
    explicit Context32(std::int32_t modulus) : modulus_(modulus) {
        if (modulus_ < 3 || modulus_ > 1'000'000'007) {
            throw std::invalid_argument(
                "AVX2 diagnostic modulus must be in [3, 1000000007]");
        }
        reciprocal_ = static_cast<std::uint32_t>(
            (std::uint64_t{1} << 32) /
            static_cast<std::uint32_t>(modulus_));
        if (reciprocal_ > static_cast<std::uint32_t>(
                              std::numeric_limits<std::int32_t>::max())) {
            throw std::logic_error("signed AVX2 reciprocal is out of range");
        }
    }

    [[nodiscard]] std::int32_t modulus() const noexcept { return modulus_; }
    [[nodiscard]] std::int32_t lower() const noexcept {
        return -(modulus_ / 2);
    }
    [[nodiscard]] std::int32_t upper() const noexcept {
        return (modulus_ - 1) / 2;
    }
    [[nodiscard]] std::uint32_t reciprocal() const noexcept {
        return reciprocal_;
    }

    [[nodiscard]] std::int32_t reduce_centered(
        std::int32_t value) const noexcept {
        const std::int64_t product =
            static_cast<std::int64_t>(value) * reciprocal_;
        constexpr std::int64_t radix = std::int64_t{1} << 32;
        const std::int64_t quotient =
            product >= 0
                ? product / radix
                : -(((-product) + radix - 1) / radix);
        std::int64_t remainder =
            static_cast<std::int64_t>(value) - quotient * modulus_;

        for (int pass = 0; pass < 2; ++pass) {
            if (remainder > upper()) {
                remainder -= modulus_;
            } else if (remainder < lower()) {
                remainder += modulus_;
            }
        }
        return static_cast<std::int32_t>(remainder);
    }

private:
    std::int32_t modulus_;
    std::uint32_t reciprocal_ = 0;
};

[[nodiscard]] std::int32_t add_centered_scalar(
    std::int32_t a, std::int32_t b, const Context32& context) noexcept {
    std::int64_t sum = static_cast<std::int64_t>(a) + b;
    if (sum > context.upper()) {
        sum -= context.modulus();
    } else if (sum < context.lower()) {
        sum += context.modulus();
    }
    return static_cast<std::int32_t>(sum);
}

[[nodiscard]] __m256i approximate_quotient_avx2(
    __m256i values, std::uint32_t reciprocal) noexcept {
    const __m256i reciprocal_vector =
        _mm256_set1_epi32(static_cast<std::int32_t>(reciprocal));
    const __m256i product_even =
        _mm256_mul_epi32(values, reciprocal_vector);
    const __m256i values_odd = _mm256_srli_epi64(values, 32);
    const __m256i product_odd =
        _mm256_mul_epi32(values_odd, reciprocal_vector);

    // The high word has the bit pattern of floor(product / 2^32), also for
    // negative signed products.  Packing restores lanes 0..7 in order.
    const __m256i quotient_even_64 = _mm256_srli_epi64(product_even, 32);
    const __m256i quotient_odd_64 = _mm256_srli_epi64(product_odd, 32);
    const __m256i quotient_even_32 = _mm256_shuffle_epi32(
        quotient_even_64, _MM_SHUFFLE(2, 0, 2, 0));
    const __m256i quotient_odd_32 = _mm256_shuffle_epi32(
        quotient_odd_64, _MM_SHUFFLE(2, 0, 2, 0));
    return _mm256_unpacklo_epi32(quotient_even_32, quotient_odd_32);
}

[[nodiscard]] __m256i reduce_centered_avx2(
    __m256i values, const Context32& context) noexcept {
    const __m256i quotient =
        approximate_quotient_avx2(values, context.reciprocal());
    const __m256i modulus = _mm256_set1_epi32(context.modulus());
    __m256i remainder = _mm256_sub_epi32(
        values, _mm256_mullo_epi32(quotient, modulus));
    const __m256i lower = _mm256_set1_epi32(context.lower());
    const __m256i upper = _mm256_set1_epi32(context.upper());

    for (int pass = 0; pass < 2; ++pass) {
        const __m256i above = _mm256_cmpgt_epi32(remainder, upper);
        const __m256i below = _mm256_cmpgt_epi32(lower, remainder);
        remainder = _mm256_sub_epi32(
            remainder, _mm256_and_si256(above, modulus));
        remainder = _mm256_add_epi32(
            remainder, _mm256_and_si256(below, modulus));
    }
    return remainder;
}

[[nodiscard]] __m256i add_centered_avx2(
    __m256i a, __m256i b, const Context32& context) noexcept {
    __m256i sum = _mm256_add_epi32(a, b);
    const __m256i modulus = _mm256_set1_epi32(context.modulus());
    const __m256i lower = _mm256_set1_epi32(context.lower());
    const __m256i upper = _mm256_set1_epi32(context.upper());
    const __m256i above = _mm256_cmpgt_epi32(sum, upper);
    const __m256i below = _mm256_cmpgt_epi32(lower, sum);
    sum = _mm256_sub_epi32(sum, _mm256_and_si256(above, modulus));
    return _mm256_add_epi32(sum, _mm256_and_si256(below, modulus));
}

bool report_failure(const char* operation, std::int32_t modulus,
                    std::int32_t value, std::int64_t expected,
                    std::int32_t actual) {
    std::cerr << "Preflight failed for " << operation << ": B=" << modulus
              << ", value=" << value << ", expected=" << expected
              << ", actual=" << actual << '\n';
    return false;
}

bool preflight() {
    const std::array<std::int32_t, 7> moduli{
        3, 4, 13, 14, 257, 1'024, 1'000'000'007};
    for (const std::int32_t modulus : moduli) {
        const Context32 context(modulus);
        std::vector<std::int32_t> values{
            std::numeric_limits<std::int32_t>::min(),
            std::numeric_limits<std::int32_t>::min() + 1,
            static_cast<std::int32_t>(-2LL * modulus),
            static_cast<std::int32_t>(-static_cast<std::int64_t>(modulus) - 1),
            -modulus,
            static_cast<std::int32_t>(context.lower() - 1),
            context.lower(),
            -1,
            0,
            1,
            context.upper(),
            static_cast<std::int32_t>(context.upper() + 1),
            modulus,
            std::numeric_limits<std::int32_t>::max() - 1,
            std::numeric_limits<std::int32_t>::max(),
        };
        std::uint64_t random = UINT64_C(0xA0761D6478BD642F) ^
                               static_cast<std::uint32_t>(modulus);
        for (int iteration = 0; iteration < 4'096; ++iteration) {
            random = random * UINT64_C(6364136223846793005) +
                     UINT64_C(1442695040888963407);
            values.push_back(std::bit_cast<std::int32_t>(
                static_cast<std::uint32_t>(random)));
        }

        for (std::size_t index = 0; index < values.size(); index += 8) {
            std::array<std::int32_t, 8> raw_inputs{};
            std::array<std::int32_t, 8> centered_inputs{};
            std::array<std::int32_t, 8> addends{};
            std::array<std::int32_t, 8> reduced{};
            std::array<std::int32_t, 8> sums{};
            for (std::size_t lane = 0; lane < raw_inputs.size(); ++lane) {
                raw_inputs[lane] = values[(index + lane) % values.size()];
                addends[lane] = static_cast<std::int32_t>(
                    reist::center_remainder(
                        values[(index + lane + 1) % values.size()], modulus));
                const std::int64_t expected = reist::center_remainder(
                    static_cast<std::int64_t>(raw_inputs[lane]), modulus);
                const std::int32_t scalar =
                    context.reduce_centered(raw_inputs[lane]);
                if (scalar != expected) {
                    return report_failure("scalar reciprocal", modulus,
                                          raw_inputs[lane], expected, scalar);
                }
                centered_inputs[lane] = static_cast<std::int32_t>(expected);
            }

            const __m256i raw_input_vector = _mm256_loadu_si256(
                reinterpret_cast<const __m256i*>(raw_inputs.data()));
            const __m256i centered_input_vector = _mm256_loadu_si256(
                reinterpret_cast<const __m256i*>(centered_inputs.data()));
            const __m256i addend_vector = _mm256_loadu_si256(
                reinterpret_cast<const __m256i*>(addends.data()));
            _mm256_storeu_si256(
                reinterpret_cast<__m256i*>(reduced.data()),
                reduce_centered_avx2(raw_input_vector, context));
            _mm256_storeu_si256(
                reinterpret_cast<__m256i*>(sums.data()),
                add_centered_avx2(centered_input_vector, addend_vector,
                                  context));

            for (std::size_t lane = 0; lane < raw_inputs.size(); ++lane) {
                if (reduced[lane] != centered_inputs[lane]) {
                    return report_failure("AVX2 reciprocal", modulus,
                                          raw_inputs[lane],
                                          centered_inputs[lane], reduced[lane]);
                }
                const std::int64_t expected_sum = reist::add_centered(
                    centered_inputs[lane], addends[lane], modulus);
                const std::int32_t scalar_sum = add_centered_scalar(
                    centered_inputs[lane], addends[lane], context);
                if (scalar_sum != expected_sum ||
                    sums[lane] != expected_sum) {
                    return report_failure("centered AVX2 addition", modulus,
                                          centered_inputs[lane], expected_sum,
                                          sums[lane]);
                }
            }
        }
    }
    return true;
}

using Lanes = std::array<std::int32_t, 8>;

REIST_NO_AUTOVECTORIZE
Lanes run_scalar_add(Lanes states, std::int32_t step,
                     const Context32& context, std::int64_t chain_updates) {
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        for (auto& state : states) {
            state = add_centered_scalar(state, step, context);
        }
    }
    return states;
}

REIST_NO_AUTOVECTORIZE
Lanes run_scalar_reciprocal(Lanes states, std::int32_t step,
                            const Context32& context,
                            std::int64_t chain_updates) {
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        for (auto& state : states) {
            const std::int64_t input =
                static_cast<std::int64_t>(state) + step;
            state = context.reduce_centered(static_cast<std::int32_t>(input));
        }
    }
    return states;
}

Lanes run_avx2_add(const Lanes& initial, std::int32_t step,
                   const Context32& context, std::int64_t chain_updates) {
    __m256i states = _mm256_loadu_si256(
        reinterpret_cast<const __m256i*>(initial.data()));
    const __m256i step_vector = _mm256_set1_epi32(step);
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        states = add_centered_avx2(states, step_vector, context);
    }
    Lanes result{};
    _mm256_storeu_si256(reinterpret_cast<__m256i*>(result.data()), states);
    return result;
}

Lanes run_avx2_reciprocal(const Lanes& initial, std::int32_t step,
                          const Context32& context,
                          std::int64_t chain_updates) {
    __m256i states = _mm256_loadu_si256(
        reinterpret_cast<const __m256i*>(initial.data()));
    const __m256i step_vector = _mm256_set1_epi32(step);
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        states = reduce_centered_avx2(
            _mm256_add_epi32(states, step_vector), context);
    }
    Lanes result{};
    _mm256_storeu_si256(reinterpret_cast<__m256i*>(result.data()), states);
    return result;
}

template <class Function>
double measure(Function&& function) {
    const auto start = Clock::now();
    function();
    const auto stop = Clock::now();
    return std::chrono::duration<double>(stop - start).count();
}

std::uint64_t hash_lanes(const Lanes& lanes) noexcept {
    std::uint64_t hash = UINT64_C(1469598103934665603);
    for (const std::int32_t value : lanes) {
        hash ^= static_cast<std::uint32_t>(value);
        hash *= UINT64_C(1099511628211);
    }
    return hash;
}

std::int32_t expected_after_updates(std::int32_t initial,
                                    std::int32_t step,
                                    std::int64_t updates,
                                    const Context32& context) {
    const std::uint64_t modulus =
        static_cast<std::uint32_t>(context.modulus());
    const std::uint64_t initial_nonnegative =
        initial < 0
            ? static_cast<std::uint64_t>(
                  static_cast<std::int64_t>(initial) + context.modulus())
            : static_cast<std::uint32_t>(initial);
    const std::uint64_t step_nonnegative =
        step < 0
            ? static_cast<std::uint64_t>(
                  static_cast<std::int64_t>(step) + context.modulus())
            : static_cast<std::uint32_t>(step);
    const std::uint64_t update_factor =
        static_cast<std::uint64_t>(updates) % modulus;
    const std::uint64_t nonnegative =
        (initial_nonnegative + update_factor * step_nonnegative) % modulus;
    return static_cast<std::int32_t>(reist::center_remainder(
        static_cast<std::int64_t>(nonnegative), context.modulus()));
}

} // namespace

int main(int argc, char** argv) {
#if defined(__GNUC__) &&                                                   \
    (defined(__x86_64__) || defined(__i386__))
    if (!__builtin_cpu_supports("avx2")) {
        std::cerr << "This AVX2 binary cannot run on the current CPU.\n";
        return 2;
    }
#endif

    std::int64_t total_lane_updates = 8'000'000;
    try {
        if (argc > 1) {
            total_lane_updates = std::stoll(argv[1]);
        }
    } catch (const std::exception& error) {
        std::cerr << "Invalid update count: " << error.what() << '\n';
        return 1;
    }
    if (total_lane_updates < 8 || total_lane_updates % 8 != 0) {
        std::cerr << "Total lane updates must be a positive multiple of 8.\n";
        return 1;
    }

    try {
        if (!preflight()) {
            return 2;
        }
    } catch (const std::exception& error) {
        std::cerr << "AVX2 preflight raised an exception: " << error.what()
                  << '\n';
        return 2;
    }

    const std::int64_t chain_updates = total_lane_updates / 8;
    const std::array<std::int32_t, 4> moduli{13, 14, 257, 1'000'000'007};
    std::uint64_t sink = 0;

    std::cout << std::fixed << std::setprecision(6)
              << "Experimental AVX2 REIST throughput diagnostic\n"
              << "Preflight: passed for scalar and AVX2 kernels\n"
              << "Canonical interval: [-B/2, B/2)\n"
              << "Each row uses eight independent streams with "
              << chain_updates << " dependent updates per lane ("
              << total_lane_updates << " total lane updates).\n";

    for (const std::int32_t modulus : moduli) {
        try {
            const Context32 context(modulus);
            Lanes initial{};
            for (std::size_t lane = 0; lane < initial.size(); ++lane) {
                initial[lane] = static_cast<std::int32_t>(
                    reist::center_remainder(
                        1'234'567 + static_cast<std::int64_t>(lane) * 97,
                        modulus));
            }
            const std::int32_t step = static_cast<std::int32_t>(
                reist::center_remainder(891'011, modulus));

            Lanes scalar_add{};
            Lanes avx2_add{};
            Lanes scalar_reciprocal{};
            Lanes avx2_reciprocal{};
            const double scalar_add_seconds = measure([&] {
                scalar_add = run_scalar_add(
                    initial, step, context, chain_updates);
            });
            const double avx2_add_seconds = measure([&] {
                avx2_add = run_avx2_add(
                    initial, step, context, chain_updates);
            });
            const double scalar_reciprocal_seconds = measure([&] {
                scalar_reciprocal = run_scalar_reciprocal(
                    initial, step, context, chain_updates);
            });
            const double avx2_reciprocal_seconds = measure([&] {
                avx2_reciprocal = run_avx2_reciprocal(
                    initial, step, context, chain_updates);
            });

            if (scalar_add != avx2_add ||
                scalar_reciprocal != avx2_reciprocal ||
                scalar_add != scalar_reciprocal) {
                std::cerr << "Postflight mismatch for B=" << modulus << '\n';
                return 3;
            }
            for (std::size_t lane = 0; lane < initial.size(); ++lane) {
                const std::int32_t expected = expected_after_updates(
                    initial[lane], step, chain_updates, context);
                if (avx2_add[lane] != expected) {
                    std::cerr << "Postflight reference mismatch for B="
                              << modulus << ", lane=" << lane << '\n';
                    return 3;
                }
            }
            sink ^= hash_lanes(avx2_reciprocal);

            std::cout << "\nB=" << modulus
                      << "\n  centered add, scalar 8-stream: "
                      << scalar_add_seconds << " s"
                      << "\n  centered add, AVX2 8-stream:  "
                      << avx2_add_seconds << " s"
                      << "\n  reciprocal, scalar 8-stream:  "
                      << scalar_reciprocal_seconds << " s"
                      << "\n  reciprocal, AVX2 8-stream:   "
                      << avx2_reciprocal_seconds << " s"
                      << "\n  add scalar/AVX2 ratio:        "
                      << scalar_add_seconds / avx2_add_seconds << "x"
                      << "\n  reciprocal scalar/AVX2 ratio: "
                      << scalar_reciprocal_seconds /
                             avx2_reciprocal_seconds
                      << "x\n";
        } catch (const std::exception& error) {
            std::cerr << "AVX2 benchmark failed for B=" << modulus << ": "
                      << error.what() << '\n';
            return 4;
        }
    }

    std::cout << "\nPostflight: passed\n"
              << "Interpretation: throughput of eight independent chains, "
                 "not latency of one chain.\n"
              << "Sink: " << sink << '\n';
    return 0;
}

#endif
