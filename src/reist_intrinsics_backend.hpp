#pragma once

#include "reist_intrinsics.hpp"

#include <cstddef>
#include <cstdint>

#ifndef REIST_HAVE_AVX2_BACKEND
#define REIST_HAVE_AVX2_BACKEND 0
#endif

#ifndef REIST_HAVE_NEON_BACKEND
#define REIST_HAVE_NEON_BACKEND 0
#endif

namespace reist::detail {

void add_i32_compiler_auto_portable(std::int32_t* destination,
                                    const std::int32_t* rhs,
                                    std::size_t count,
                                    std::size_t repetitions,
                                    std::int32_t modulus) noexcept;

void dispatch_add_i32(std::int32_t* destination,
                      const std::int32_t* rhs,
                      std::size_t count,
                      std::size_t repetitions,
                      std::int32_t modulus,
                      intrinsic_backend backend);

[[nodiscard]] bool explicit_backend_available() noexcept;
[[nodiscard]] const char* explicit_backend_name() noexcept;

} // namespace reist::detail
