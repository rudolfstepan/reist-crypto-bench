#pragma once

#include <cstddef>
#include <cstdint>

// Private backend ABI. Application code must use reist_intrinsics.hpp so the
// runtime AVX2 capability check cannot be bypassed.
namespace reist::detail {

inline constexpr std::size_t avx2_i32_lanes = 8;

void add_i32_compiler_auto_avx2(std::int32_t* destination,
                                const std::int32_t* rhs,
                                std::size_t count,
                                std::size_t repetitions,
                                std::int32_t modulus) noexcept;

void add_i32_explicit_avx2(std::int32_t* destination,
                           const std::int32_t* rhs,
                           std::size_t count,
                           std::size_t repetitions,
                           std::int32_t modulus) noexcept;

} // namespace reist::detail
