#include "../examples/disassembly/examples.hpp"

#include <array>
#include <iostream>
#include <stdexcept>
#include <vector>

namespace {

std::int32_t center(std::uint32_t value, std::uint32_t modulus) {
    const std::int64_t wide = value;
    return static_cast<std::int32_t>(value >= modulus - modulus / 2 ? wide - modulus
                                                                    : wide);
}

void check(std::uint32_t a, std::uint32_t b, std::uint32_t modulus,
           std::uint32_t percent, std::uint32_t bounded, std::int32_t centered) {
    const auto expected =
        static_cast<std::uint32_t>((static_cast<std::uint64_t>(a) + b) % modulus);
    if (percent != expected || bounded != expected ||
        centered != center(expected, modulus)) {
        throw std::runtime_error("single-addition example differs from reference");
    }
}

void check_runtime(std::uint32_t a, std::uint32_t b, std::uint32_t modulus) {
    check(a, b, modulus, runtime_percent(a, b, modulus), runtime_bounded(a, b, modulus),
          runtime_centered(center(a, modulus), center(b, modulus), modulus));
}

void check_loops(std::size_t count) {
    constexpr std::uint32_t modulus = 257;
    std::vector<std::uint32_t> steps(count);
    std::vector<std::uint32_t> state(count);
    std::vector<std::int32_t> centered_steps(count);
    std::vector<std::int32_t> centered_state(count);
    std::vector<std::uint32_t> expected(count);
    std::uint32_t serial_expected = 256;
    for (std::size_t i = 0; i < count; ++i) {
        steps[i] = static_cast<std::uint32_t>((i * 131 + 128) % modulus);
        state[i] = static_cast<std::uint32_t>((i * 73 + 256) % modulus);
        centered_steps[i] = center(steps[i], modulus);
        centered_state[i] = center(state[i], modulus);
        expected[i] = static_cast<std::uint32_t>(
            (static_cast<std::uint64_t>(state[i]) + steps[i]) % modulus);
        serial_expected = static_cast<std::uint32_t>(
            (static_cast<std::uint64_t>(serial_expected) + steps[i]) % modulus);
    }
    if (serial_percent(256, steps.data(), count) != serial_expected ||
        serial_bounded(256, steps.data(), count) != serial_expected ||
        serial_centered(-1, centered_steps.data(), count) !=
            center(serial_expected, modulus)) {
        throw std::runtime_error("serial example differs from reference");
    }
    auto bounded_state = state;
    array_percent(state.data(), steps.data(), count);
    array_bounded(bounded_state.data(), steps.data(), count);
    array_centered(centered_state.data(), centered_steps.data(), count);
    for (std::size_t i = 0; i < count; ++i) {
        if (state[i] != expected[i] || bounded_state[i] != expected[i] ||
            centered_state[i] != center(expected[i], modulus)) {
            throw std::runtime_error("array example differs from reference");
        }
    }
}

} // namespace

int main() {
    try {
        for (std::uint32_t modulus = 1; modulus <= 64; ++modulus) {
            for (std::uint32_t a = 0; a < modulus; ++a) {
                for (std::uint32_t b = 0; b < modulus; ++b) {
                    check_runtime(a, b, modulus);
                }
            }
        }
        for (const std::uint32_t modulus : {256U, 257U, 1000003U, 2147483647U}) {
            const std::array<std::uint32_t, 6> edges{
                0, 1, modulus / 2, modulus - modulus / 2, modulus - 2, modulus - 1};
            for (const auto a : edges) {
                for (const auto b : edges) {
                    check_runtime(a, b, modulus);
                }
            }
        }
        for (std::uint32_t a = 0; a < 257; ++a) {
            for (std::uint32_t b = 0; b < 257; ++b) {
                check(a, b, 257, constant_percent(a, b), constant_bounded(a, b),
                      constant_centered(center(a, 257), center(b, 257)));
                if (a < 256 && b < 256) {
                    check(a, b, 256, power2_percent(a, b), power2_bounded(a, b),
                          power2_centered(center(a, 256), center(b, 256)));
                }
            }
        }
        for (const std::size_t count : {0U, 1U, 3U, 17U, 65U, 1024U}) {
            check_loops(count);
        }
        array_percent(nullptr, nullptr, 0);
        array_bounded(nullptr, nullptr, 0);
        array_centered(nullptr, nullptr, 0);
        if (serial_percent(256, nullptr, 0) != 256 ||
            serial_bounded(256, nullptr, 0) != 256 ||
            serial_centered(-1, nullptr, 0) != -1) {
            throw std::runtime_error("empty serial loop changed its initial state");
        }
        std::cout << "All 15 disassembly example functions passed.\n";
        return 0;
    } catch (const std::exception &error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
