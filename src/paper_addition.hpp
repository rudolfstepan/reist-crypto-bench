#pragma once

#include <cstddef>
#include <cstdint>
#include <type_traits>

#if defined(_MSC_VER)
#include <intrin.h>
#endif

namespace reist::paper {

enum class method { percent, bounded, centered };
enum class workload { serial, array, polynomial };

#if defined(_MSC_VER)
#define REIST_PAPER_NOINLINE __declspec(noinline)
#else
#define REIST_PAPER_NOINLINE __attribute__((noinline))
#endif

template <method Method>
using word =
    std::conditional_t<Method == method::centered, std::int32_t, std::uint32_t>;

// Contract: 1 <= B <= INT32_MAX and both operands already reduced in their
// respective representation. Unsigned sums fit uint32; centered sums fit int32.
template <method Method, std::uint32_t FixedModulus = 0>
inline word<Method> add(word<Method> a, word<Method> b,
                        std::uint32_t runtime_modulus) noexcept {
    constexpr bool centered = Method == method::centered;
    const auto modulus =
        static_cast<word<Method>>(FixedModulus == 0 ? runtime_modulus : FixedModulus);
    auto sum = static_cast<word<Method>>(a + b);
    if constexpr (Method == method::percent) {
        return sum % modulus;
    } else if constexpr (centered) {
        const auto lo = -(modulus / 2);
        const auto hi = modulus - modulus / 2;
        if (sum >= hi) {
            sum -= modulus;
        } else if (sum < lo) {
            sum += modulus;
        }
        return sum;
    } else {
        if (sum >= modulus) {
            sum -= modulus;
        }
        return sum;
    }
}

// All paths use the same loop structure and translation-unit ISA flags.
// Runtime and fixed-modulus instantiations are separate, non-inlined kernels.
template <method Method, std::uint32_t FixedModulus, workload Workload>
REIST_PAPER_NOINLINE void kernel(word<Method> *state, const word<Method> *steps,
                                 std::size_t count, std::size_t repetitions,
                                 std::uint32_t modulus) noexcept {
    if constexpr (Workload == workload::serial) {
        auto value = state[0];
        for (std::size_t repetition = 0; repetition < repetitions; ++repetition) {
            for (std::size_t i = 0; i < count; ++i) {
                value = add<Method, FixedModulus>(value, steps[i], modulus);
            }
        }
        state[0] = value;
    } else {
        for (std::size_t repetition = 0; repetition < repetitions; ++repetition) {
            for (std::size_t i = 0; i < count; ++i) {
                if constexpr (Workload == workload::polynomial) {
                    state[i] =
                        add<Method, FixedModulus>(steps[count + i], steps[i], modulus);
                } else {
                    state[i] = add<Method, FixedModulus>(state[i], steps[i], modulus);
                }
            }
            // Repeated polynomial stores must remain observable to the compiler.
#if defined(__GNUC__) || defined(__clang__)
            __asm__ __volatile__("" : : "g"(state) : "memory");
#elif defined(_MSC_VER)
            _ReadWriteBarrier();
#endif
        }
    }
}

} // namespace reist::paper
