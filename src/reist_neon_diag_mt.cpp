#include "reist_mod.hpp"

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
#include <thread>
#include <vector>

#if defined(__ARM_NEON) || defined(__ARM_NEON__)
#include <arm_neon.h>
#define REIST_HAVE_NEON 1
#else
#define REIST_HAVE_NEON 0
#endif

#if !REIST_HAVE_NEON

int main() {
    std::cerr
        << "reist_neon_diag_mt is an experimental multi-thread ARM NEON "
           "diagnostic. This build has no NEON target support; its scalar "
           "fallback is intentionally not mislabeled as a NEON result.\n";
    return 2;
}

#else

namespace {

using Clock = std::chrono::steady_clock;
using Lanes = std::array<std::int32_t, 4>;

#if defined(__GNUC__) && !defined(__clang__)
#define REIST_NO_AUTOVECTORIZE __attribute__((optimize("no-tree-vectorize")))
#else
#define REIST_NO_AUTOVECTORIZE
#endif

class Context32 {
public:
    explicit Context32(std::int32_t modulus) : modulus_(modulus) {
        if (modulus_ < 3 || modulus_ > 1'000'000'007) {
            throw std::invalid_argument(
                "NEON diagnostic modulus must be in [3, 1000000007]");
        }
        reciprocal_ = static_cast<std::uint32_t>(
            (std::uint64_t{1} << 32) /
            static_cast<std::uint32_t>(modulus_));
        if (reciprocal_ > static_cast<std::uint32_t>(
                              std::numeric_limits<std::int32_t>::max())) {
            throw std::logic_error("signed NEON reciprocal is out of range");
        }
    }

    [[nodiscard]] std::int32_t modulus() const noexcept { return modulus_; }
    [[nodiscard]] std::int32_t lower() const noexcept {
        return -(modulus_ / 2);
    }
    [[nodiscard]] std::int32_t upper() const noexcept {
        return (modulus_ - 1) / 2;
    }
    [[nodiscard]] std::uint32_t reciprocal() const noexcept {
        return reciprocal_;
    }

