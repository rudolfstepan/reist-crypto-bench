#include "reist_mod.hpp"

#include <array>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <exception>
#include <iomanip>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>

using Clock = std::chrono::high_resolution_clock;

static volatile std::uint64_t g_sink = 0;

#if !defined(__SIZEOF_INT128__)

int main() {
    std::cerr
        << "bench_montgomery requires a compiler with signed and unsigned "
           "128-bit integer support; no unchecked fallback is provided.\n";
    return 2;
}

#else

using uint128 = __uint128_t;
using int128 = __int128_t;

namespace {

std::uint64_t reference_add(std::uint64_t a, std::uint64_t b,
                            std::uint64_t modulus) {
    return static_cast<std::uint64_t>(
        (static_cast<uint128>(a) + static_cast<uint128>(b)) % modulus);
}

std::uint64_t reference_mul(std::uint64_t a, std::uint64_t b,
                            std::uint64_t modulus) {
    return static_cast<std::uint64_t>(
        (static_cast<uint128>(a) * static_cast<uint128>(b)) % modulus);
}

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

std::uint64_t nonnegative(std::int64_t centered, std::uint64_t modulus) {
    return centered < 0
               ? static_cast<std::uint64_t>(centered +
                                            static_cast<std::int64_t>(modulus))
               : static_cast<std::uint64_t>(centered);
}

class MontgomeryContext {
public:
    explicit MontgomeryContext(std::uint64_t modulus) : modulus_(modulus) {
        // The REDC implementation below uses one 64-bit result limb.  N < 2^63
        // guarantees REDC(t) < 2N < 2^64 for t < N*2^64.
        if (modulus_ < 3 || (modulus_ & 1U) == 0 ||
            modulus_ >= (std::uint64_t{1} << 63)) {
            throw std::invalid_argument(
                "Montgomery modulus must be odd and satisfy 3 <= N < 2^63");
        }

        negative_inverse_ = compute_negative_inverse(modulus_);
        if (modulus_ * negative_inverse_ !=
            std::numeric_limits<std::uint64_t>::max()) {
            throw std::logic_error("failed to compute -N^{-1} modulo 2^64");
        }

        const uint128 radix = static_cast<uint128>(1) << 64;
        radix_modulus_ = static_cast<std::uint64_t>(radix % modulus_);
        radix_squared_modulus_ = reference_mul(
            radix_modulus_, radix_modulus_, modulus_);
    }

    [[nodiscard]] std::uint64_t modulus() const noexcept { return modulus_; }
    [[nodiscard]] std::uint64_t negative_inverse() const noexcept {
        return negative_inverse_;
    }
    [[nodiscard]] std::uint64_t radix_modulus() const noexcept {
        return radix_modulus_;
    }

    [[nodiscard]] std::uint64_t reduce(std::uint64_t low,
                                       std::uint64_t high) const {
        const std::uint64_t multiplier = low * negative_inverse_;
        const uint128 product =
            static_cast<uint128>(multiplier) * modulus_;
        const std::uint64_t product_low =
            static_cast<std::uint64_t>(product);
        const std::uint64_t product_high =
            static_cast<std::uint64_t>(product >> 64);

        const std::uint64_t low_sum = low + product_low;
        const std::uint64_t carry = low_sum < low ? 1U : 0U;
        if (low_sum != 0) {
            throw std::logic_error("Montgomery REDC low limb did not cancel");
        }

        std::uint64_t reduced = high + product_high;
        if (reduced < high) {
            throw std::overflow_error("Montgomery REDC high-limb overflow");
        }
        const std::uint64_t before_carry = reduced;
        reduced += carry;
        if (reduced < before_carry) {
            throw std::overflow_error("Montgomery REDC carry overflow");
        }

        if (reduced >= modulus_) {
            reduced -= modulus_;
        }
        return reduced;
    }

    [[nodiscard]] std::uint64_t reduce_product(std::uint64_t a,
                                               std::uint64_t b) const {
        if (a >= modulus_ || b >= modulus_) {
            throw std::invalid_argument(
                "Montgomery product operands must be reduced");
        }
        const uint128 product = static_cast<uint128>(a) * b;
        return reduce(static_cast<std::uint64_t>(product),
                      static_cast<std::uint64_t>(product >> 64));
    }

