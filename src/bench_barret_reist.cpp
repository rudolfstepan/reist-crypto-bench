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

#if defined(__x86_64__) || defined(_M_X64)
#include <immintrin.h>
#endif

#if defined(__AVX2__)
#define HAVE_AVX2 1
#else
#define HAVE_AVX2 0
#endif

using Clock = std::chrono::high_resolution_clock;
static volatile std::int64_t g_sink = 0;

#if !defined(__SIZEOF_INT128__)

int main() {
    std::cerr
        << "bench_barret_reist requires a compiler with signed and unsigned "
           "128-bit integer support for its independent reference and "
           "64-bit Barrett preflight.\n";
    return 2;
}

#else

using uint128 = __uint128_t;
using int128 = __int128_t;

namespace {

std::int64_t reference_center(int128 value, std::int64_t modulus) {
    int128 remainder = value % modulus;
    if (remainder < 0) {
        remainder += modulus;
    }
    const std::int64_t upper_half_begin =
        (modulus / 2) + (modulus % 2);
    if (remainder >= upper_half_begin) {
        remainder -= modulus;
    }
    return static_cast<std::int64_t>(remainder);
}

std::uint64_t magnitude(std::int64_t value) noexcept {
    if (value >= 0) {
        return static_cast<std::uint64_t>(value);
    }
    // Unlike -value, this is defined for INT64_MIN.
    return static_cast<std::uint64_t>(-(value + 1)) + 1U;
}

class BarrettContext64 {
public:
    explicit BarrettContext64(std::int64_t modulus) : modulus_(modulus) {
        if (modulus_ < 3) {
            throw std::invalid_argument("Barrett modulus must be at least 3");
        }
        reciprocal_ = static_cast<std::uint64_t>(
            (static_cast<uint128>(1) << 64) /
            static_cast<std::uint64_t>(modulus_));
    }

    [[nodiscard]] std::int64_t reduce_centered(std::int64_t value) const {
        const bool negative = value < 0;
        const std::uint64_t absolute = magnitude(value);
        const std::uint64_t quotient = static_cast<std::uint64_t>(
            (static_cast<uint128>(absolute) * reciprocal_) >> 64);
        uint128 remainder = static_cast<uint128>(absolute) -
                            static_cast<uint128>(quotient) *
                                static_cast<uint128>(static_cast<std::uint64_t>(modulus_));

        // For |value| <= 2^63 and mu=floor(2^64/B), the quotient estimate is
        // at most one too small.
        if (remainder >= static_cast<std::uint64_t>(modulus_)) {
            remainder -= static_cast<std::uint64_t>(modulus_);
        }
        if (remainder >= static_cast<std::uint64_t>(modulus_)) {
            throw std::logic_error("64-bit Barrett correction bound violated");
        }

        const auto unsigned_remainder =
            static_cast<std::int64_t>(remainder);
        const std::int64_t signed_remainder =
            negative && unsigned_remainder != 0 ? -unsigned_remainder
                                                : unsigned_remainder;
        return reist::center_remainder(signed_remainder, modulus_);
    }

private:
    std::int64_t modulus_ = 0;
    std::uint64_t reciprocal_ = 0;
};

class BarrettContext32 {
public:
    explicit BarrettContext32(std::int32_t modulus) : modulus_(modulus) {
        if (modulus_ < 3) {
            throw std::invalid_argument(
                "32-bit Barrett modulus must be at least 3");
        }
        reciprocal_ = static_cast<std::uint32_t>(
            (std::uint64_t{1} << 32) /
            static_cast<std::uint32_t>(modulus_));
        if (reciprocal_ >
            static_cast<std::uint32_t>(std::numeric_limits<std::int32_t>::max())) {
            throw std::invalid_argument(
                "AVX2 signed reciprocal requires modulus >= 3");
        }
    }

    [[nodiscard]] std::int32_t modulus() const noexcept { return modulus_; }
    [[nodiscard]] std::uint32_t reciprocal() const noexcept {
        return reciprocal_;
    }