    [[nodiscard]] std::int32_t reduce_centered(
        std::int32_t value) const noexcept {
        const std::int64_t product =
            static_cast<std::int64_t>(value) * reciprocal_;
        constexpr std::int64_t radix = std::int64_t{1} << 32;
        const std::int64_t quotient =
            product >= 0
                ? product / radix
                : -(((-product) + radix - 1) / radix);
        std::int64_t remainder =
            static_cast<std::int64_t>(value) - quotient * modulus_;
        for (int pass = 0; pass < 2; ++pass) {
            if (remainder > upper()) {
                remainder -= modulus_;
            } else if (remainder < lower()) {
                remainder += modulus_;
            }
        }
        return static_cast<std::int32_t>(remainder);
    }

private:
    std::int32_t modulus_;
    std::uint32_t reciprocal_ = 0;
};

[[nodiscard]] std::int32_t add_centered_scalar(
    std::int32_t a, std::int32_t b, const Context32& context) noexcept {
    std::int64_t sum = static_cast<std::int64_t>(a) + b;
    if (sum > context.upper()) {
        sum -= context.modulus();
    } else if (sum < context.lower()) {
        sum += context.modulus();
    }
    return static_cast<std::int32_t>(sum);
}

[[nodiscard]] int32x4_t approximate_quotient_neon(
    int32x4_t values, std::uint32_t reciprocal) noexcept {
    const int32x2_t reciprocal_vector =
        vdup_n_s32(static_cast<std::int32_t>(reciprocal));
    const int64x2_t product_low =
        vmull_s32(vget_low_s32(values), reciprocal_vector);
    const int64x2_t product_high =
        vmull_s32(vget_high_s32(values), reciprocal_vector);
    return vcombine_s32(vshrn_n_s64(product_low, 32),
                        vshrn_n_s64(product_high, 32));
}

[[nodiscard]] int32x4_t reduce_centered_neon(
    int32x4_t values, const Context32& context) noexcept {
    const int32x4_t quotient =
        approximate_quotient_neon(values, context.reciprocal());
    const int32x4_t modulus = vdupq_n_s32(context.modulus());
    int32x4_t remainder =
        vsubq_s32(values, vmulq_s32(quotient, modulus));
    const int32x4_t lower = vdupq_n_s32(context.lower());
    const int32x4_t upper = vdupq_n_s32(context.upper());
    for (int pass = 0; pass < 2; ++pass) {
        const uint32x4_t above = vcgtq_s32(remainder, upper);
        const uint32x4_t below = vcltq_s32(remainder, lower);
        remainder = vsubq_s32(
            remainder,
            vandq_s32(vreinterpretq_s32_u32(above), modulus));
        remainder = vaddq_s32(
            remainder,
            vandq_s32(vreinterpretq_s32_u32(below), modulus));
    }
    return remainder;
}

[[nodiscard]] int32x4_t add_centered_neon(
    int32x4_t a, int32x4_t b, const Context32& context) noexcept {
    int32x4_t sum = vaddq_s32(a, b);
    const int32x4_t modulus = vdupq_n_s32(context.modulus());
    const int32x4_t lower = vdupq_n_s32(context.lower());
    const int32x4_t upper = vdupq_n_s32(context.upper());
    const uint32x4_t above = vcgtq_s32(sum, upper);
    const uint32x4_t below = vcltq_s32(sum, lower);
    sum = vsubq_s32(sum,
                    vandq_s32(vreinterpretq_s32_u32(above), modulus));
    return vaddq_s32(sum,
                     vandq_s32(vreinterpretq_s32_u32(below), modulus));
}

bool preflight() {
    const std::array<std::int32_t, 6> moduli{
        3, 4, 13, 14, 257, 1'000'000'007};
    for (const std::int32_t modulus : moduli) {
        const Context32 context(modulus);
        std::vector<std::int32_t> values{
            std::numeric_limits<std::int32_t>::min(),
            std::numeric_limits<std::int32_t>::min() + 1,
            static_cast<std::int32_t>(-2LL * modulus),
            static_cast<std::int32_t>(-static_cast<std::int64_t>(modulus) - 1),
            -modulus,
            static_cast<std::int32_t>(context.lower() - 1),
            context.lower(),
            -1,
            0,
            1,
            context.upper(),
            static_cast<std::int32_t>(context.upper() + 1),
            modulus,
            std::numeric_limits<std::int32_t>::max() - 1,
            std::numeric_limits<std::int32_t>::max(),
        };
        std::uint64_t random = UINT64_C(0xE7037ED1A0B428DB) ^
                               static_cast<std::uint32_t>(modulus);
        for (int iteration = 0; iteration < 2'048; ++iteration) {
            random = random * UINT64_C(2862933555777941757) +
                     UINT64_C(3037000493);
            values.push_back(std::bit_cast<std::int32_t>(
                static_cast<std::uint32_t>(random)));
        }

        for (std::size_t index = 0; index < values.size(); index += 4) {
            Lanes raw{};
            Lanes centered{};
            Lanes addends{};
            Lanes reduced{};
            Lanes added{};
            for (std::size_t lane = 0; lane < raw.size(); ++lane) {
                raw[lane] = values[(index + lane) % values.size()];
                centered[lane] = static_cast<std::int32_t>(
                    reist::center_remainder(raw[lane], modulus));
                addends[lane] = static_cast<std::int32_t>(
                    reist::center_remainder(
                        values[(index + lane + 1) % values.size()], modulus));
                if (context.reduce_centered(raw[lane]) != centered[lane]) {
                    std::cerr << "Preflight scalar reciprocal mismatch: B="
                              << modulus << ", T=" << raw[lane] << '\n';
                    return false;
                }
            }
            vst1q_s32(reduced.data(),
                      reduce_centered_neon(vld1q_s32(raw.data()), context));
            vst1q_s32(added.data(),
                      add_centered_neon(vld1q_s32(centered.data()),
                                        vld1q_s32(addends.data()), context));
            for (std::size_t lane = 0; lane < raw.size(); ++lane) {
                const std::int64_t expected_add = reist::add_centered(
                    centered[lane], addends[lane], modulus);
                if (reduced[lane] != centered[lane] ||
                    added[lane] != expected_add ||
                    add_centered_scalar(centered[lane], addends[lane],
                                        context) != expected_add) {
                    std::cerr << "Preflight NEON mismatch: B=" << modulus
                              << ", lane=" << lane << '\n';
                    return false;
                }
            }
        }
    }
    return true;
}

Lanes initial_lanes(std::size_t worker, const Context32& context) {
    Lanes initial{};
    for (std::size_t lane = 0; lane < initial.size(); ++lane) {
        const std::int64_t value =
            1'234'567 + static_cast<std::int64_t>(worker) * 131 +
            static_cast<std::int64_t>(lane) * 17;
        initial[lane] = static_cast<std::int32_t>(
            reist::center_remainder(value, context.modulus()));
    }
    return initial;
}

REIST_NO_AUTOVECTORIZE
Lanes scalar_add_worker(std::size_t worker, std::int64_t chain_updates,
                        std::int32_t step, const Context32& context) {
    Lanes states = initial_lanes(worker, context);
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        for (auto& state : states) {
            state = add_centered_scalar(state, step, context);
        }
    }
    return states;
}

REIST_NO_AUTOVECTORIZE
Lanes scalar_reciprocal_worker(std::size_t worker,
                               std::int64_t chain_updates,
                               std::int32_t step,
                               const Context32& context) {
    Lanes states = initial_lanes(worker, context);
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        for (auto& state : states) {
            const std::int64_t input =
                static_cast<std::int64_t>(state) + step;
            state = context.reduce_centered(static_cast<std::int32_t>(input));
        }
    }
    return states;
}

