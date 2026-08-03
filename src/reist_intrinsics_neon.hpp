#pragma once

#include <cstddef>
#include <cstdint>

// Private backend ABI. Application code must use reist_intrinsics.hpp so the
// architecture-safe dispatcher is always used.
namespace reist::detail {

inline constexpr std::size_t neon_i32_lanes = 4;

void add_i32_compiler_auto_neon(std::int32_t* destination,
                                const std::int32_t* rhs,
                                std::size_t count,
                                std::size_t repetitions,
                                std::int32_t modulus) noexcept;

void add_i32_explicit_neon(std::int32_t* destination,
                           const std::int32_t* rhs,
                           std::size_t count,
                           std::size_t repetitions,
                           std::int32_t modulus) noexcept;

} // namespace reist::detail