    [[nodiscard]] std::int32_t reduce_centered(std::int32_t value) const {
        const std::int64_t product =
            static_cast<std::int64_t>(value) * reciprocal_;
        constexpr std::int64_t radix = std::int64_t{1} << 32;

        // Compute floor(product / 2^32) without relying on the
        // implementation-defined right shift of a negative signed integer.
        const std::int64_t quotient =
            product >= 0
                ? product / radix
                : -(((-product) + radix - 1) / radix);
        std::int64_t remainder =
            static_cast<std::int64_t>(value) - quotient * modulus_;

        const std::int64_t lower = -(static_cast<std::int64_t>(modulus_) / 2);
        const std::int64_t upper =
            (static_cast<std::int64_t>(modulus_) - 1) / 2;
        for (int pass = 0; pass < 2; ++pass) {
            if (remainder > upper) {
                remainder -= modulus_;
            } else if (remainder < lower) {
                remainder += modulus_;
            }
        }
        if (remainder < lower || remainder > upper) {
            throw std::logic_error("32-bit Barrett correction bound violated");
        }
        return static_cast<std::int32_t>(remainder);
    }

private:
    std::int32_t modulus_ = 0;
    std::uint32_t reciprocal_ = 0;
};

std::int64_t classic_modadd(std::int64_t a, std::int64_t b,
                            std::int64_t modulus) {
    // Benchmark inputs remain in [0,B), so a+b is below 2B and representable
    // for the explicitly validated benchmark moduli.
    return (a + b) % modulus;
}

#if HAVE_AVX2

__m256i approximate_quotient_avx2(__m256i values,
                                  std::uint32_t reciprocal) {
    const __m256i reciprocal_vector =
        _mm256_set1_epi32(static_cast<std::int32_t>(reciprocal));

    const __m256i product_even =
        _mm256_mul_epi32(values, reciprocal_vector);
    const __m256i values_odd = _mm256_srli_epi64(values, 32);
    const __m256i product_odd =
        _mm256_mul_epi32(values_odd, reciprocal_vector);

    // Logical shift is intentional: the selected high 32-bit word has the
    // same bit pattern as an arithmetic 64-bit shift, and is interpreted as a
    // signed int32 lane after packing.
    const __m256i quotient_even_64 = _mm256_srli_epi64(product_even, 32);
    const __m256i quotient_odd_64 = _mm256_srli_epi64(product_odd, 32);
    const __m256i quotient_even_32 = _mm256_shuffle_epi32(
        quotient_even_64, _MM_SHUFFLE(2, 0, 2, 0));
    const __m256i quotient_odd_32 = _mm256_shuffle_epi32(
        quotient_odd_64, _MM_SHUFFLE(2, 0, 2, 0));
    return _mm256_unpacklo_epi32(quotient_even_32, quotient_odd_32);
}

__m256i barrett_reduce32_avx2(__m256i values,
                              const BarrettContext32& context) {
    const __m256i quotient =
        approximate_quotient_avx2(values, context.reciprocal());
    const __m256i modulus = _mm256_set1_epi32(context.modulus());
    __m256i remainder = _mm256_sub_epi32(
        values, _mm256_mullo_epi32(quotient, modulus));

    const std::int32_t lower_scalar = -(context.modulus() / 2);
    const std::int32_t upper_scalar = (context.modulus() - 1) / 2;
    const __m256i lower = _mm256_set1_epi32(lower_scalar);
    const __m256i upper = _mm256_set1_epi32(upper_scalar);

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

__m256i reist_add_avx2(__m256i a, __m256i b, std::int32_t modulus_scalar) {
    __m256i sum = _mm256_add_epi32(a, b);
    const __m256i modulus = _mm256_set1_epi32(modulus_scalar);
    const __m256i lower = _mm256_set1_epi32(-(modulus_scalar / 2));
    const __m256i upper = _mm256_set1_epi32((modulus_scalar - 1) / 2);
    const __m256i above = _mm256_cmpgt_epi32(sum, upper);
    const __m256i below = _mm256_cmpgt_epi32(lower, sum);
    sum = _mm256_sub_epi32(sum, _mm256_and_si256(above, modulus));
    sum = _mm256_add_epi32(sum, _mm256_and_si256(below, modulus));
    return sum;
}

#endif

bool report_preflight_failure(const char* operation, std::int64_t modulus,
                              std::int64_t value, std::int64_t expected,
                              std::int64_t actual) {
    std::cerr << "Preflight failed for " << operation << ": B=" << modulus
              << ", value=" << value << ", expected=" << expected
              << ", actual=" << actual << '\n';
    return false;
}

bool preflight_barrett(std::int64_t modulus) {
    if (modulus < 3 ||
        modulus > std::numeric_limits<std::int32_t>::max()) {
        std::cerr << "Unsupported Barrett benchmark modulus: " << modulus
                  << '\n';
        return false;
    }

    const BarrettContext64 context64(modulus);
    const BarrettContext32 context32(static_cast<std::int32_t>(modulus));
    const std::array<std::int64_t, 15> edge_values{
        std::numeric_limits<std::int64_t>::min(),
        std::numeric_limits<std::int64_t>::min() + 1,
        -2 * modulus,
        -modulus - 1,
        -modulus,
        -(modulus / 2) - 1,
        -(modulus / 2),
        -1,
        0,
        1,
        modulus / 2,
        modulus / 2 + 1,
        modulus,
        std::numeric_limits<std::int64_t>::max() - 1,
        std::numeric_limits<std::int64_t>::max(),
    };

    for (const std::int64_t value : edge_values) {
        const std::int64_t expected =
            reference_center(static_cast<int128>(value), modulus);
        const std::int64_t actual = context64.reduce_centered(value);
        if (actual != expected) {
            return report_preflight_failure("Barrett64", modulus, value,
                                            expected, actual);
        }
    }

    std::uint64_t random = 0xD1B54A32D192ED03ULL ^
                           static_cast<std::uint64_t>(modulus);
    std::vector<std::int32_t> values32{
        std::numeric_limits<std::int32_t>::min(),
        std::numeric_limits<std::int32_t>::min() + 1,
        static_cast<std::int32_t>(-2 * modulus),
        static_cast<std::int32_t>(-modulus - 1),
        static_cast<std::int32_t>(-modulus),
        static_cast<std::int32_t>(-(modulus / 2) - 1),
        static_cast<std::int32_t>(-(modulus / 2)),
        -1,
        0,
        1,
        static_cast<std::int32_t>(modulus / 2),
        static_cast<std::int32_t>(modulus / 2 + 1),
        static_cast<std::int32_t>(modulus),
        std::numeric_limits<std::int32_t>::max() - 1,
        std::numeric_limits<std::int32_t>::max(),
    };
    for (int i = 0; i < 4'096; ++i) {
        random = random * 2862933555777941757ULL + 3037000493ULL;
        values32.push_back(std::bit_cast<std::int32_t>(
            static_cast<std::uint32_t>(random)));
    }

    for (const std::int32_t value : values32) {
        const std::int64_t expected =
            reference_center(static_cast<int128>(value), modulus);
        const std::int32_t actual = context32.reduce_centered(value);
        if (actual != expected) {
            return report_preflight_failure("Barrett32", modulus, value,
                                            expected, actual);
        }
    }

#if HAVE_AVX2
    for (std::size_t index = 0; index < values32.size(); index += 8) {
        alignas(32) std::int32_t input[8]{};
        alignas(32) std::int32_t output[8]{};
        for (std::size_t lane = 0; lane < 8; ++lane) {
            input[lane] = values32[(index + lane) % values32.size()];
        }
        const __m256i input_vector =
            _mm256_load_si256(reinterpret_cast<const __m256i*>(input));
        const __m256i result = barrett_reduce32_avx2(input_vector, context32);
        _mm256_store_si256(reinterpret_cast<__m256i*>(output), result);
        for (std::size_t lane = 0; lane < 8; ++lane) {
            const std::int64_t expected = reference_center(
                static_cast<int128>(input[lane]), modulus);
            if (output[lane] != expected) {
                return report_preflight_failure("Barrett32 AVX2", modulus,
                                                input[lane], expected,
                                                output[lane]);
            }
        }
    }
#endif

    const std::int64_t lower = -(modulus / 2);
    const std::int64_t upper = (modulus - 1) / 2;
    const std::array<std::int64_t, 5> centered_values{
        lower, lower + 1, 0, upper - 1, upper};
    for (const std::int64_t a : centered_values) {
        for (const std::int64_t b : centered_values) {
            const std::int64_t expected =
                reference_center(static_cast<int128>(a) + b, modulus);
            const std::int64_t actual = reist::add_centered(a, b, modulus);
            if (actual != expected) {
                return report_preflight_failure("REIST addition", modulus,
                                                a + b, expected, actual);
            }
        }
    }
    return true;
}

template <class Function>
double time_loop(Function&& function, std::int64_t iterations) {
    const auto start = Clock::now();
    function(iterations);
    const auto stop = Clock::now();
    return std::chrono::duration<double>(stop - start).count();
}

#if defined(__AVX2__)
std::int64_t fold(const std::array<std::int32_t, 8>& values) {
    std::uint64_t result = UINT64_C(1469598103934665603);
    for (const std::int32_t value : values) {
        result ^= static_cast<std::uint32_t>(value);
        result *= UINT64_C(1099511628211);
    }
    return static_cast<std::int64_t>(result & static_cast<std::uint64_t>(INT64_MAX));
}
#endif

} // namespace

int main(int argc, char** argv) {
    std::int64_t operations = (10'000'000 / 8) * 8;
    try {
        if (argc > 1) {
            operations = std::stoll(argv[1]);
        }
    } catch (const std::exception& error) {
        std::cerr << "Invalid operation count: " << error.what() << '\n';
        return 1;
    }
    if (operations <= 0) {
        std::cerr << "Operation count must be positive.\n";
        return 1;
    }
#if HAVE_AVX2
    if (operations < 8 || operations % 8 != 0) {
        std::cerr << "AVX2 operation count must be a positive multiple of 8.\n";
        return 1;
    }
#endif

    const std::vector<std::int64_t> moduli{
        257, 65'537, 1'000'003, 10'000'019, 1'000'000'007};
    try {
        for (const std::int64_t modulus : moduli) {
            if (!preflight_barrett(modulus)) {
                return 2;
            }
        }
    } catch (const std::exception& error) {
        std::cerr << "Barrett preflight raised an exception: " << error.what()
                  << '\n';
        return 2;
    }

    std::cout << std::fixed << std::setprecision(6)
              << "====================================================\n"
              << "Validated Barrett / centered-addition benchmark\n"
              << "====================================================\n"
              << "Preflight: passed for all scalar"
#if HAVE_AVX2
              << " and AVX2"
#endif
              << " kernels\nTotal lane updates per modulus: " << operations
              << "\nSIMD rows are eight independent streams, not one "
                 "serial accumulator.\n\n";

    for (const std::int64_t modulus : moduli) {
        const auto modulus32 = static_cast<std::int32_t>(modulus);
        const BarrettContext64 context64(modulus);
        const BarrettContext32 context32(modulus32);
        const std::int64_t classic_initial = 1'234'567 % modulus;
        const std::int64_t classic_step = 891'011 % modulus;
        const std::int64_t centered_initial =
            reist::center_remainder(1'234'567, modulus);
        const std::int64_t centered_step =
            reist::center_remainder(891'011, modulus);

        std::int64_t classic_result = 0;
        std::int64_t reist_result = 0;
        std::int64_t barrett64_result = 0;
        std::int32_t barrett32_result = 0;

        const double classic_time = time_loop([&](std::int64_t count) {
            std::int64_t state = classic_initial;
            for (std::int64_t i = 0; i < count; ++i) {
                state = classic_modadd(state, classic_step, modulus);
            }
            classic_result = state;
            g_sink = state;
        }, operations);

        const double reist_time = time_loop([&](std::int64_t count) {
            std::int64_t state = centered_initial;
            for (std::int64_t i = 0; i < count; ++i) {
                state = reist::add_centered(state, centered_step, modulus);
            }
            reist_result = state;
            g_sink = state;
        }, operations);

        const double barrett64_time = time_loop([&](std::int64_t count) {
            std::int64_t state = centered_initial;
            for (std::int64_t i = 0; i < count; ++i) {
                state = context64.reduce_centered(state + centered_step);
            }
            barrett64_result = state;
            g_sink = state;
        }, operations);

        const double barrett32_time = time_loop([&](std::int64_t count) {
            std::int32_t state = static_cast<std::int32_t>(centered_initial);
            const auto step = static_cast<std::int32_t>(centered_step);
            for (std::int64_t i = 0; i < count; ++i) {
                state = context32.reduce_centered(
                    static_cast<std::int32_t>(state + step));
            }
            barrett32_result = state;
            g_sink = state;
        }, operations);

        const std::int64_t expected_centered =
            reist::center_remainder(classic_result, modulus);
        if (reist_result != expected_centered ||
            barrett64_result != expected_centered ||
            barrett32_result != expected_centered) {
            std::cerr << "Postflight single-stream mismatch for B=" << modulus
                      << '\n';
            return 3;
        }

#if HAVE_AVX2
        alignas(32) std::array<std::int32_t, 8> initial_lanes{};
        for (std::size_t lane = 0; lane < initial_lanes.size(); ++lane) {
            initial_lanes[lane] = static_cast<std::int32_t>(
                reist::center_remainder(centered_initial +
                                            static_cast<std::int64_t>(lane),
                                        modulus));
        }
        const auto step32 = static_cast<std::int32_t>(centered_step);
        const std::int64_t chain_updates = operations / 8;
        std::array<std::int32_t, 8> reist_scalar_streams{};
        std::array<std::int32_t, 8> barrett_scalar_streams{};
        alignas(32) std::array<std::int32_t, 8> reist_avx2_streams{};
        alignas(32) std::array<std::int32_t, 8> barrett_avx2_streams{};

        const double reist_scalar_stream_time = time_loop(
            [&](std::int64_t count) {
                auto states = initial_lanes;
                for (std::int64_t i = 0; i < count; ++i) {
                    for (auto& state : states) {
                        state = static_cast<std::int32_t>(reist::add_centered(
                            state, step32, modulus));
                    }
                }
                reist_scalar_streams = states;
                g_sink = fold(states);
            },
            chain_updates);

        const double barrett_scalar_stream_time = time_loop(
            [&](std::int64_t count) {
                auto states = initial_lanes;
                for (std::int64_t i = 0; i < count; ++i) {
                    for (auto& state : states) {
                        state = context32.reduce_centered(
                            static_cast<std::int32_t>(state + step32));
                    }
                }
                barrett_scalar_streams = states;
                g_sink = fold(states);
            },
            chain_updates);

        const double reist_avx2_time = time_loop([&](std::int64_t count) {
            __m256i states = _mm256_load_si256(
                reinterpret_cast<const __m256i*>(initial_lanes.data()));
            const __m256i step = _mm256_set1_epi32(step32);
            for (std::int64_t i = 0; i < count; ++i) {
                states = reist_add_avx2(states, step, modulus32);
            }
            _mm256_store_si256(
                reinterpret_cast<__m256i*>(reist_avx2_streams.data()), states);
            g_sink = fold(reist_avx2_streams);
        }, chain_updates);

        const double barrett_avx2_time = time_loop([&](std::int64_t count) {
            __m256i states = _mm256_load_si256(
                reinterpret_cast<const __m256i*>(initial_lanes.data()));
            const __m256i step = _mm256_set1_epi32(step32);
            for (std::int64_t i = 0; i < count; ++i) {
                states = barrett_reduce32_avx2(
                    _mm256_add_epi32(states, step), context32);
            }
            _mm256_store_si256(
                reinterpret_cast<__m256i*>(barrett_avx2_streams.data()), states);
            g_sink = fold(barrett_avx2_streams);
        }, chain_updates);

        if (reist_avx2_streams != reist_scalar_streams ||
            barrett_avx2_streams != barrett_scalar_streams ||
            reist_avx2_streams != barrett_avx2_streams) {
            std::cerr << "Postflight independent-stream mismatch for B="
                      << modulus << '\n';
            return 3;
        }
#endif

        std::cout << "Modulus = " << modulus
                  << "\n  One dependent stream:"
                  << "\n    Classic %                 : " << classic_time << " s"
                  << "\n    REIST add_centered        : " << reist_time << " s"
                  << "\n    Barrett reciprocal, int64: " << barrett64_time << " s"
                  << "\n    Barrett reciprocal, int32: " << barrett32_time << " s"
                  << "\n    Speedup classic / REIST   : "
                  << classic_time / reist_time << "x\n";
#if HAVE_AVX2
        std::cout << "  Eight independent streams (" << chain_updates
                  << " updates per lane):"
                  << "\n    REIST scalar 8-stream     : "
                  << reist_scalar_stream_time << " s"
                  << "\n    REIST AVX2 8-stream       : " << reist_avx2_time << " s"
                  << "\n    Barrett scalar 8-stream   : "
                  << barrett_scalar_stream_time << " s"
                  << "\n    Barrett AVX2 8-stream     : " << barrett_avx2_time << " s"
                  << "\n    REIST SIMD speedup        : "
                  << reist_scalar_stream_time / reist_avx2_time << "x"
                  << "\n    Barrett SIMD speedup      : "
                  << barrett_scalar_stream_time / barrett_avx2_time << "x\n";
#endif
        std::cout << "\n";
    }

    std::cout << "Sink: " << static_cast<std::int64_t>(g_sink) << '\n';
    return 0;
}

#endif
