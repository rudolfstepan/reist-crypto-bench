#include "reist_intrinsics_avx2.hpp"

#ifndef REIST_HAVE_AVX2_BACKEND
#define REIST_HAVE_AVX2_BACKEND 0
#endif

#if REIST_HAVE_AVX2_BACKEND

#if !(defined(_M_X64) || defined(_M_IX86) || defined(__x86_64__) || \
      defined(__i386__))
#error "REIST_HAVE_AVX2_BACKEND requires an x86 target"
#endif

#include <immintrin.h>

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

// Deliberately plain C++: this is the compiler-auto-vectorization side of the
// comparison and lives in the same AVX2 translation unit as the intrinsic
// implementation below.
REIST_BACKEND_NOINLINE void add_i32_compiler_auto_avx2(
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

REIST_BACKEND_NOINLINE void add_i32_explicit_avx2(
    std::int32_t* destination,
    const std::int32_t* rhs,
    std::size_t count,
    std::size_t repetitions,
    std::int32_t modulus) noexcept {
    const __m256i modulus_vector = _mm256_set1_epi32(modulus);
    const __m256i lower_vector = _mm256_set1_epi32(lower_bound_i32(modulus));
    const __m256i upper_vector = _mm256_set1_epi32(upper_bound_i32(modulus));

    for (std::size_t repetition = 0; repetition < repetitions;
         ++repetition) {
        std::size_t index = 0;
        while (count - index >= avx2_i32_lanes) {
            const __m256i lhs_vector = _mm256_loadu_si256(
                reinterpret_cast<const __m256i*>(destination + index));
            const __m256i rhs_vector = _mm256_loadu_si256(
                reinterpret_cast<const __m256i*>(rhs + index));
            __m256i sum_vector = _mm256_add_epi32(lhs_vector, rhs_vector);

            const __m256i above =
                _mm256_cmpgt_epi32(sum_vector, upper_vector);
            const __m256i below =
                _mm256_cmpgt_epi32(lower_vector, sum_vector);
            sum_vector = _mm256_sub_epi32(
                sum_vector, _mm256_and_si256(above, modulus_vector));
            sum_vector = _mm256_add_epi32(
                sum_vector, _mm256_and_si256(below, modulus_vector));

            _mm256_storeu_si256(
                reinterpret_cast<__m256i*>(destination + index), sum_vector);
            index += avx2_i32_lanes;
        }

        for (; index < count; ++index) {
            destination[index] =
                add_lane_i32(destination[index], rhs[index], modulus);
        }
    }
}

} // namespace reist::detail

#undef REIST_BACKEND_NOINLINE

#endif // REIST_HAVE_AVX2_BACKEND
