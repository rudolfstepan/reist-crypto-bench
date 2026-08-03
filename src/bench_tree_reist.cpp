#include "reist_mod.hpp"

#include <algorithm>
#include <array>
#include <bit>
#include <chrono>
#include <cstdint>
#include <exception>
#include <iomanip>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>

namespace {

using Clock = std::chrono::steady_clock;

// This is an algorithmic diagnostic.  The vector-backed reduction tree models
// dependency depth; it is not a claim that a scalar CPU executes its nodes in
// parallel or that its wall-clock time predicts an FPGA implementation.
class TreeContext {
public:
    explicit TreeContext(std::int64_t modulus)
        : modulus_(modulus) {
        constexpr std::int64_t maximum_modulus = std::int64_t{1} << 20;
        if (modulus_ < 3 || modulus_ > maximum_modulus) {
            throw std::invalid_argument(
                "experimental tree modulus must satisfy 3 <= B <= 2^20");
        }
        lower_ = -(modulus_ / 2);
        upper_ = (modulus_ - 1) / 2;
        reciprocal_ = static_cast<std::uint64_t>(radix_) /
                      static_cast<std::uint64_t>(modulus_);
        if (reciprocal_ == 0) {
            throw std::logic_error("fixed-point reciprocal is zero");
        }
    }

    [[nodiscard]] std::int64_t modulus() const noexcept { return modulus_; }
    [[nodiscard]] std::int64_t lower() const noexcept { return lower_; }
    [[nodiscard]] std::int64_t upper() const noexcept { return upper_; }

    [[nodiscard]] std::int64_t approximate_quotient(
        std::int32_t value) const noexcept {
        // value is int32 and reciprocal <= 2^20/3, so this product is far
        // inside int64.  Explicit floor division avoids implementation-defined
        // right shifts of negative signed integers.
        const std::int64_t product =
            static_cast<std::int64_t>(value) *
            static_cast<std::int64_t>(reciprocal_);
        return product >= 0
                   ? product / radix_
                   : -(((-product) + radix_ - 1) / radix_);
    }

    [[nodiscard]] std::int64_t initial_remainder(
        std::int32_t value) const noexcept {
        const std::int64_t quotient = approximate_quotient(value);
        return static_cast<std::int64_t>(value) - quotient * modulus_;
    }

    [[nodiscard]] std::int64_t correction_count(
        std::int64_t remainder) const noexcept {
        if (remainder > upper_) {
            return 1 + (remainder - upper_ - 1) / modulus_;
        }
        if (remainder < lower_) {
            return -(1 + (lower_ - remainder - 1) / modulus_);
        }
        return 0;
    }

private:
    static constexpr std::int64_t radix_ = std::int64_t{1} << 20;
    std::int64_t modulus_;
    std::int64_t lower_ = 0;
    std::int64_t upper_ = 0;
    std::uint64_t reciprocal_ = 0;
};

[[nodiscard]] std::uint64_t correction_magnitude(std::int64_t count) noexcept {
    return count < 0
               ? static_cast<std::uint64_t>(-(count + 1)) + 1U
               : static_cast<std::uint64_t>(count);
}

[[nodiscard]] std::int64_t reduce_linear(std::int32_t value,
                                         const TreeContext& context) noexcept {
    std::int64_t remainder = context.initial_remainder(value);
    while (remainder > context.upper()) {
        remainder -= context.modulus();
    }
    while (remainder < context.lower()) {
        remainder += context.modulus();
    }
    return remainder;
}

[[nodiscard]] std::int64_t tree_sum(std::int64_t correction_count,
                                    std::int64_t modulus) {
    const std::uint64_t count = correction_magnitude(correction_count);
    constexpr std::uint64_t maximum_terms = 1'000'000;
    if (count > maximum_terms) {
        throw std::length_error(
            "experimental correction tree exceeds one million terms");
    }
    if (count == 0) {
        return 0;
    }

    const std::int64_t term = correction_count > 0 ? modulus : -modulus;
    std::vector<std::int64_t> level(static_cast<std::size_t>(count), term);
    while (level.size() > 1) {
        std::size_t output = 0;
        std::size_t input = 0;
        for (; input + 1 < level.size(); input += 2) {
            level[output++] = level[input] + level[input + 1];
        }
        if (input < level.size()) {
            level[output++] = level[input];
        }
        level.resize(output);
    }
    return level.front();
}

[[nodiscard]] std::int64_t reduce_tree(std::int32_t value,
                                       const TreeContext& context) {
    const std::int64_t initial = context.initial_remainder(value);
    const std::int64_t count = context.correction_count(initial);
    const std::int64_t result =
        initial - tree_sum(count, context.modulus());
    if (result < context.lower() || result > context.upper()) {
        throw std::logic_error("tree correction did not produce a centered result");
    }
    return result;
}

bool report_preflight_failure(std::int64_t modulus, std::int32_t value,
                              std::int64_t expected,
                              std::int64_t linear,
                              std::int64_t tree) {
    std::cerr << "Preflight failed: B=" << modulus << ", T=" << value
              << ", expected=" << expected << ", linear=" << linear
              << ", tree=" << tree << '\n';
    return false;
}

bool preflight() {
    const std::array<std::int64_t, 7> moduli{
        3, 4, 13, 14, 257, 1'024, 65'521};
    bool exercised_tree = false;

    for (const std::int64_t modulus : moduli) {
        const TreeContext context(modulus);
        std::vector<std::int32_t> values{
            std::numeric_limits<std::int32_t>::min(),
            std::numeric_limits<std::int32_t>::min() + 1,
            static_cast<std::int32_t>(-2 * modulus),
            static_cast<std::int32_t>(-modulus - 1),
            static_cast<std::int32_t>(-modulus),
            static_cast<std::int32_t>(context.lower() - 1),
            static_cast<std::int32_t>(context.lower()),
            -1,
            0,
            1,
            static_cast<std::int32_t>(context.upper()),
            static_cast<std::int32_t>(context.upper() + 1),
            static_cast<std::int32_t>(modulus),
            static_cast<std::int32_t>(2 * modulus),
            std::numeric_limits<std::int32_t>::max() - 1,
            std::numeric_limits<std::int32_t>::max(),
        };

        std::uint64_t random = UINT64_C(0xD1B54A32D192ED03) ^
                               static_cast<std::uint64_t>(modulus);
        for (int iteration = 0; iteration < 1'024; ++iteration) {
            random = random * UINT64_C(2862933555777941757) +
                     UINT64_C(3037000493);
            values.push_back(std::bit_cast<std::int32_t>(
                static_cast<std::uint32_t>(random)));
        }

        for (const std::int32_t value : values) {
            const std::int64_t expected = reist::center_remainder(
                static_cast<std::int64_t>(value), modulus);
            const std::int64_t linear = reduce_linear(value, context);
            const std::int64_t tree = reduce_tree(value, context);
            exercised_tree = exercised_tree ||
                             correction_magnitude(context.correction_count(
                                 context.initial_remainder(value))) > 2;
            if (linear != expected || tree != expected) {
                return report_preflight_failure(modulus, value, expected,
                                                linear, tree);
            }
        }
    }
    if (!exercised_tree) {
        std::cerr << "Preflight did not exercise a non-trivial tree.\n";
        return false;
    }
    return true;
}

template <class Reducer>
double benchmark(const std::vector<std::int32_t>& inputs,
                 std::vector<std::int64_t>& outputs,
                 Reducer&& reducer) {
    const auto start = Clock::now();
    for (std::size_t index = 0; index < inputs.size(); ++index) {
        outputs[index] = reducer(inputs[index]);
    }
    const auto stop = Clock::now();
    return std::chrono::duration<double>(stop - start).count();
}

std::uint64_t hash_results(const std::vector<std::int64_t>& values) noexcept {
    std::uint64_t hash = UINT64_C(1469598103934665603);
    for (const std::int64_t value : values) {
        hash ^= static_cast<std::uint64_t>(value);
        hash *= UINT64_C(1099511628211);
    }
    return hash;
}

} // namespace

