#pragma once

#include <cstddef>
#include <cstdint>
#include <span>
#include <utility>
#include <vector>

namespace reist {

/// Select how a prepared batch is updated.
///
/// `automatic` is the application-facing default. It uses an explicit SIMD
/// implementation when one was built and is safe on the running CPU, and a
/// portable compiler-optimizable loop otherwise. `compiler_auto` selects the
/// plain C++ loop deliberately, while `explicit_simd` requires a usable SIMD
/// backend and throws std::runtime_error when none is available.
enum class intrinsic_backend {
    automatic,
    compiler_auto,
    explicit_simd,
};

class modulus_i32;

/// A canonical centered residue together with its modulus context.
class value_i32 final {
public:
    [[nodiscard]] constexpr std::int32_t remainder() const noexcept {
        return remainder_ < 0 ? remainder_ + modulus_ : remainder_;
    }

    [[nodiscard]] constexpr std::int32_t centered() const noexcept {
        return remainder_;
    }

    [[nodiscard]] constexpr std::int32_t modulus() const noexcept {
        return modulus_;
    }

    friend constexpr bool operator==(const value_i32&,
                                     const value_i32&) = default;

private:
    friend class modulus_i32;

    constexpr value_i32(std::int32_t remainder,
                        std::int32_t modulus) noexcept
        : remainder_(remainder), modulus_(modulus) {}

    std::int32_t remainder_{};
    std::int32_t modulus_{};
};

/// Owned, canonical input prepared for repeated REIST additions.
///
/// The modulus travels with the storage. Batches can only be created by a
/// modulus_i32 context, and operations reject batches from another context.
class prepared_i32_batch final {
public:
    prepared_i32_batch(const prepared_i32_batch&) = default;
    prepared_i32_batch(prepared_i32_batch&&) noexcept = default;
    prepared_i32_batch& operator=(const prepared_i32_batch& other);
    prepared_i32_batch& operator=(prepared_i32_batch&&) noexcept = default;

    [[nodiscard]] std::size_t size() const noexcept { return values_.size(); }
    [[nodiscard]] bool empty() const noexcept { return values_.empty(); }
    [[nodiscard]] std::int32_t modulus() const noexcept { return modulus_; }

    [[nodiscard]] std::span<const std::int32_t> centered_values() const noexcept {
        return values_;
    }

private:
    friend class modulus_i32;

    prepared_i32_batch(std::int32_t modulus,
                       std::vector<std::int32_t> values) noexcept
        : modulus_(modulus), values_(std::move(values)) {}

    std::int32_t modulus_{};
    std::vector<std::int32_t> values_;
};

/// Developer-facing context for canonical 32-bit REIST values and batches.
class modulus_i32 final {
public:
    /// Construct a context for 1 <= modulus <= INT32_MAX.
    explicit modulus_i32(std::int32_t modulus);

    [[nodiscard]] constexpr std::int32_t modulus() const noexcept {
        return modulus_;
    }

    [[nodiscard]] constexpr std::int32_t lower_bound() const noexcept {
        return -(modulus_ / 2);
    }

    [[nodiscard]] constexpr std::int32_t upper_bound() const noexcept {
        return (modulus_ - 1) / 2;
    }

    /// Canonicalize an arbitrary signed 64-bit integer for this modulus.
    [[nodiscard]] value_i32 value(std::int64_t input) const noexcept;

    /// Add two values already associated with this modulus.
    [[nodiscard]] value_i32 add(value_i32 lhs, value_i32 rhs) const;

    /// Canonicalize and add ordinary integers in one call.
    [[nodiscard]] value_i32 add(std::int64_t lhs, std::int64_t rhs) const;

    /// Copy and canonicalize application input into an owned batch.
    [[nodiscard]] prepared_i32_batch
    prepare(std::span<const std::int32_t> input) const;

    /// Construct a batch containing `count` copies of a canonicalized value.
    [[nodiscard]] prepared_i32_batch filled(std::size_t count,
                                            std::int32_t input) const;

    /// Construct a batch containing `count` copies of a contextual value.
    [[nodiscard]] prepared_i32_batch filled(std::size_t count,
                                            value_i32 input) const;

    /// Repeatedly add corresponding rhs lanes to destination lanes. The rhs
    /// values remain fixed even when destination and rhs name the same batch.
    void add_inplace(prepared_i32_batch& destination,
                     const prepared_i32_batch& rhs,
                     std::size_t repetitions = 1,
                     intrinsic_backend backend =
                         intrinsic_backend::automatic) const;

    /// Return conventional non-negative residues in [0, modulus).
    /// Use batch.centered_values() for the zero-copy centered representation.
    [[nodiscard]] std::vector<std::int32_t>
    residues(const prepared_i32_batch& batch) const;

private:
    void require_context(const prepared_i32_batch& batch) const;
    void require_context(value_i32 input) const;

    std::int32_t modulus_;
};

/// Whether the requested policy can execute on this process and CPU.
[[nodiscard]] bool
intrinsic_backend_available(intrinsic_backend backend) noexcept;

/// Stable policy name ("automatic", "compiler-auto", or "explicit-simd").
[[nodiscard]] const char*
intrinsic_backend_name(intrinsic_backend backend) noexcept;

/// Whether a compiled explicit AVX2 or NEON implementation is usable now.
[[nodiscard]] bool explicit_simd_available() noexcept;

/// The usable explicit ISA name ("avx2", "neon", or "unavailable").
[[nodiscard]] const char* explicit_simd_backend_name() noexcept;

} // namespace reist
