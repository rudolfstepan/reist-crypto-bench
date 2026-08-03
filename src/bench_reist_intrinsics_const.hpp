#pragma once

#include <cstddef>
#include <cstdint>

/// Signature shared by the compile-time-constant `%` benchmark kernels.
///
/// Each kernel performs, for every repetition and lane:
///   destination[i] = (destination[i] + rhs[i]) % constant_modulus
/// using uint32_t source semantics. The caller owns both arrays and must make
/// at least `count` elements available whenever `repetitions` is nonzero.
using compiler_const_kernel = void (*)(std::uint32_t* destination,
                                       const std::uint32_t* rhs,
                                       std::size_t count,
                                       std::size_t repetitions) noexcept;

/// Select a baseline-ISA translation-unit kernel for a supported modulus.
/// Unknown moduli return nullptr.
[[nodiscard]] compiler_const_kernel
compiler_const_kernel_portable(std::uint32_t modulus) noexcept;

/// Select a kernel compiled in the AVX2 translation unit.
/// Unknown moduli return nullptr; runtime ISA safety remains the caller's job.
[[nodiscard]] compiler_const_kernel
compiler_const_kernel_avx2(std::uint32_t modulus) noexcept;

/// Select a kernel compiled in the NEON translation unit.
/// Unknown moduli return nullptr; runtime ISA safety remains the caller's job.
[[nodiscard]] compiler_const_kernel
compiler_const_kernel_neon(std::uint32_t modulus) noexcept;

#if defined(_MSC_VER)
#define REIST_BENCH_CONST_NOINLINE __declspec(noinline)
#elif defined(__GNUC__) || defined(__clang__)
#define REIST_BENCH_CONST_NOINLINE __attribute__((noinline))
#else
#define REIST_BENCH_CONST_NOINLINE
#endif

// Stable C-linkage symbols make compiler-generated code directly inspectable
// in COFF, ELF, and Mach-O artifacts without relying on C++ name demangling.
extern "C" {

REIST_BENCH_CONST_NOINLINE void compiler_const_percent_256_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_257_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_12289_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_65536_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_65537_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000000_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000003_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000000007_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_2147483647_portable(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;

REIST_BENCH_CONST_NOINLINE void compiler_const_percent_256_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_257_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_12289_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_65536_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_65537_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000000_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000003_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000000007_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_2147483647_avx2(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;

REIST_BENCH_CONST_NOINLINE void compiler_const_percent_256_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_257_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_12289_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_65536_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_65537_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000000_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000003_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_1000000007_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;
REIST_BENCH_CONST_NOINLINE void compiler_const_percent_2147483647_neon(
    std::uint32_t*, const std::uint32_t*, std::size_t, std::size_t) noexcept;

} // extern "C"

#undef REIST_BENCH_CONST_NOINLINE