    [[nodiscard]] std::uint64_t to_montgomery(std::uint64_t value) const {
        value %= modulus_;
        const uint128 product =
            static_cast<uint128>(value) * radix_squared_modulus_;
        return reduce(static_cast<std::uint64_t>(product),
                      static_cast<std::uint64_t>(product >> 64));
    }

    [[nodiscard]] std::uint64_t from_montgomery(std::uint64_t value) const {
        if (value >= modulus_) {
            throw std::invalid_argument(
                "Montgomery-domain value must be reduced");
        }
        return reduce(value, 0);
    }

    [[nodiscard]] std::uint64_t multiply(std::uint64_t a,
                                         std::uint64_t b) const {
        return reduce_product(a, b);
    }

    [[nodiscard]] std::uint64_t add(std::uint64_t a,
                                    std::uint64_t b) const {
        if (a >= modulus_ || b >= modulus_) {
            throw std::invalid_argument(
                "Montgomery addition operands must be reduced");
        }
        // N < 2^63 makes a+b strictly smaller than 2^64.
        std::uint64_t sum = a + b;
        if (sum >= modulus_) {
            sum -= modulus_;
        }
        return sum;
    }

private:
    static std::uint64_t compute_negative_inverse(std::uint64_t modulus) {
        std::uint64_t inverse = 1;
        for (int iteration = 0; iteration < 6; ++iteration) {
            inverse *= 2U - modulus * inverse;
        }
        return 0U - inverse;
    }

