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

#if defined(__ARM_NEON) || defined(__ARM_NEON__)
#include <arm_neon.h>
#define REIST_HAVE_NEON 1
#else
#define REIST_HAVE_NEON 0
#endif

#if !REIST_HAVE_NEON

int main() {
    std::cerr
        << "bench_tree_reist_neon is an experimental ARM NEON throughput "
           "diagnostic. This build has no NEON target support; no scalar "
           "fallback is reported as a NEON measurement.\n";
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
                "NEON diagnostic modulus must be in [3, 1000000007]");
        }
        reciprocal_ = static_cast<std::uint32_t>(
            (std::uint64_t{1} << 32) /
            static_cast<std::uint32_t>(modulus_));
        if (reciprocal_ > static_cast<std::uint32_t>(
                              std::numeric_limits<std::int32_t>::max())) {
            throw std::logic_error("signed NEON reciprocal is out of range");
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

[[nodiscard]] int32x4_t approximate_quotient_neon(
    int32x4_t values, std::uint32_t reciprocal) noexcept {
    const int32x2_t reciprocal_vector =
        vdup_n_s32(static_cast<std::int32_t>(reciprocal));
    const int64x2_t product_low =
        vmull_s32(vget_low_s32(values), reciprocal_vector);
    const int64x2_t product_high =
        vmull_s32(vget_high_s32(values), reciprocal_vector);

    // Signed narrowing right shift gives floor(product / 2^32), matching the
    // portable scalar quotient for negative as well as positive lanes.
    const int32x2_t quotient_low = vshrn_n_s64(product_low, 32);
    const int32x2_t quotient_high = vshrn_n_s64(product_high, 32);
    return vcombine_s32(quotient_low, quotient_high);
}

[[nodiscard]] int32x4_t reduce_centered_neon(
    int32x4_t values, const Context32& context) noexcept {
    const int32x4_t quotient =
        approximate_quotient_neon(values, context.reciprocal());
    const int32x4_t modulus = vdupq_n_s32(context.modulus());
    int32x4_t remainder =
        vsubq_s32(values, vmulq_s32(quotient, modulus));
    const int32x4_t lower = vdupq_n_s32(context.lower());
    const int32x4_t upper = vdupq_n_s32(context.upper());

    for (int pass = 0; pass < 2; ++pass) {
        const uint32x4_t above = vcgtq_s32(remainder, upper);
        const uint32x4_t below = vcltq_s32(remainder, lower);
        remainder = vsubq_s32(
            remainder,
            vandq_s32(vreinterpretq_s32_u32(above), modulus));
        remainder = vaddq_s32(
            remainder,
            vandq_s32(vreinterpretq_s32_u32(below), modulus));
    }
    return remainder;
}

[[nodiscard]] int32x4_t add_centered_neon(
    int32x4_t a, int32x4_t b, const Context32& context) noexcept {
    int32x4_t sum = vaddq_s32(a, b);
    const int32x4_t modulus = vdupq_n_s32(context.modulus());
    const int32x4_t lower = vdupq_n_s32(context.lower());
    const int32x4_t upper = vdupq_n_s32(context.upper());
    const uint32x4_t above = vcgtq_s32(sum, upper);
    const uint32x4_t below = vcltq_s32(sum, lower);
    sum = vsubq_s32(sum,
                    vandq_s32(vreinterpretq_s32_u32(above), modulus));
    return vaddq_s32(sum,
                     vandq_s32(vreinterpretq_s32_u32(below), modulus));
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

        for (std::size_t index = 0; index < values.size(); index += 4) {
            std::array<std::int32_t, 4> raw_inputs{};
            std::array<std::int32_t, 4> centered_inputs{};
            std::array<std::int32_t, 4> addends{};
            std::array<std::int32_t, 4> reduced{};
            std::array<std::int32_t, 4> sums{};
            for (std::size_t lane = 0; lane < raw_inputs.size(); ++lane) {
                raw_inputs[lane] = values[(index + lane) % values.size()];
                centered_inputs[lane] = static_cast<std::int32_t>(
                    reist::center_remainder(raw_inputs[lane], modulus));
                addends[lane] = static_cast<std::int32_t>(
                    reist::center_remainder(
                        values[(index + lane + 1) % values.size()], modulus));
                const std::int32_t scalar =
                    context.reduce_centered(raw_inputs[lane]);
                if (scalar != centered_inputs[lane]) {
                    return report_failure("scalar reciprocal", modulus,
                                          raw_inputs[lane],
                                          centered_inputs[lane], scalar);
                }
            }

            const int32x4_t raw_vector = vld1q_s32(raw_inputs.data());
            const int32x4_t centered_vector =
                vld1q_s32(centered_inputs.data());
            const int32x4_t addend_vector = vld1q_s32(addends.data());
            vst1q_s32(reduced.data(),
                      reduce_centered_neon(raw_vector, context));
            vst1q_s32(sums.data(),
                      add_centered_neon(centered_vector, addend_vector,
                                        context));

            for (std::size_t lane = 0; lane < raw_inputs.size(); ++lane) {
                if (reduced[lane] != centered_inputs[lane]) {
                    return report_failure("NEON reciprocal", modulus,
                                          raw_inputs[lane],
                                          centered_inputs[lane],
                                          reduced[lane]);
                }
                const std::int64_t expected_sum = reist::add_centered(
                    centered_inputs[lane], addends[lane], modulus);
                const std::int32_t scalar_sum = add_centered_scalar(
                    centered_inputs[lane], addends[lane], context);
                if (scalar_sum != expected_sum ||
                    sums[lane] != expected_sum) {
                    return report_failure("centered NEON addition", modulus,
                                          centered_inputs[lane], expected_sum,
                                          sums[lane]);
                }
            }
        }
    }
    return true;
}

