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
