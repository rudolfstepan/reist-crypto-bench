#pragma once

#include <cstddef>
#include <cstdint>

// All inputs are prepared residues. B is positive and at most INT32_MAX.
// percent/bounded: [0, B); centered: [-floor(B/2), ceil(B/2)).
// No normalization, allocation, timing or validation belongs to these kernels.
extern "C" {
std::uint32_t runtime_percent(std::uint32_t a, std::uint32_t b,
                              std::uint32_t modulus) noexcept;
std::uint32_t runtime_bounded(std::uint32_t a, std::uint32_t b,
                              std::uint32_t modulus) noexcept;
std::int32_t runtime_centered(std::int32_t a, std::int32_t b,
                              std::uint32_t modulus) noexcept;

std::uint32_t constant_percent(std::uint32_t a, std::uint32_t b) noexcept;
std::uint32_t constant_bounded(std::uint32_t a, std::uint32_t b) noexcept;
std::int32_t constant_centered(std::int32_t a, std::int32_t b) noexcept;

std::uint32_t power2_percent(std::uint32_t a, std::uint32_t b) noexcept;
std::uint32_t power2_bounded(std::uint32_t a, std::uint32_t b) noexcept;
std::int32_t power2_centered(std::int32_t a, std::int32_t b) noexcept;

std::uint32_t serial_percent(std::uint32_t state, const std::uint32_t *steps,
                             std::size_t count) noexcept;
std::uint32_t serial_bounded(std::uint32_t state, const std::uint32_t *steps,
                             std::size_t count) noexcept;
std::int32_t serial_centered(std::int32_t state, const std::int32_t *steps,
                             std::size_t count) noexcept;

void array_percent(std::uint32_t *state, const std::uint32_t *steps,
                   std::size_t count) noexcept;
void array_bounded(std::uint32_t *state, const std::uint32_t *steps,
                   std::size_t count) noexcept;
void array_centered(std::int32_t *state, const std::int32_t *steps,
                    std::size_t count) noexcept;

} // extern "C"

// General remainders, not the bounded-addition fast path above.
// value may be any int64_t; runtime modulus must be strictly positive.
extern "C" {
std::int64_t signed_remainder_runtime(std::int64_t value, std::int64_t modulus);
std::int64_t euclidean_remainder_runtime(std::int64_t value, std::int64_t modulus);
std::int64_t reist_remainder_runtime(std::int64_t value, std::int64_t modulus);
std::int64_t signed_remainder_constant(std::int64_t value);
std::int64_t euclidean_remainder_constant(std::int64_t value);
std::int64_t reist_remainder_constant(std::int64_t value);

// Quotient and remainder together. Output pointers must be non-null, distinct
// and writable. Runtime examples throw invalid_argument for modulus <= 0.
void signed_division_runtime(std::int64_t value, std::int64_t modulus,
                             std::int64_t *quotient, std::int64_t *remainder);
void euclidean_division_runtime(std::int64_t value, std::int64_t modulus,
                                std::int64_t *quotient, std::int64_t *remainder);
void reist_division_runtime(std::int64_t value, std::int64_t modulus,
                            std::int64_t *quotient, std::int64_t *remainder);
void signed_division_constant(std::int64_t value, std::int64_t *quotient,
                              std::int64_t *remainder);
void euclidean_division_constant(std::int64_t value, std::int64_t *quotient,
                                 std::int64_t *remainder);
void reist_division_constant(std::int64_t value, std::int64_t *quotient,
                             std::int64_t *remainder);
}
