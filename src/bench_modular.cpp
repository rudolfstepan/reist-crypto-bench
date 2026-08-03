#include <bit>
#include <chrono>
#include <cstdint>
#include <exception>
#include <iomanip>
#include <iostream>
#include <limits>
#include <random>
#include <string>
#include <vector>

#include "reist_mod.hpp"

namespace {

using Clock = std::chrono::steady_clock;

volatile std::uint64_t benchmark_sink = 0;

template <class Function>
double time_call(Function&& function) {
    const auto begin = Clock::now();
    function();
    const auto end = Clock::now();
    return std::chrono::duration<double>(end - begin).count();
}

std::uint64_t classic_checksum(const std::vector<std::int64_t>& inputs,
                               std::int64_t modulus) {
    std::uint64_t checksum = 0;
    for (const auto value : inputs) {
        checksum += static_cast<std::uint64_t>(
            reist::classic_remainder(value, modulus));
    }
    return checksum;
}

std::uint64_t centered_checksum(const std::vector<std::int64_t>& inputs,
                                std::int64_t modulus) {
    std::uint64_t checksum = 0;
    for (const auto value : inputs) {
        checksum += static_cast<std::uint64_t>(
            reist::center_remainder(value, modulus));
    }
    return checksum;
}

bool preflight(const std::vector<std::int64_t>& inputs, std::int64_t modulus) {
    for (const auto value : inputs) {
        const auto classic = reist::classic_remainder(value, modulus);
        const auto centered = reist::center_remainder(value, modulus);
        const auto normalized_centered =
            centered < 0 ? centered + modulus : centered;

        if (classic != normalized_centered ||
            !reist::is_centered(centered, modulus)) {
            std::cerr << "Preflight failed for T=" << value
                      << ", B=" << modulus << ", classic=" << classic
                      << ", centered=" << centered << '\n';
            return false;
        }
    }
    return true;
}

}  // namespace

int main(int argc, char** argv) {
    try {
        std::int64_t modulus = 257;
        std::uint64_t count = 5'000'000;

        if (argc >= 2) {
            modulus = std::stoll(argv[1]);
        }
        if (argc >= 3) {
            count = std::stoull(argv[2]);
        }
        if (argc > 3 || modulus <= 0 || count == 0 ||
            count > static_cast<std::uint64_t>(
                        std::numeric_limits<std::size_t>::max())) {
            std::cerr << "Usage: " << argv[0] << " [B>0] [N>0]\n";
            return 2;
        }

        // Generate one deterministic, full-width signed data set outside the
        // timed region. Both kernels consume exactly the same values.
        std::mt19937_64 rng(0xBEEF);
        std::vector<std::int64_t> inputs(static_cast<std::size_t>(count));
        for (auto& value : inputs) {
            value = std::bit_cast<std::int64_t>(rng());
        }

        if (!preflight(inputs, modulus)) {
            return 3;
        }

        std::uint64_t classic_sink = 0;
        std::uint64_t centered_sink = 0;

        const double classic_time = time_call([&] {
            classic_sink = classic_checksum(inputs, modulus);
            benchmark_sink = classic_sink;
        });
        const double centered_time = time_call([&] {
            centered_sink = centered_checksum(inputs, modulus);
            benchmark_sink = centered_sink;
        });

        std::cout << std::fixed << std::setprecision(6);
        std::cout << "========================================\n"
                  << "Pure remainder control (runtime modulus)\n"
                  << "========================================\n"
                  << "B = " << modulus << ", N = " << count << "\n"
                  << "Input domain: deterministic full-width signed int64\n"
                  << "RNG and allocation are outside the timed regions.\n\n"
                  << "classic  : " << classic_time << " s\n"
                  << "centered : " << centered_time << " s\n";
        if (centered_time > 0.0) {
            std::cout << "Ratio    : " << (classic_time / centered_time)
                      << "x (classic / centered)\n";
        }
        std::cout << "sinks    : " << classic_sink << " / "
                  << centered_sink << '\n';

        return 0;
    } catch (const std::exception& error) {
        std::cerr << "Invalid argument or benchmark failure: "
                  << error.what() << '\n';
        return 2;
    }
}
