#include "../examples/disassembly/examples.hpp"

#include <array>
#include <bit>
#include <fstream>
#include <iostream>
#include <limits>
#include <random>
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

using runtime_remainder = std::int64_t (*)(std::int64_t, std::int64_t);
using runtime_division = void (*)(std::int64_t, std::int64_t, std::int64_t *,
                                  std::int64_t *);
constexpr std::array<runtime_remainder, 3> remainders{
    signed_remainder_runtime, euclidean_remainder_runtime, reist_remainder_runtime};
constexpr std::array<runtime_division, 3> divisions{
    signed_division_runtime, euclidean_division_runtime, reist_division_runtime};

std::array<std::int64_t, 6> check_division(std::int64_t value, std::int64_t modulus) {
    // Unsigned magnitude is defined even for INT64_MIN; no negation of a signed
    // minimum and no potentially overflowing q * B reconstruction is needed.
    const auto bits = static_cast<std::uint64_t>(value);
    const auto magnitude = value < 0 ? std::uint64_t{0} - bits : bits;
    const auto residue =
        static_cast<std::int64_t>(magnitude % static_cast<std::uint64_t>(modulus));
    const std::int64_t signed_rest = value < 0 ? -residue : residue;
    const std::int64_t euclidean =
        value < 0 && residue != 0 ? modulus - residue : residue;
    const std::int64_t centered =
        euclidean >= modulus - modulus / 2 ? euclidean - modulus : euclidean;
    const std::array expected_remainders{signed_rest, euclidean, centered};
    const std::array constant_remainders{signed_remainder_constant,
                                         euclidean_remainder_constant,
                                         reist_remainder_constant};
    const std::array constant_divisions{
        signed_division_constant, euclidean_division_constant, reist_division_constant};
    std::array<std::int64_t, 6> results{};
    for (std::size_t i = 0; i < remainders.size(); ++i) {
        const auto expected_r = expected_remainders[i];
        // The difference is exactly 0 or +/-B, hence always representable.
        const auto expected_q = value / modulus + (signed_rest - expected_r) / modulus;
        auto &q = results[2 * i];
        auto &r = results[2 * i + 1];
        divisions[i](value, modulus, &q, &r);
        if (remainders[i](value, modulus) != expected_r || q != expected_q ||
            r != expected_r) {
            throw std::runtime_error(
                "runtime division/remainder differs from reference");
        }
        if (modulus == 257) {
            std::int64_t constant_q = 0;
            std::int64_t constant_r = 0;
            constant_divisions[i](value, &constant_q, &constant_r);
            if (constant_remainders[i](value) != expected_r ||
                constant_q != expected_q || constant_r != expected_r) {
                throw std::runtime_error(
                    "constant division/remainder differs from reference");
            }
        }
    }
    return results;
}

void check_general_division(const char *sample_path) {
    constexpr auto minimum = std::numeric_limits<std::int64_t>::min();
    constexpr auto maximum = std::numeric_limits<std::int64_t>::max();
    const std::array<std::int64_t, 17> values{
        minimum, minimum + 1, -514, -260, -257, -129, -128,        -1,     0,
        1,       128,         129,  256,  257,  260,  maximum - 1, maximum};
    const std::array<std::int64_t, 10> moduli{
        1, 2, 3, 5, 256, 257, 1000003, 2147483647, maximum - 1, maximum};
    std::ofstream samples;
    if (sample_path != nullptr) {
        samples.exceptions(std::ios::failbit | std::ios::badbit);
        samples.open(sample_path);
        samples
            << "value,modulus,cpp_q,cpp_r,euclidean_q,euclidean_r,reist_q,reist_r\n";
    }
    for (const auto modulus : moduli) {
        for (const auto value : values) {
            const auto result = check_division(value, modulus);
            if (sample_path != nullptr) {
                samples << value << ',' << modulus;
                for (const auto item : result) {
                    samples << ',' << item;
                }
                samples << '\n';
            }
        }
    }
    for (std::int64_t modulus = 1; modulus <= 257; ++modulus) {
        for (std::int64_t value = -1028; value <= 1028; ++value) {
            check_division(value, modulus);
        }
    }
    std::mt19937_64 random(0x5245495354ULL);
    for (int i = 0; i < 10000; ++i) {
        const auto value = std::bit_cast<std::int64_t>(random());
        const auto modulus =
            static_cast<std::int64_t>(random() % static_cast<std::uint64_t>(maximum)) +
            1;
        check_division(value, modulus);
        check_division(value, 257);
    }
    for (const std::int64_t invalid : {minimum, std::int64_t{-1}, std::int64_t{0}}) {
        for (const auto remainder : remainders) {
            bool rejected = false;
            try {
                (void)remainder(minimum, invalid);
            } catch (const std::invalid_argument &) {
                rejected = true;
            }
            if (!rejected) {
                throw std::runtime_error("remainder accepted a non-positive modulus");
            }
        }
        for (const auto division : divisions) {
            bool rejected = false;
            std::int64_t q = 42;
            std::int64_t r = 43;
            try {
                division(minimum, invalid, &q, &r);
            } catch (const std::invalid_argument &) {
                rejected = true;
            }
            if (!rejected || q != 42 || r != 43) {
                throw std::runtime_error(
                    "division failed to reject before writing outputs");
            }
        }
    }
    if (sample_path != nullptr) {
        samples.close();
    }
}

} // namespace

int main(int argc, char **argv) {
    try {
        if (argc > 2) {
            throw std::invalid_argument(
                "usage: disassembly_example_tests [samples.csv]");
        }
        check_general_division(argc == 2 ? argv[1] : nullptr);
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
        std::cout << "All 27 disassembly example functions passed.\n";
        return 0;
    } catch (const std::exception &error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
