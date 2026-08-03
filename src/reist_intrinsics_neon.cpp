#include "reist_intrinsics_neon.hpp"

#ifndef REIST_HAVE_NEON_BACKEND
#define REIST_HAVE_NEON_BACKEND 0
#endif

#if REIST_HAVE_NEON_BACKEND

#if !(defined(__aarch64__) || defined(_M_ARM64) || defined(__ARM_NEON) || \
      defined(__ARM_NEON__))
#error "REIST_HAVE_NEON_BACKEND requires an ARM target with NEON"
#endif

#if defined(_MSC_VER) && defined(_M_ARM64)
#include <arm64_neon.h>
#else
#include <arm_neon.h>
#endif

#if defined(_MSC_VER)
#define REIST_BACKEND_NOINLINE __declspec(noinline)
#elif defined(__GNUC__) || defined(__clang__)
#define REIST_BACKEND_NOINLINE __attribute__((noinline))
#else
#define REIST_BACKEND_NOINLINE
#endif

namespace reist::detail {
namespace {

[[nodiscard]] constexpr std::int32_t lower_bound_i32(
    std::int32_t modulus) noexcept {
    return -(modulus / 2);
}

[[nodiscard]] constexpr std::int32_t upper_bound_i32(
    std::int32_t modulus) noexcept {
    return (modulus - 1) / 2;
}

[[nodiscard]] constexpr std::int32_t add_lane_i32(
    std::int32_t lhs,
    std::int32_t rhs,
    std::int32_t modulus) noexcept {
    std::int32_t sum = static_cast<std::int32_t>(lhs + rhs);
    if (sum > upper_bound_i32(modulus)) {
        sum = static_cast<std::int32_t>(sum - modulus);
    } else if (sum < lower_bound_i32(modulus)) {
        sum = static_cast<std::int32_t>(sum + modulus);
    }
    return sum;
}

} // namespace

// This intentionally remains plain C++ and shares this NEON translation unit
// and all of its compiler flags with add_i32_explicit_neon.
REIST_BACKEND_NOINLINE void add_i32_compiler_auto_neon(
    std::int32_t* destination,
    const std::int32_t* rhs,
    std::size_t count,
    std::size_t repetitions,
    std::int32_t modulus) noexcept {
    for (std::size_t repetition = 0; repetition < repetitions;
         ++repetition) {
        for (std::size_t index = 0; index < count; ++index) {
            destination[index] =
                add_lane_i32(destination[index], rhs[index], modulus);
        }
    }
}

REIST_BACKEND_NOINLINE void add_i32_explicit_neon(
    std::int32_t* destination,
    const std::int32_t* rhs,
    std::size_t count,
    std::size_t repetitions,
    std::int32_t modulus) noexcept {
    const int32x4_t modulus_vector = vdupq_n_s32(modulus);
    const int32x4_t lower_vector = vdupq_n_s32(lower_bound_i32(modulus));
    const int32x4_t upper_vector = vdupq_n_s32(upper_bound_i32(modulus));

    for (std::size_t repetition = 0; repetition < repetitions;
         ++repetition) {
        std::size_t index = 0;
        while (count - index >= neon_i32_lanes) {
            const int32x4_t lhs_vector = vld1q_s32(destination + index);
            const int32x4_t rhs_vector = vld1q_s32(rhs + index);
            int32x4_t sum_vector = vaddq_s32(lhs_vector, rhs_vector);

            const uint32x4_t above = vcgtq_s32(sum_vector, upper_vector);
            const uint32x4_t below = vcgtq_s32(lower_vector, sum_vector);
            sum_vector = vbslq_s32(
                above, vsubq_s32(sum_vector, modulus_vector), sum_vector);
            sum_vector = vbslq_s32(
                below, vaddq_s32(sum_vector, modulus_vector), sum_vector);

            vst1q_s32(destination + index, sum_vector);
            index += neon_i32_lanes;
        }

        for (; index < count; ++index) {
            destination[index] =
                add_lane_i32(destination[index], rhs[index], modulus);
        }
    }
}

} // namespace reist::detail

#undef REIST_BACKEND_NOINLINE

#endif // REIST_HAVE_NEON_BACKEND