using Lanes = std::array<std::int32_t, 4>;

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

Lanes run_neon_add(const Lanes& initial, std::int32_t step,
                   const Context32& context, std::int64_t chain_updates) {
    int32x4_t states = vld1q_s32(initial.data());
    const int32x4_t step_vector = vdupq_n_s32(step);
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        states = add_centered_neon(states, step_vector, context);
    }
    Lanes result{};
    vst1q_s32(result.data(), states);
    return result;
}

Lanes run_neon_reciprocal(const Lanes& initial, std::int32_t step,
                          const Context32& context,
                          std::int64_t chain_updates) {
    int32x4_t states = vld1q_s32(initial.data());
    const int32x4_t step_vector = vdupq_n_s32(step);
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        states = reduce_centered_neon(
            vaddq_s32(states, step_vector), context);
    }
    Lanes result{};
    vst1q_s32(result.data(), states);
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
    std::int64_t total_lane_updates = 4'000'000;
    try {
        if (argc > 1) {
            total_lane_updates = std::stoll(argv[1]);
        }
    } catch (const std::exception& error) {
        std::cerr << "Invalid update count: " << error.what() << '\n';
        return 1;
    }
    if (total_lane_updates < 4 || total_lane_updates % 4 != 0) {
        std::cerr << "Total lane updates must be a positive multiple of 4.\n";
        return 1;
    }

    try {
        if (!preflight()) {
            return 2;
        }
    } catch (const std::exception& error) {
        std::cerr << "NEON preflight raised an exception: " << error.what()
                  << '\n';
        return 2;
    }

    const std::int64_t chain_updates = total_lane_updates / 4;
    const std::array<std::int32_t, 4> moduli{13, 14, 257, 1'000'000'007};
    std::uint64_t sink = 0;

    std::cout << std::fixed << std::setprecision(6)
              << "Experimental ARM NEON REIST throughput diagnostic\n"
              << "Preflight: passed for scalar and NEON kernels\n"
              << "Canonical interval: [-B/2, B/2)\n"
              << "Each row uses four independent streams with "
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
            Lanes neon_add{};
            Lanes scalar_reciprocal{};
            Lanes neon_reciprocal{};
            const double scalar_add_seconds = measure([&] {
                scalar_add = run_scalar_add(
                    initial, step, context, chain_updates);
            });
            const double neon_add_seconds = measure([&] {
                neon_add = run_neon_add(
                    initial, step, context, chain_updates);
            });
            const double scalar_reciprocal_seconds = measure([&] {
                scalar_reciprocal = run_scalar_reciprocal(
                    initial, step, context, chain_updates);
            });
            const double neon_reciprocal_seconds = measure([&] {
                neon_reciprocal = run_neon_reciprocal(
                    initial, step, context, chain_updates);
            });

            if (scalar_add != neon_add ||
                scalar_reciprocal != neon_reciprocal ||
                scalar_add != scalar_reciprocal) {
                std::cerr << "Postflight mismatch for B=" << modulus << '\n';
                return 3;
            }
            for (std::size_t lane = 0; lane < initial.size(); ++lane) {
                const std::int32_t expected = expected_after_updates(
                    initial[lane], step, chain_updates, context);
                if (neon_add[lane] != expected) {
                    std::cerr << "Postflight reference mismatch for B="
                              << modulus << ", lane=" << lane << '\n';
                    return 3;
                }
            }
            sink ^= hash_lanes(neon_reciprocal);

            std::cout << "\nB=" << modulus
                      << "\n  centered add, scalar 4-stream: "
                      << scalar_add_seconds << " s"
                      << "\n  centered add, NEON 4-stream:   "
                      << neon_add_seconds << " s"
                      << "\n  reciprocal, scalar 4-stream:   "
                      << scalar_reciprocal_seconds << " s"
                      << "\n  reciprocal, NEON 4-stream:     "
                      << neon_reciprocal_seconds << " s"
                      << "\n  add scalar/NEON ratio:          "
                      << scalar_add_seconds / neon_add_seconds << "x"
                      << "\n  reciprocal scalar/NEON ratio:   "
                      << scalar_reciprocal_seconds /
                             neon_reciprocal_seconds
                      << "x\n";
        } catch (const std::exception& error) {
            std::cerr << "NEON benchmark failed for B=" << modulus << ": "
                      << error.what() << '\n';
            return 4;
        }
    }

    std::cout << "\nPostflight: passed\n"
              << "Interpretation: throughput of four independent chains, "
                 "not latency of one chain.\n"
              << "Sink: " << sink << '\n';
    return 0;
}

#endif