int main(int argc, char** argv) {
    std::int64_t operations = 20'000;
    try {
        if (argc > 1) {
            operations = std::stoll(argv[1]);
        }
    } catch (const std::exception& error) {
        std::cerr << "Invalid operation count: " << error.what() << '\n';
        return 1;
    }
    if (operations <= 0 || operations > 5'000'000) {
        std::cerr << "Operation count must be in [1, 5000000].\n";
        return 1;
    }

    try {
        if (!preflight()) {
            return 2;
        }
    } catch (const std::exception& error) {
        std::cerr << "Tree preflight raised an exception: " << error.what()
                  << '\n';
        return 2;
    }

    try {
        const TreeContext context(13);
        std::vector<std::int32_t> inputs(
            static_cast<std::size_t>(operations));
        std::uint64_t random = UINT64_C(0x9E3779B97F4A7C15);
        for (auto& value : inputs) {
            random = random * UINT64_C(6364136223846793005) +
                     UINT64_C(1442695040888963407);
            value = std::bit_cast<std::int32_t>(
                static_cast<std::uint32_t>(random));
        }

        std::vector<std::int64_t> linear_results(inputs.size());
        std::vector<std::int64_t> tree_results(inputs.size());
        const double linear_seconds = benchmark(
            inputs, linear_results,
            [&](std::int32_t value) { return reduce_linear(value, context); });
        const double tree_seconds = benchmark(
            inputs, tree_results,
            [&](std::int32_t value) { return reduce_tree(value, context); });

        if (linear_results != tree_results) {
            const auto mismatch = std::mismatch(
                linear_results.begin(), linear_results.end(),
                tree_results.begin());
            const std::size_t index = static_cast<std::size_t>(
                mismatch.first - linear_results.begin());
            std::cerr << "Postflight mismatch at input " << index
                      << ": T=" << inputs[index]
                      << ", linear=" << linear_results[index]
                      << ", tree=" << tree_results[index] << '\n';
            return 3;
        }

        for (std::size_t index = 0; index < inputs.size(); ++index) {
            const std::int64_t expected = reist::center_remainder(
                static_cast<std::int64_t>(inputs[index]), context.modulus());
            if (tree_results[index] != expected) {
                std::cerr << "Postflight reference mismatch at input " << index
                          << '\n';
                return 3;
            }
        }

        const std::uint64_t sink = hash_results(tree_results);
        std::cout << std::fixed << std::setprecision(6)
                  << "Experimental scalar REIST correction-tree diagnostic\n"
                  << "Preflight: passed (odd/even moduli and int32 edges)\n"
                  << "Canonical interval: [-B/2, B/2)\n"
                  << "Inputs: " << operations
                  << " identical independent reductions, B=13\n"
                  << "Linear correction chain: " << linear_seconds << " s\n"
                  << "Vector-backed tree sum:  " << tree_seconds << " s\n"
                  << "Note: CPU wall time includes tree allocation and does not "
                     "predict hardware parallel latency.\n"
                  << "Postflight: passed\n"
                  << "Sink: " << sink << '\n';
    } catch (const std::exception& error) {
        std::cerr << "Tree diagnostic failed: " << error.what() << '\n';
        return 4;
    }
    return 0;
}
