#include <algorithm>
#include <chrono>
#include <cstdint>
#include <exception>
#include <iomanip>
#include <iostream>
#include <limits>
#include <vector>

#include "reist_mod.hpp"

namespace {

using Clock = std::chrono::steady_clock;

constexpr std::int64_t multiplier = 1'664'525;
constexpr std::int64_t increment = 1'013'904'223;
constexpr std::uint64_t seed = 0x1234567890abcdefULL;

volatile std::uint64_t benchmark_sink = 0;

std::uint64_t classic_step(std::uint64_t value, std::uint64_t modulus) {
    return (value * static_cast<std::uint64_t>(multiplier) +
            static_cast<std::uint64_t>(increment)) % modulus;
}

std::int64_t centered_step(std::int64_t value, std::int64_t modulus) {
    // The selected modulus range guarantees this exact signed expression does
    // not overflow. This is a centered post-transformation control, not the
    // division-free additive REIST kernel.
    const std::int64_t raw = value * multiplier + increment;
    return reist::center_remainder(raw, modulus);
}

bool congruent(std::uint64_t classic, std::int64_t centered,
               std::int64_t modulus) {
    const auto normalized = centered < 0 ? centered + modulus : centered;
    return classic == static_cast<std::uint64_t>(normalized);
}

bool preflight(std::uint64_t modulus, std::uint64_t iterations) {
    auto classic = seed % modulus;
    auto centered = reist::center_remainder(
        static_cast<std::int64_t>(classic),
        static_cast<std::int64_t>(modulus));

    for (std::uint64_t i = 0; i < iterations; ++i) {
        classic = classic_step(classic, modulus);
        centered = centered_step(centered, static_cast<std::int64_t>(modulus));
        if (!congruent(classic, centered, static_cast<std::int64_t>(modulus)) ||
            !reist::is_centered(centered,
                                static_cast<std::int64_t>(modulus))) {
            std::cerr << "Preflight failed for M=" << modulus
                      << " at iteration " << i << ": " << classic
                      << " / " << centered << '\n';
            return false;
        }
    }
    return true;
}

template <class Function>
double time_call(Function&& function) {
    const auto begin = Clock::now();
    function();
    const auto end = Clock::now();
    return std::chrono::duration<double>(end - begin).count();
}

}  // namespace

int main(int argc, char** argv) {
    try {
        std::uint64_t iterations = 100'000'000;
        std::vector<std::uint64_t> moduli{
            1'000'003ULL,
            10'000'019ULL,
            100'000'007ULL,
            1'000'000'007ULL,
        };

        if (argc >= 2) {
            iterations = std::stoull(argv[1]);
        }
        if (argc >= 3) {
            moduli.assign(1, std::stoull(argv[2]));
        }
        if (argc > 3 || iterations == 0) {
            std::cerr << "Usage: " << argv[0] << " [N>0] [M>0]\n";
            return 2;
        }

        const auto safe_limit = static_cast<std::uint64_t>(
            (std::numeric_limits<std::int64_t>::max() - increment) /
            multiplier);
        for (const auto modulus : moduli) {
            if (modulus == 0 || modulus > safe_limit) {
                std::cerr << "M must be in 1.." << safe_limit
                          << " so both recurrences remain overflow-free.\n";
                return 2;
            }
        }

        std::cout << std::fixed << std::setprecision(6);
        std::cout << "===================================================\n"
                  << "Hash-mixing negative control (runtime modulus)\n"
                  << "===================================================\n"
                  << "Both paths implement the same exact recurrence.\n"
                  << "The centered path still uses remainder division; it is\n"
                  << "not a division-free REIST accumulation benchmark.\n"
                  << "Iterations N = " << iterations << "\n\n";

        for (const auto modulus : moduli) {
            if (!preflight(modulus, std::min<std::uint64_t>(iterations, 4096))) {
                return 3;
            }

            std::uint64_t classic = seed % modulus;
            std::int64_t centered = reist::center_remainder(
                static_cast<std::int64_t>(classic),
                static_cast<std::int64_t>(modulus));

            const double classic_time = time_call([&] {
                for (std::uint64_t i = 0; i < iterations; ++i) {
                    classic = classic_step(classic, modulus);
                }
                benchmark_sink = classic;
            });

            const double centered_time = time_call([&] {
                for (std::uint64_t i = 0; i < iterations; ++i) {
                    centered = centered_step(
                        centered, static_cast<std::int64_t>(modulus));
                }
                benchmark_sink = static_cast<std::uint64_t>(centered);
            });

            if (!congruent(classic, centered,
                           static_cast<std::int64_t>(modulus))) {
                std::cerr << "Final-state mismatch for M=" << modulus << '\n';
                return 3;
            }

            std::cout << "M = " << modulus << '\n'
                      << "  classic  : " << classic_time << " s\n"
                      << "  centered : " << centered_time << " s\n";
            if (centered_time > 0.0) {
                std::cout << "  ratio    : "
                          << (classic_time / centered_time)
                          << "x (classic / centered)\n";
            }
            std::cout << "  sinks    : " << classic << " / "
                      << centered << "\n\n";
        }

        return 0;
    } catch (const std::exception& error) {
        std::cerr << "Invalid argument or benchmark failure: "
                  << error.what() << '\n';
        return 2;
    }
}
