#if defined(_MSC_VER)
#include <intrin.h>
#endif
#include "paper_addition.hpp"

#include <algorithm>
#include <array>
#include <atomic>
#include <charconv>
#include <chrono>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <string_view>
#include <vector>

namespace {
using namespace reist::paper;
using Clock = std::chrono::steady_clock;
volatile std::uint64_t sink = 0;
constexpr std::array<std::array<int, 3>, 6> orders{
    {{0, 1, 2}, {0, 2, 1}, {1, 0, 2}, {1, 2, 0}, {2, 0, 1}, {2, 1, 0}}};
constexpr std::array<const char *, 3> names{"percent", "bounded", "centered"};

struct Config {
    std::uint32_t modulus = 257;
    std::size_t elements = 4096;
    std::size_t repetitions = 256;
    std::size_t trials = 12;
    std::string pattern = "uniform";
    std::string shape = "array";
    std::string boundary = "kernel";
    std::string binding = "constant";
};

std::uint64_t number(std::string_view input) {
    std::uint64_t value = 0;
    const auto result =
        std::from_chars(input.data(), input.data() + input.size(), value);
    if (result.ec != std::errc{} || result.ptr != input.data() + input.size() ||
        value == 0) {
        throw std::invalid_argument("expected a positive integer");
    }
    return value;
}

Config parse(int argc, char **argv) {
    Config config;
    for (int i = 1; i < argc; i += 2) {
        if (i + 1 == argc) {
            throw std::invalid_argument("each option requires a value");
        }
        const std::string key = argv[i];
        const std::string value = argv[i + 1];
        if (key == "--modulus") {
            const auto parsed = number(value);
            if (parsed > INT32_MAX) {
                throw std::invalid_argument("modulus exceeds INT32_MAX");
            }
            config.modulus = static_cast<std::uint32_t>(parsed);
        } else if (key == "--elements") {
            config.elements = static_cast<std::size_t>(number(value));
        } else if (key == "--repetitions") {
            config.repetitions = static_cast<std::size_t>(number(value));
        } else if (key == "--trials") {
            config.trials = static_cast<std::size_t>(number(value));
        } else if (key == "--pattern") {
            config.pattern = value;
        } else if (key == "--workload") {
            config.shape = value;
        } else if (key == "--boundary") {
            config.boundary = value;
        } else if (key == "--binding") {
            config.binding = value;
        } else {
            throw std::invalid_argument("unknown option: " + key);
        }
    }
    if (config.trials < 6 || config.trials % 6 != 0 || config.trials > 1200 ||
        config.elements > 16'777'216 || config.repetitions > 1'000'000'000) {
        throw std::invalid_argument("invalid trial count or workload size");
    }
    if (config.boundary != "kernel" && config.boundary != "end_to_end") {
        throw std::invalid_argument("unknown boundary");
    }
    if (config.binding != "constant" && config.binding != "runtime") {
        throw std::invalid_argument("unknown binding");
    }
    return config;
}

std::uint32_t residue(std::int64_t value, std::uint32_t modulus) {
    auto result = value % static_cast<std::int64_t>(modulus);
    if (result < 0) {
        result += modulus;
    }
    return static_cast<std::uint32_t>(result);
}

std::int32_t center(std::uint32_t value, std::uint32_t modulus) {
    return static_cast<std::int32_t>(value >= modulus - modulus / 2
                                         ? static_cast<std::int64_t>(value) - modulus
                                         : value);
}

struct Input {
    std::vector<std::int64_t> initial;
    std::vector<std::int64_t> steps;
};

Input make_input(const Config &config) {
    Input input;
    input.initial.resize(config.shape == "serial" ? 1 : config.elements);
    input.steps.resize(config.elements * (config.shape == "polynomial" ? 2 : 1));
    std::uint64_t random = 0x6a09e667f3bcc909ULL;
    for (std::size_t i = 0; i < input.steps.size(); ++i) {
        random ^= random << 13;
        random ^= random >> 7;
        random ^= random << 17;
        const auto half = static_cast<std::int64_t>(config.modulus / 2);
        if (config.pattern == "positive") {
            input.steps[i] = 3;
        } else if (config.pattern == "negative") {
            input.steps[i] = -3;
        } else if (config.pattern == "alternating") {
            input.steps[i] = i % 2 == 0 ? 3 : -3;
        } else if (config.pattern == "boundary") {
            const std::array<std::int64_t, 4> edges{
                -half, static_cast<std::int64_t>(config.modulus) - half - 1, -1, 1};
            input.steps[i] = edges[i % edges.size()];
        } else if (config.pattern == "uniform") {
            // Reproducible across standard libraries; small modulo bias is documented.
            input.steps[i] = static_cast<std::int64_t>(random % config.modulus) - half;
        } else {
            throw std::invalid_argument("unknown pattern");
        }
    }
    return input;
}

struct Oracle {
    std::vector<std::uint32_t> output;
    std::uint64_t upper = 0;
    std::uint64_t lower = 0;
    std::uint64_t bounded = 0;
};

// Independent wide-integer reference; counts the actual correction mix over
// the full trace outside all timed regions, including repeats and serial wraps.
Oracle oracle(const Config &config, const Input &input) {
    Oracle result;
    result.output.resize(input.initial.size());
    std::vector<std::uint32_t> steps;
    for (auto value : input.steps) {
        steps.push_back(residue(value, config.modulus));
    }
    const auto lo = -static_cast<std::int64_t>(config.modulus / 2);
    const auto hi = static_cast<std::int64_t>(config.modulus) + lo;
    for (std::size_t repetition = 0; repetition < config.repetitions; ++repetition) {
        for (std::size_t i = 0; i < config.elements; ++i) {
            const auto index = config.shape == "serial" ? 0 : i;
            const auto a = config.shape == "polynomial" ? steps[config.elements + i]
                                                        : result.output[index];
            const std::uint64_t sum = static_cast<std::uint64_t>(a) + steps[i];
            const std::int64_t centered_sum =
                static_cast<std::int64_t>(center(a, config.modulus)) +
                center(steps[i], config.modulus);
            result.upper += centered_sum >= hi ? 1U : 0U;
            result.lower += centered_sum < lo ? 1U : 0U;
            result.bounded += sum >= config.modulus ? 1U : 0U;
            result.output[index] = static_cast<std::uint32_t>(sum % config.modulus);
        }
    }
    return result;
}

template <method Method>
std::vector<word<Method>> prepare(const std::vector<std::int64_t> &raw,
                                  std::uint32_t modulus) {
    std::vector<word<Method>> values(raw.size());
    for (std::size_t i = 0; i < raw.size(); ++i) {
        const auto value = residue(raw[i], modulus);
        if constexpr (Method == method::centered) {
            values[i] = center(value, modulus);
        } else {
            values[i] = value;
        }
    }
    return values;
}

template <method Method, std::uint32_t FixedModulus, workload Workload>
double measure(const Config &config, const Input &input, const Oracle &expected) {
    std::vector<word<Method>> state;
    std::vector<word<Method>> steps;
    std::vector<std::uint32_t> output;
    const auto setup = [&] {
        state = prepare<Method>(input.initial, config.modulus);
        steps = prepare<Method>(input.steps, config.modulus);
        output.resize(state.size());
    };
    if (config.boundary == "kernel") {
        setup();
    }
    std::atomic_signal_fence(std::memory_order_seq_cst);
    const auto start = Clock::now();
    if (config.boundary == "end_to_end") {
        setup();
    }
    kernel<Method, FixedModulus, Workload>(state.data(), steps.data(), config.elements,
                                           config.repetitions, config.modulus);
    const auto convert = [&] {
        for (std::size_t i = 0; i < state.size(); ++i) {
            if constexpr (Method == method::centered) {
                output[i] = static_cast<std::uint32_t>(
                    state[i] < 0 ? static_cast<std::int64_t>(state[i]) + config.modulus
                                 : state[i]);
            } else {
                output[i] = state[i];
            }
        }
    };
    if (config.boundary == "end_to_end") {
        convert();
    }
    std::atomic_signal_fence(std::memory_order_seq_cst);
    const auto stop = Clock::now();
    if (config.boundary == "kernel") {
        convert();
    }
    if (output != expected.output) {
        throw std::runtime_error("result differs from wide-integer oracle");
    }
    std::uint64_t checksum = 0;
    for (const auto value : state) {
        if constexpr (Method == method::centered) {
            const auto lo = -static_cast<std::int64_t>(config.modulus / 2);
            if (value < lo || value >= static_cast<std::int64_t>(config.modulus) + lo) {
                throw std::runtime_error("noncanonical centered output");
            }
        }
        checksum = checksum * 31 + static_cast<std::uint32_t>(value);
    }
    sink = checksum;
    return std::chrono::duration<double>(stop - start).count();
}

template <std::uint32_t FixedModulus, workload Workload>
void run(const Config &config) {
    const Input input = make_input(config);
    const Oracle expected = oracle(config, input);
    using Measurement = double (*)(const Config &, const Input &, const Oracle &);
    const std::array<Measurement, 3> measurements{
        measure<method::percent, FixedModulus, Workload>,
        measure<method::bounded, FixedModulus, Workload>,
        measure<method::centered, FixedModulus, Workload>};
    // Each path receives an identical, full-workload warm-up and fresh state.
    for (const auto measurement : measurements) {
        measurement(config, input, expected);
    }
    std::ofstream csv("paper_trials.csv");
    csv.exceptions(std::ios::badbit | std::ios::failbit);
    csv << "schema,modulus,elements,repetitions,pattern,workload,boundary,binding,"
           "trial,position,method,seconds,upper,lower,bounded,validation\n";
    csv << std::setprecision(17);
    for (std::size_t trial = 0; trial < config.trials; ++trial) {
        const auto &order = orders[trial % orders.size()];
        for (std::size_t position = 0; position < order.size(); ++position) {
            const auto index = static_cast<std::size_t>(order[position]);
            const double seconds = measurements[index](config, input, expected);
            if (seconds < 0) {
                throw std::runtime_error("monotonic timer moved backwards");
            }
            csv << "1," << config.modulus << ',' << config.elements << ','
                << config.repetitions << ',' << config.pattern << ',' << config.shape
                << ',' << config.boundary << ',' << config.binding << ',' << trial
                << ',' << position << ',' << names[index] << ',' << seconds << ','
                << expected.upper << ',' << expected.lower << ',' << expected.bounded
                << ",passed\n";
        }
    }
    csv.close();
    std::cout << "All trials and canonical outputs validated.\n";
}

template <std::uint32_t FixedModulus> void select_workload(const Config &config) {
    if (config.shape == "serial") {
        run<FixedModulus, workload::serial>(config);
    } else if (config.shape == "array") {
        run<FixedModulus, workload::array>(config);
    } else if (config.shape == "polynomial") {
        run<FixedModulus, workload::polynomial>(config);
    } else {
        throw std::invalid_argument("unknown workload");
    }
}
} // namespace

int main(int argc, char **argv) {
    try {
        const Config config = parse(argc, argv);
        if (config.binding == "runtime") {
            select_workload<0>(config);
        } else {
            switch (config.modulus) {
            case 1:
                select_workload<1>(config);
                break;
            case 256:
                select_workload<256>(config);
                break;
            case 257:
                select_workload<257>(config);
                break;
            case 12289:
                select_workload<12289>(config);
                break;
            case 1000003:
                select_workload<1000003>(config);
                break;
            case 1000000007:
                select_workload<1000000007>(config);
                break;
            case 2147483647:
                select_workload<2147483647>(config);
                break;
            default:
                throw std::invalid_argument("modulus not in constant catalog");
            }
        }
        return 0;
    } catch (const std::exception &error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