Lanes neon_add_worker(std::size_t worker, std::int64_t chain_updates,
                      std::int32_t step, const Context32& context) {
    const Lanes initial = initial_lanes(worker, context);
    int32x4_t states = vld1q_s32(initial.data());
    const int32x4_t step_vector = vdupq_n_s32(step);
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        states = add_centered_neon(states, step_vector, context);
    }
    Lanes result{};
    vst1q_s32(result.data(), states);
    return result;
}

Lanes neon_reciprocal_worker(std::size_t worker,
                             std::int64_t chain_updates,
                             std::int32_t step,
                             const Context32& context) {
    const Lanes initial = initial_lanes(worker, context);
    int32x4_t states = vld1q_s32(initial.data());
    const int32x4_t step_vector = vdupq_n_s32(step);
    for (std::int64_t iteration = 0; iteration < chain_updates; ++iteration) {
        states = reduce_centered_neon(
            vaddq_s32(states, step_vector), context);
    }
    Lanes result{};
    vst1q_s32(result.data(), states);
    return result;
}

struct ParallelResult {
    double seconds = 0.0;
    std::vector<Lanes> states;
};

template <class Kernel>
ParallelResult run_parallel(const std::vector<std::int64_t>& chain_updates,
                            Kernel&& kernel) {
    ParallelResult result;
    result.states.resize(chain_updates.size());
    std::vector<std::jthread> workers;
    workers.reserve(chain_updates.size());

    const auto start = Clock::now();
    for (std::size_t worker = 0; worker < chain_updates.size(); ++worker) {
        workers.emplace_back([&, worker] {
            result.states[worker] = kernel(worker, chain_updates[worker]);
        });
    }
    workers.clear(); // jthread destruction joins every worker.
    const auto stop = Clock::now();
    result.seconds = std::chrono::duration<double>(stop - start).count();
    return result;
}

std::uint64_t hash_results(const std::vector<Lanes>& results) noexcept {
    std::uint64_t hash = UINT64_C(1469598103934665603);
    for (const Lanes& lanes : results) {
        for (const std::int32_t value : lanes) {
            hash ^= static_cast<std::uint32_t>(value);
            hash *= UINT64_C(1099511628211);
        }
    }
    return hash;
}

std::int32_t expected_after_updates(std::int32_t initial,
                                    std::int32_t step,
                                    std::int64_t updates,
                                    const Context32& context) {
    const std::uint64_t modulus =
        static_cast<std::uint32_t>(context.modulus());
    const std::uint64_t initial_nonnegative =
        initial < 0
            ? static_cast<std::uint64_t>(
                  static_cast<std::int64_t>(initial) + context.modulus())
            : static_cast<std::uint32_t>(initial);
    const std::uint64_t step_nonnegative =
        step < 0
            ? static_cast<std::uint64_t>(
                  static_cast<std::int64_t>(step) + context.modulus())
            : static_cast<std::uint32_t>(step);
    const std::uint64_t update_factor =
        static_cast<std::uint64_t>(updates) % modulus;
    const std::uint64_t nonnegative =
        (initial_nonnegative + update_factor * step_nonnegative) % modulus;
    return static_cast<std::int32_t>(reist::center_remainder(
        static_cast<std::int64_t>(nonnegative), context.modulus()));
}

} // namespace

