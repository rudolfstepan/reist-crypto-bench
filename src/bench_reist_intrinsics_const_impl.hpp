#pragma once

#include "bench_reist_intrinsics_const.hpp"

#include <cstddef>
#include <cstdint>

namespace reist::bench::detail {

template <std::uint32_t Modulus>
inline void compiler_const_percent_impl(std::uint32_t* destination,
                                        const std::uint32_t* rhs,
                                        std::size_t count,
                                        std::size_t repetitions) noexcept {
    static_assert(Modulus > 0U);
    for (std::size_t repetition = 0U; repetition < repetitions;
         ++repetition) {
        for (std::size_t index = 0U; index < count; ++index) {
            const std::uint32_t sum =
                static_cast<std::uint32_t>(destination[index] + rhs[index]);
            destination[index] = static_cast<std::uint32_t>(sum % Modulus);
        }
    }
}

} // namespace reist::bench::detail

#if defined(_MSC_VER)
#define REIST_BENCH_CONST_IMPL_NOINLINE __declspec(noinline)
#elif defined(__GNUC__) || defined(__clang__)
#define REIST_BENCH_CONST_IMPL_NOINLINE __attribute__((noinline))
#else
#define REIST_BENCH_CONST_IMPL_NOINLINE
#endif

#define REIST_BENCH_CONST_KERNEL_NAME_INNER(modulus, suffix)                   \
    compiler_const_percent_##modulus##_##suffix
#define REIST_BENCH_CONST_KERNEL_NAME(modulus, suffix)                         \
    REIST_BENCH_CONST_KERNEL_NAME_INNER(modulus, suffix)
#define REIST_BENCH_CONST_SELECTOR_NAME_INNER(suffix)                          \
    compiler_const_kernel_##suffix
#define REIST_BENCH_CONST_SELECTOR_NAME(suffix)                                \
    REIST_BENCH_CONST_SELECTOR_NAME_INNER(suffix)

/// Define a single stable wrapper around one template instantiation.
#define REIST_BENCH_DEFINE_CONST_KERNEL(modulus_token, modulus_value, suffix)  \
    extern "C" REIST_BENCH_CONST_IMPL_NOINLINE void                           \
        REIST_BENCH_CONST_KERNEL_NAME(modulus_token, suffix)(                  \
            std::uint32_t* destination, const std::uint32_t* rhs,              \
            std::size_t count, std::size_t repetitions) noexcept {             \
        ::reist::bench::detail::compiler_const_percent_impl<modulus_value>(    \
            destination, rhs, count, repetitions);                             \
    }

/// Define one translation unit's stable wrappers and selector. All ISA
/// variants expand this same macro and therefore retain identical C++ source
/// semantics; only the translation-unit compiler flags may differ.
#define REIST_BENCH_DEFINE_CONST_KERNEL_SET(suffix)                            \
    REIST_BENCH_DEFINE_CONST_KERNEL(256, 256U, suffix)                         \
    REIST_BENCH_DEFINE_CONST_KERNEL(257, 257U, suffix)                         \
    REIST_BENCH_DEFINE_CONST_KERNEL(12289, 12'289U, suffix)                    \
    REIST_BENCH_DEFINE_CONST_KERNEL(65536, 65'536U, suffix)                    \
    REIST_BENCH_DEFINE_CONST_KERNEL(65537, 65'537U, suffix)                    \
    REIST_BENCH_DEFINE_CONST_KERNEL(1000000, 1'000'000U, suffix)               \
    REIST_BENCH_DEFINE_CONST_KERNEL(1000003, 1'000'003U, suffix)               \
    REIST_BENCH_DEFINE_CONST_KERNEL(1000000007, 1'000'000'007U, suffix)        \
    REIST_BENCH_DEFINE_CONST_KERNEL(2147483647, 2'147'483'647U, suffix)        \
    compiler_const_kernel REIST_BENCH_CONST_SELECTOR_NAME(suffix)(             \
        std::uint32_t modulus) noexcept {                                      \
        switch (modulus) {                                                     \
        case 256U:                                                             \
            return &REIST_BENCH_CONST_KERNEL_NAME(256, suffix);                \
        case 257U:                                                             \
            return &REIST_BENCH_CONST_KERNEL_NAME(257, suffix);                \
        case 12'289U:                                                          \
            return &REIST_BENCH_CONST_KERNEL_NAME(12289, suffix);              \
        case 65'536U:                                                          \
            return &REIST_BENCH_CONST_KERNEL_NAME(65536, suffix);              \
        case 65'537U:                                                          \
            return &REIST_BENCH_CONST_KERNEL_NAME(65537, suffix);              \
        case 1'000'000U:                                                       \
            return &REIST_BENCH_CONST_KERNEL_NAME(1000000, suffix);            \
        case 1'000'003U:                                                       \
            return &REIST_BENCH_CONST_KERNEL_NAME(1000003, suffix);            \
        case 1'000'000'007U:                                                   \
            return &REIST_BENCH_CONST_KERNEL_NAME(1000000007, suffix);         \
        case 2'147'483'647U:                                                   \
            return &REIST_BENCH_CONST_KERNEL_NAME(2147483647, suffix);         \
        default:                                                               \
            return nullptr;                                                    \
        }                                                                      \
    }
