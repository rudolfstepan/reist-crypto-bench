#include "reist_intrinsics_backend.hpp"

#if REIST_HAVE_AVX2_BACKEND
#include "reist_intrinsics_avx2.hpp"
#endif

#if REIST_HAVE_NEON_BACKEND
#include "reist_intrinsics_neon.hpp"
#endif

#include <stdexcept>
#include <utility>
#include <vector>

#if REIST_HAVE_AVX2_BACKEND && \
    (defined(_M_X64) || defined(_M_IX86) || defined(__x86_64__) || \
     defined(__i386__))
#define REIST_DISPATCH_X86 1
#else
#define REIST_DISPATCH_X86 0
#endif

#if REIST_DISPATCH_X86 && defined(_MSC_VER)
#include <intrin.h>
#endif

namespace reist {
namespace detail {
namespace {

[[maybe_unused]] [[nodiscard]] bool detect_avx2() noexcept {
#if REIST_DISPATCH_X86 && defined(_MSC_VER)
    int registers[4]{};
    __cpuidex(registers, 0, 0);
    if (registers[0] < 7) {
        return false;
    }

    __cpuidex(registers, 1, 0);
    constexpr int osxsave_bit = 1 << 27;
    constexpr int avx_bit = 1 << 28;
    if ((registers[2] & osxsave_bit) == 0 ||
        (registers[2] & avx_bit) == 0) {
        return false;
    }

    constexpr unsigned long long xmm_ymm_state = 0x6ULL;
    const unsigned long long enabled_state = _xgetbv(0);
    if ((enabled_state & xmm_ymm_state) != xmm_ymm_state) {
        return false;
    }

    __cpuidex(registers, 7, 0);
    constexpr int avx2_bit = 1 << 5;
    return (registers[1] & avx2_bit) != 0;
#elif REIST_DISPATCH_X86 && (defined(__GNUC__) || defined(__clang__))
    __builtin_cpu_init();
    return __builtin_cpu_supports("avx2") != 0;
#else
    return false;
#endif
}

[[nodiscard]] bool avx2_available() noexcept {
#if REIST_HAVE_AVX2_BACKEND
    static const bool available = detect_avx2();
    return available;
#else
    return false;
#endif
}

[[nodiscard]] bool neon_available() noexcept {
#if REIST_HAVE_NEON_BACKEND && \
    (defined(__aarch64__) || defined(_M_ARM64) || defined(__ARM_NEON) || \
     defined(__ARM_NEON__))
    return true;
#else
    return false;
#endif
}

[[nodiscard]] constexpr std::int32_t centered_lower(
    std::int32_t modulus) noexcept {
    return -(modulus / 2);
}

[[nodiscard]] constexpr std::int32_t centered_upper(
    std::int32_t modulus) noexcept {
    return (modulus - 1) / 2;
}

[[nodiscard]] constexpr std::int32_t add_centered_i32(
    std::int32_t lhs,
    std::int32_t rhs,
    std::int32_t modulus) noexcept {
    std::int32_t sum = static_cast<std::int32_t>(lhs + rhs);
    if (sum > centered_upper(modulus)) {
        sum = static_cast<std::int32_t>(sum - modulus);
    } else if (sum < centered_lower(modulus)) {
        sum = static_cast<std::int32_t>(sum + modulus);
    }
    return sum;
}

} // namespace

void add_i32_compiler_auto_portable(std::int32_t* destination,
                                    const std::int32_t* rhs,
                                    std::size_t count,
                                    std::size_t repetitions,
                                    std::int32_t modulus) noexcept {
    for (std::size_t repetition = 0; repetition < repetitions;
         ++repetition) {
        for (std::size_t index = 0; index < count; ++index) {
            destination[index] =
                add_centered_i32(destination[index], rhs[index], modulus);
        }
    }
}

bool explicit_backend_available() noexcept {
    return avx2_available() || neon_available();
}

const char* explicit_backend_name() noexcept {
    if (avx2_available()) {
        return "avx2";
    }
    if (neon_available()) {
        return "neon";
    }
    return "unavailable";
}

void require_backend(intrinsic_backend backend) {
    switch (backend) {
    case intrinsic_backend::automatic:
    case intrinsic_backend::compiler_auto:
        return;
    case intrinsic_backend::explicit_simd:
        if (explicit_backend_available()) {
            return;
        }
        throw std::runtime_error(
            "REIST explicit SIMD backend is unavailable on this CPU/build");
    }
    throw std::invalid_argument("unknown REIST intrinsic backend");
}

void dispatch_add_i32(std::int32_t* destination,
                      const std::int32_t* rhs,
                      std::size_t count,
                      std::size_t repetitions,
                      std::int32_t modulus,
                      intrinsic_backend backend) {
    require_backend(backend);

    if (backend == intrinsic_backend::automatic) {
        if (avx2_available()) {
#if REIST_HAVE_AVX2_BACKEND
            add_i32_explicit_avx2(destination, rhs, count, repetitions,
                                  modulus);
            return;
#endif
        }
        if (neon_available()) {
#if REIST_HAVE_NEON_BACKEND
            add_i32_explicit_neon(destination, rhs, count, repetitions,
                                  modulus);
            return;
#endif
        }
        add_i32_compiler_auto_portable(destination, rhs, count, repetitions,
                                       modulus);
        return;
    }

    if (backend == intrinsic_backend::compiler_auto) {
        // When an ISA backend is usable, its plain C++ kernel is deliberately
        // selected from the same translation unit and with the same compiler
        // flags as the explicit intrinsic kernel. This keeps comparisons fair.
        if (avx2_available()) {
#if REIST_HAVE_AVX2_BACKEND
            add_i32_compiler_auto_avx2(destination, rhs, count, repetitions,
                                       modulus);
            return;
#endif
        }
        if (neon_available()) {
#if REIST_HAVE_NEON_BACKEND
            add_i32_compiler_auto_neon(destination, rhs, count, repetitions,
                                       modulus);
            return;
#endif
        }
        add_i32_compiler_auto_portable(destination, rhs, count, repetitions,
                                       modulus);
        return;
    }

    if (backend == intrinsic_backend::explicit_simd) {
        if (avx2_available()) {
#if REIST_HAVE_AVX2_BACKEND
            add_i32_explicit_avx2(destination, rhs, count, repetitions,
                                  modulus);
            return;
#endif
        }
        if (neon_available()) {
#if REIST_HAVE_NEON_BACKEND
            add_i32_explicit_neon(destination, rhs, count, repetitions,
                                  modulus);
            return;
#endif
        }
        throw std::logic_error(
            "validated REIST explicit SIMD backend disappeared");
    }

    throw std::logic_error("validated REIST intrinsic backend was not handled");
}

} // namespace detail

prepared_i32_batch& prepared_i32_batch::operator=(
    const prepared_i32_batch& other) {
    if (this == &other) {
        return *this;
    }

    // Copy first so an allocation failure leaves both the modulus and its
    // canonical values unchanged. Swapping the completed storage cannot fail.
    std::vector<std::int32_t> replacement = other.values_;
    values_.swap(replacement);
    modulus_ = other.modulus_;
    return *this;
}

modulus_i32::modulus_i32(std::int32_t modulus) : modulus_(modulus) {
    if (modulus <= 0) {
        throw std::invalid_argument("REIST modulus_i32 must be positive");
    }
}

value_i32 modulus_i32::value(std::int64_t input) const noexcept {
    const std::int64_t wide_modulus = static_cast<std::int64_t>(modulus_);
    std::int64_t centered = input % wide_modulus;
    if (centered < 0) {
        centered += wide_modulus;
    }

    const std::int64_t upper_half_begin =
        (wide_modulus / 2) + (wide_modulus % 2);
    if (centered >= upper_half_begin) {
        centered -= wide_modulus;
    }
    return value_i32{static_cast<std::int32_t>(centered), modulus_};
}

value_i32 modulus_i32::add(value_i32 lhs, value_i32 rhs) const {
    require_context(lhs);
    require_context(rhs);

    std::int32_t sum = static_cast<std::int32_t>(lhs.centered() +
                                                  rhs.centered());
    if (sum > upper_bound()) {
        sum = static_cast<std::int32_t>(sum - modulus_);
    } else if (sum < lower_bound()) {
        sum = static_cast<std::int32_t>(sum + modulus_);
    }
    return value_i32{sum, modulus_};
}

value_i32 modulus_i32::add(std::int64_t lhs, std::int64_t rhs) const {
    return add(value(lhs), value(rhs));
}

prepared_i32_batch
modulus_i32::prepare(std::span<const std::int32_t> input) const {
    std::vector<std::int32_t> centered;
    centered.reserve(input.size());
    for (const std::int32_t item : input) {
        centered.push_back(value(static_cast<std::int64_t>(item)).centered());
    }
    return prepared_i32_batch{modulus_, std::move(centered)};
}

prepared_i32_batch modulus_i32::filled(std::size_t count,
                                       std::int32_t input) const {
    return filled(count, value(static_cast<std::int64_t>(input)));
}

prepared_i32_batch modulus_i32::filled(std::size_t count,
                                       value_i32 input) const {
    require_context(input);
    return prepared_i32_batch{
        modulus_, std::vector<std::int32_t>(count, input.centered())};
}

void modulus_i32::add_inplace(prepared_i32_batch& destination,
                              const prepared_i32_batch& rhs,
                              std::size_t repetitions,
                              intrinsic_backend backend) const {
    require_context(destination);
    require_context(rhs);
    if (destination.size() != rhs.size()) {
        throw std::invalid_argument(
            "REIST batch addition requires equal batch sizes");
    }

    // Validate the policy before a possible self-alias snapshot so an invalid
    // or unavailable explicit backend fails immediately and predictably.
    detail::require_backend(backend);
    if (repetitions == 0U || destination.empty()) {
        return;
    }

    // Preserve the natural "add this rhs repeatedly" contract for
    // add_inplace(batch, batch, repetitions). Without the snapshot, rhs would
    // observe destination's mutations and each repetition would double it.
    if (static_cast<const prepared_i32_batch*>(&destination) == &rhs) {
        const prepared_i32_batch rhs_snapshot = rhs;
        detail::dispatch_add_i32(destination.values_.data(),
                                 rhs_snapshot.values_.data(),
                                 destination.size(), repetitions, modulus_,
                                 backend);
        return;
    }

    detail::dispatch_add_i32(destination.values_.data(), rhs.values_.data(),
                             destination.size(), repetitions, modulus_,
                             backend);
}

std::vector<std::int32_t>
modulus_i32::residues(const prepared_i32_batch& batch) const {
    require_context(batch);
    std::vector<std::int32_t> conventional;
    conventional.reserve(batch.size());
    for (const std::int32_t centered : batch.values_) {
        conventional.push_back(
            centered < 0 ? static_cast<std::int32_t>(centered + modulus_)
                         : centered);
    }
    return conventional;
}

void modulus_i32::require_context(const prepared_i32_batch& batch) const {
    if (batch.modulus_ != modulus_) {
        throw std::invalid_argument(
            "REIST prepared batch belongs to another modulus context");
    }
}

void modulus_i32::require_context(value_i32 input) const {
    if (input.modulus() != modulus_) {
        throw std::invalid_argument(
            "REIST value belongs to another modulus context");
    }
}

bool intrinsic_backend_available(intrinsic_backend backend) noexcept {
    switch (backend) {
    case intrinsic_backend::automatic:
    case intrinsic_backend::compiler_auto:
        return true;
    case intrinsic_backend::explicit_simd:
        return detail::explicit_backend_available();
    }
    return false;
}

const char* intrinsic_backend_name(intrinsic_backend backend) noexcept {
    switch (backend) {
    case intrinsic_backend::automatic:
        return "automatic";
    case intrinsic_backend::compiler_auto:
        return "compiler-auto";
    case intrinsic_backend::explicit_simd:
        return "explicit-simd";
    }
    return "unknown";
}

bool explicit_simd_available() noexcept {
    return detail::explicit_backend_available();
}

const char* explicit_simd_backend_name() noexcept {
    return detail::explicit_backend_name();
}

} // namespace reist
