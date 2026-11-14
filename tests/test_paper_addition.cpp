#include "paper_addition.hpp"

#include <array>
#include <iostream>
#include <stdexcept>

namespace {
using namespace reist::paper;

std::int32_t centered(std::uint32_t value, std::uint32_t modulus) {
    return static_cast<std::int32_t>(value >= modulus - modulus / 2
                                         ? static_cast<std::int64_t>(value) - modulus
                                         : value);
}

template <std::uint32_t FixedModulus = 0>
void check(std::uint32_t a, std::uint32_t b, std::uint32_t modulus) {
    const auto expected = (static_cast<std::uint64_t>(a) + b) % modulus;
    const auto result = add<method::centered, FixedModulus>(
        centered(a, modulus), centered(b, modulus), modulus);
    if (add<method::percent, FixedModulus>(a, b, modulus) != expected ||
        add<method::bounded, FixedModulus>(a, b, modulus) != expected ||
        result != centered(static_cast<std::uint32_t>(expected), modulus)) {
        throw std::runtime_error("paper addition mismatch");
    }
}
} // namespace

int main() {
    try {
        for (std::uint32_t modulus = 1; modulus <= 128; ++modulus) {
            for (std::uint32_t a = 0; a < modulus; ++a) {
                for (std::uint32_t b = 0; b < modulus; ++b) {
                    check(a, b, modulus);
                }
            }
        }
        for (const std::uint32_t modulus :
             {256U, 257U, 12289U, 1000003U, 1000000007U, 2147483647U}) {
            const std::array<std::uint32_t, 6> edges{
                0, 1, modulus / 2, modulus - modulus / 2, modulus - 2, modulus - 1};
            for (const auto a : edges) {
                for (const auto b : edges) {
                    check(a, b, modulus);
                    if (modulus == 2147483647U) {
                        check<2147483647U>(a, b, modulus);
                    }
                }
            }
        }
        std::cout << "Exhaustive small moduli and full-width boundary tests passed.\n";
        return 0;
    } catch (const std::exception &error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