int main(int argc, char** argv) {
    std::int64_t thread_count =
        static_cast<std::int64_t>(std::thread::hardware_concurrency());
    if (thread_count <= 0) {
        thread_count = 1;
    }
    std::int64_t total_lane_updates = 20'000'000;
    try {
        if (argc > 1) {
            thread_count = std::stoll(argv[1]);
        }
        if (argc > 2) {
            total_lane_updates = std::stoll(argv[2]);
        }
    } catch (const std::exception& error) {
        std::cerr << "Invalid argument: " << error.what() << '\n';
        return 1;
    }

    if (thread_count <= 0 || thread_count > 256) {
        std::cerr << "Thread count must be in [1, 256].\n";
        return 1;
    }
    if (total_lane_updates < 4 || total_lane_updates % 4 != 0) {
        std::cerr << "Total lane updates must be a positive multiple of 4.\n";
        return 1;
    }
    const std::int64_t vector_updates = total_lane_updates / 4;
    if (thread_count > vector_updates) {
        std::cerr << "Thread count cannot exceed the number of vector updates.\n";
        return 1;
    }

    try {
        if (!preflight()) {
            return 2;
        }
    } catch (const std::exception& error) {
        std::cerr << "NEON multi-thread preflight raised an exception: "
                  << error.what() << '\n';
        return 2;
    }

    const auto workers = static_cast<std::size_t>(thread_count);
    std::vector<std::int64_t> updates_per_worker(workers,
                                                 vector_updates / thread_count);
    const std::int64_t remainder = vector_updates % thread_count;
    for (std::int64_t worker = 0; worker < remainder; ++worker) {
        ++updates_per_worker[static_cast<std::size_t>(worker)];
    }

    std::uint64_t sink = 0;
    std::cout << std::fixed << std::setprecision(6)
              << "Experimental multi-thread ARM NEON REIST diagnostic\n"
              << "Preflight: passed for scalar and NEON kernels\n"
              << "Threads: " << thread_count
              << "\nTotal lane updates per measured kernel: "
              << total_lane_updates
              << "\nEach worker owns four independent dependent streams; "
                 "thread creation and joining are included.\n";

    const std::array<std::int32_t, 3> moduli{13, 14, 257};
    for (const std::int32_t modulus : moduli) {
        try {
            const Context32 context(modulus);
            const std::int32_t step = static_cast<std::int32_t>(
                reist::center_remainder(891'011, modulus));

            const ParallelResult scalar_add = run_parallel(
                updates_per_worker,
                [&](std::size_t worker, std::int64_t updates) {
                    return scalar_add_worker(
                        worker, updates, step, context);
                });
            const ParallelResult neon_add = run_parallel(
                updates_per_worker,
                [&](std::size_t worker, std::int64_t updates) {
                    return neon_add_worker(worker, updates, step, context);
                });
            const ParallelResult scalar_reciprocal = run_parallel(
                updates_per_worker,
                [&](std::size_t worker, std::int64_t updates) {
                    return scalar_reciprocal_worker(
                        worker, updates, step, context);
                });
            const ParallelResult neon_reciprocal = run_parallel(
                updates_per_worker,
                [&](std::size_t worker, std::int64_t updates) {
                    return neon_reciprocal_worker(
                        worker, updates, step, context);
                });

            if (scalar_add.states != neon_add.states ||
                scalar_reciprocal.states != neon_reciprocal.states ||
                scalar_add.states != scalar_reciprocal.states) {
                std::cerr << "Postflight mismatch for B=" << modulus << '\n';
                return 3;
            }
            for (std::size_t worker = 0; worker < workers; ++worker) {
                const Lanes initial = initial_lanes(worker, context);
                for (std::size_t lane = 0; lane < initial.size(); ++lane) {
                    const std::int32_t expected = expected_after_updates(
                        initial[lane], step, updates_per_worker[worker],
                        context);
                    if (neon_add.states[worker][lane] != expected) {
                        std::cerr << "Postflight reference mismatch for B="
                                  << modulus << ", worker=" << worker
                                  << ", lane=" << lane << '\n';
                        return 3;
                    }
                }
            }
            sink ^= hash_results(neon_reciprocal.states);

            std::cout << "\nB=" << modulus
                      << "\n  centered add scalar MT: "
                      << scalar_add.seconds << " s"
                      << "\n  centered add NEON MT:   "
                      << neon_add.seconds << " s"
                      << "\n  reciprocal scalar MT:   "
                      << scalar_reciprocal.seconds << " s"
                      << "\n  reciprocal NEON MT:     "
                      << neon_reciprocal.seconds << " s"
                      << "\n  add scalar/NEON ratio:   "
                      << scalar_add.seconds / neon_add.seconds << "x"
                      << "\n  reciprocal ratio:        "
                      << scalar_reciprocal.seconds /
                             neon_reciprocal.seconds
                      << "x\n";
        } catch (const std::exception& error) {
            std::cerr << "Multi-thread benchmark failed for B=" << modulus
                      << ": " << error.what() << '\n';
            return 4;
        }
    }

    std::cout << "\nPostflight: passed\n"
              << "Interpretation: aggregate throughput of independent "
                 "per-thread streams, not single-chain latency.\n"
              << "Sink: " << sink << '\n';
    return 0;
}

#endif