    std::uint64_t modulus_ = 0;
    std::uint64_t negative_inverse_ = 0;
    std::uint64_t radix_modulus_ = 0;
    std::uint64_t radix_squared_modulus_ = 0;
};

std::uint64_t classic_modadd(std::uint64_t a, std::uint64_t b,
                             std::uint64_t modulus) {
    return reference_add(a, b, modulus);
}

std::uint64_t classic_modmul(std::uint64_t a, std::uint64_t b,
                             std::uint64_t modulus) {
    return reference_mul(a, b, modulus);
}

std::int64_t centered_modmul_reference(std::int64_t a, std::int64_t b,
                                       std::int64_t modulus) {
    return reference_center(static_cast<int128>(a) * b, modulus);
}

bool report_mismatch(const char* operation, std::uint64_t modulus,
                     std::uint64_t a, std::uint64_t b,
                     std::uint64_t expected, std::uint64_t actual) {
    std::cerr << "Preflight failed for " << operation << ": N=" << modulus
              << ", a=" << a << ", b=" << b << ", expected=" << expected
              << ", actual=" << actual << '\n';
    return false;
}

bool preflight_montgomery(std::uint64_t modulus) {
    const MontgomeryContext montgomery(modulus);
    const auto signed_modulus = static_cast<std::int64_t>(modulus);

    std::vector<std::uint64_t> values{
        0,
        1,
        2,
        modulus / 2,
        modulus / 2 + 1,
        modulus - 2,
        modulus - 1,
        1'234'567 % modulus,
        89'101'112 % modulus,
    };

    std::uint64_t random = 0x9E3779B97F4A7C15ULL ^ modulus;
    for (int i = 0; i < 2'048; ++i) {
        random = random * 6364136223846793005ULL + 1442695040888963407ULL;
        values.push_back(random % modulus);
    }

    for (const std::uint64_t value : values) {
        const std::uint64_t encoded = montgomery.to_montgomery(value);
        const std::uint64_t decoded = montgomery.from_montgomery(encoded);
        if (decoded != value) {
            return report_mismatch("Montgomery round trip", modulus, value, 0,
                                   value, decoded);
        }
        if (encoded != reference_mul(value, montgomery.radix_modulus(), modulus)) {
            return report_mismatch(
                "Montgomery encoding", modulus, value, 0,
                reference_mul(value, montgomery.radix_modulus(), modulus),
                encoded);
        }
    }

    for (std::size_t index = 0; index + 1 < values.size(); ++index) {
        const std::uint64_t a = values[index];
        const std::uint64_t b = values[index + 1];
        const std::uint64_t a_mont = montgomery.to_montgomery(a);
        const std::uint64_t b_mont = montgomery.to_montgomery(b);

        const std::uint64_t expected_add = reference_add(a, b, modulus);
        const std::uint64_t actual_add = montgomery.from_montgomery(
            montgomery.add(a_mont, b_mont));
        if (actual_add != expected_add) {
            return report_mismatch("Montgomery addition", modulus, a, b,
                                   expected_add, actual_add);
        }

        const std::uint64_t expected_mul = reference_mul(a, b, modulus);
        const std::uint64_t actual_mul = montgomery.from_montgomery(
            montgomery.multiply(a_mont, b_mont));
        if (actual_mul != expected_mul) {
            return report_mismatch("Montgomery multiplication", modulus, a, b,
                                   expected_mul, actual_mul);
        }

        const std::int64_t a_centered =
            reist::center_remainder(static_cast<std::int64_t>(a), signed_modulus);
        const std::int64_t b_centered =
            reist::center_remainder(static_cast<std::int64_t>(b), signed_modulus);
        const std::int64_t centered_add =
            reist::add_centered(a_centered, b_centered, signed_modulus);
        if (nonnegative(centered_add, modulus) != expected_add) {
            return report_mismatch("REIST centered addition", modulus, a, b,
                                   expected_add,
                                   nonnegative(centered_add, modulus));
        }
        const std::int64_t centered_mul = centered_modmul_reference(
            a_centered, b_centered, signed_modulus);
        if (nonnegative(centered_mul, modulus) != expected_mul) {
            return report_mismatch("centered product reference", modulus, a, b,
                                   expected_mul,
                                   nonnegative(centered_mul, modulus));
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

} // namespace

int main(int argc, char** argv) {
    std::int64_t operations = 10'000'000;
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

    const std::vector<std::uint64_t> moduli{
        257, 65'537, 1'000'003, 10'000'019, 1'000'000'007,
        1'000'000'000'039ULL};

    try {
        for (const std::uint64_t modulus : moduli) {
            if (!preflight_montgomery(modulus)) {
                return 2;
            }
        }
    } catch (const std::exception& error) {
        std::cerr << "Montgomery preflight raised an exception: "
                  << error.what() << '\n';
        return 2;
    }

    std::cout << std::fixed << std::setprecision(9);
    std::cout << "========================================\n"
              << "Validated centered vs Montgomery benchmark\n"
              << "========================================\n"
              << "Preflight: passed for all moduli\n"
              << "Operations per modulus = " << operations << "\n";

    for (const std::uint64_t modulus : moduli) {
        const MontgomeryContext montgomery(modulus);
        const auto signed_modulus = static_cast<std::int64_t>(modulus);
        const std::uint64_t a = 1'234'567 % modulus;
        const std::uint64_t b = 89'101'112 % modulus;
        const std::int64_t a_centered =
            reist::center_remainder(static_cast<std::int64_t>(a), signed_modulus);
        const std::int64_t b_centered =
            reist::center_remainder(static_cast<std::int64_t>(b), signed_modulus);
        const std::uint64_t a_mont = montgomery.to_montgomery(a);
        const std::uint64_t b_mont = montgomery.to_montgomery(b);

        std::uint64_t classic_add_result = 0;
        std::int64_t reist_add_result = 0;
        std::uint64_t montgomery_add_result = 0;

        const double classic_add_time = time_loop([&](std::int64_t count) {
            std::uint64_t state = a;
            for (std::int64_t i = 0; i < count; ++i) {
                state = classic_modadd(state, b, modulus);
            }
            classic_add_result = state;
            g_sink = state;
        }, operations);

        const double reist_add_time = time_loop([&](std::int64_t count) {
            std::int64_t state = a_centered;
            for (std::int64_t i = 0; i < count; ++i) {
                state = reist::add_centered(state, b_centered, signed_modulus);
            }
            reist_add_result = state;
            g_sink = nonnegative(state, modulus);
        }, operations);

        const double montgomery_add_time = time_loop([&](std::int64_t count) {
            std::uint64_t state = a_mont;
            for (std::int64_t i = 0; i < count; ++i) {
                state = montgomery.add(state, b_mont);
            }
            montgomery_add_result = montgomery.from_montgomery(state);
            g_sink = montgomery_add_result;
        }, operations);

        if (nonnegative(reist_add_result, modulus) != classic_add_result ||
            montgomery_add_result != classic_add_result) {
            std::cerr << "Postflight addition mismatch for N=" << modulus << '\n';
            return 3;
        }

        std::uint64_t classic_mul_result = 0;
        std::int64_t centered_mul_result = 0;
        std::uint64_t montgomery_mul_result = 0;

        const double classic_mul_time = time_loop([&](std::int64_t count) {
            std::uint64_t state = a;
            for (std::int64_t i = 0; i < count; ++i) {
                state = classic_modmul(state, b, modulus);
            }
            classic_mul_result = state;
            g_sink = state;
        }, operations);

        const double centered_mul_time = time_loop([&](std::int64_t count) {
            std::int64_t state = a_centered;
            for (std::int64_t i = 0; i < count; ++i) {
                state = centered_modmul_reference(state, b_centered, signed_modulus);
            }
            centered_mul_result = state;
            g_sink = nonnegative(state, modulus);
        }, operations);

        const double montgomery_mul_time = time_loop([&](std::int64_t count) {
            std::uint64_t state = a_mont;
            for (std::int64_t i = 0; i < count; ++i) {
                state = montgomery.multiply(state, b_mont);
            }
            montgomery_mul_result = montgomery.from_montgomery(state);
            g_sink = montgomery_mul_result;
        }, operations);

        if (nonnegative(centered_mul_result, modulus) != classic_mul_result ||
            montgomery_mul_result != classic_mul_result) {
            std::cerr << "Postflight multiplication mismatch for N=" << modulus
                      << '\n';
            return 3;
        }

        std::uint64_t classic_full_result = 0;
        std::uint64_t montgomery_full_result = 0;
        const double classic_full_time = time_loop([&](std::int64_t count) {
            classic_full_result = a;
            std::uint64_t operand = b;
            for (std::int64_t i = 0; i < count; ++i) {
                operand = classic_modadd(operand, 1, modulus);
                classic_full_result = classic_modmul(
                    classic_full_result, operand, modulus);
                classic_full_result = classic_modadd(
                    classic_full_result, 1, modulus);
            }
            g_sink = classic_full_result;
        }, operations);

        const double montgomery_full_time = time_loop([&](std::int64_t count) {
            montgomery_full_result = a;
            std::uint64_t operand = b;
            for (std::int64_t i = 0; i < count; ++i) {
                operand = classic_modadd(operand, 1, modulus);
                const std::uint64_t x_mont = montgomery.to_montgomery(
                    montgomery_full_result);
                const std::uint64_t y_mont = montgomery.to_montgomery(
                    operand);
                montgomery_full_result = montgomery.from_montgomery(
                    montgomery.multiply(x_mont, y_mont));
                montgomery_full_result = classic_modadd(
                    montgomery_full_result, 1, modulus);
            }
            g_sink = montgomery_full_result;
        }, operations);

        if (montgomery_full_result != classic_full_result) {
            std::cerr << "Postflight full-cycle mismatch for N=" << modulus << '\n';
            return 3;
        }

        std::cout << "\nModulus = " << modulus
                  << "\n--- Modular addition, one dependent stream ---"
                  << "\nClassic       : " << classic_add_time << " s"
                  << "\nREIST centered: " << reist_add_time << " s"
                  << "\nMontgomery    : " << montgomery_add_time << " s"
                  << "\n--- Modular multiplication, one dependent stream ---"
                  << "\nClassic %                 : " << classic_mul_time << " s"
                  << "\nCentered % (not REIST)    : " << centered_mul_time << " s"
                  << "\nMontgomery-domain multiply: " << montgomery_mul_time << " s"
                  << "\n--- Dependent full cycle with per-step conversion ---"
                  << "\nClassic full   : " << classic_full_time << " s"
                  << "\nMontgomery full: " << montgomery_full_time << " s"
                  << "\nConversion overhead: "
                  << ((montgomery_full_time / classic_full_time) - 1.0) * 100.0
                  << " %\n";
    }

    std::cout << "\nSink: " << static_cast<std::uint64_t>(g_sink) << '\n';
    return 0;
}

#endif
