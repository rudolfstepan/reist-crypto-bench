#pragma once

#include <cstdint>
#include <stdexcept>

namespace reist {

/// Quotient and canonical centered remainder of a REIST division.
struct division_result {
    std::int64_t q;
    std::int64_t r;

    friend constexpr bool operator==(const division_result&,
                                     const division_result&) = default;
};

namespace detail {

constexpr void require_positive_modulus(std::int64_t B) {
    if (B <= 0) {
        throw std::invalid_argument("REIST modulus B must be positive");
    }
}

// Integer bounds of [-B/2, B/2):
//   even B: [-B/2, B/2 - 1]
//   odd  B: [-floor(B/2), floor(B/2)]
constexpr std::int64_t canonical_lower_bound_unchecked(std::int64_t B) noexcept {
    return -(B / 2);
}

constexpr std::int64_t canonical_upper_bound_unchecked(std::int64_t B) noexcept {
    return (B - 1) / 2;
}

constexpr bool is_centered_unchecked(std::int64_t value,
                                     std::int64_t B) noexcept {
    return value >= canonical_lower_bound_unchecked(B) &&
           value <= canonical_upper_bound_unchecked(B);
}

} // namespace detail

/// Return the unique pair (q, r) such that T = q*B + r and
/// r is in the canonical interval [-B/2, B/2).
///
/// B must be positive; otherwise std::invalid_argument is thrown.  The
/// implementation is defined for every int64_t T and every positive int64_t B,
/// including INT64_MIN, INT64_MAX, and B == INT64_MAX.
[[nodiscard]] constexpr division_result divide(std::int64_t T,
                                                std::int64_t B) {
    detail::require_positive_modulus(B);

    // C++ division truncates toward zero.  First convert its remainder to the
    // Euclidean interval [0, B), then move the upper half into the canonical
    // centered interval.  None of these adjustments can overflow:
    // * q can equal INT64_MIN/MAX only for B == 1, where r is zero;
    // * a negative C++ remainder has magnitude strictly smaller than B;
    // * ceil(B/2) is representable for every positive int64_t B.
    std::int64_t q = T / B;
    std::int64_t r = T % B;

    if (r < 0) {
        r += B;
        --q;
    }

    const std::int64_t upper_half_begin = (B / 2) + (B % 2); // ceil(B/2)
    if (r >= upper_half_begin) {
        r -= B;
        ++q;
    }

    return {q, r};
}

/// Return the canonical centered representative of T modulo B.
[[nodiscard]] constexpr std::int64_t center_remainder(std::int64_t T,
                                                      std::int64_t B) {
    return divide(T, B).r;
}

/// Return whether value lies in the canonical interval [-B/2, B/2).
/// Throws std::invalid_argument when B is not positive.
[[nodiscard]] constexpr bool is_centered(std::int64_t value, std::int64_t B) {
    detail::require_positive_modulus(B);
    return detail::is_centered_unchecked(value, B);
}

/// Add two canonical centered representatives and restore the invariant with
/// at most one +/-B correction.
///
/// Both operands must already be centered representatives for the same
/// positive modulus.  Invalid operands or a non-positive modulus cause
/// std::invalid_argument.  Under this contract a + b is always representable
/// in int64_t, even for B == INT64_MAX.
[[nodiscard]] constexpr std::int64_t add_centered(std::int64_t a,
                                                  std::int64_t b,
                                                  std::int64_t B) {
    detail::require_positive_modulus(B);
    if (!detail::is_centered_unchecked(a, B) ||
        !detail::is_centered_unchecked(b, B)) {
        throw std::invalid_argument(
            "REIST add_centered operands must be canonical representatives");
    }

    std::int64_t sum = a + b;
    const std::int64_t lower = detail::canonical_lower_bound_unchecked(B);
    const std::int64_t upper = detail::canonical_upper_bound_unchecked(B);

    if (sum > upper) {
        sum -= B;
    } else if (sum < lower) {
        sum += B;
    }
    return sum;
}

/// Euclidean remainder in [0, B), defined for every int64_t T and B > 0.
[[nodiscard]] constexpr std::int64_t euclidean_remainder(std::int64_t T,
                                                         std::int64_t B) {
    detail::require_positive_modulus(B);
    std::int64_t r = T % B;
    if (r < 0) {
        r += B;
    }
    return r;
}

// Compatibility names.  They now use the canonical convention of the paper;
// callers that need the fast persistent-state primitive should migrate to
// add_centered rather than recomputing a remainder after every addition.
[[deprecated("use center_remainder for the canonical REIST remainder")]]
[[nodiscard]] constexpr std::int64_t signed_remainder(std::int64_t T,
                                                      std::int64_t B) {
    return center_remainder(T, B);
}

// Kept as a source-compatible spelling for benchmark/reference code.  Unlike
// C++ operator%, it is Euclidean for negative dividends as its historic
// 0 <= r < B contract promises.
[[nodiscard]] constexpr std::int64_t classic_remainder(std::int64_t T,
                                                       std::int64_t B) {
    return euclidean_remainder(T, B);
}

[[deprecated("center operands once and use add_centered for persistent state")]]
[[nodiscard]] constexpr std::int64_t reist_add_mod(std::int64_t a,
                                                   std::int64_t b,
                                                   std::int64_t B) {
    // Centering each operand separately avoids signed overflow in a + b while
    // retaining the congruence of the historical arbitrary-input helper.
    return add_centered(center_remainder(a, B), center_remainder(b, B), B);
}

} // namespace reist
