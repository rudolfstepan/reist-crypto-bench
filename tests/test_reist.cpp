#include "reist_mod.hpp"

#include <array>
#include <bit>
#include <cstdint>
#include <exception>
#include <iostream>
#include <limits>
#include <random>
#include <sstream>
#include <stdexcept>
#include <string>
#include <string_view>

namespace {

class test_context {
public:
    void check(bool condition, std::string_view expression,
               const char* file, int line, std::string_view note = {}) {
        ++checks_;
        if (condition) {
            return;
        }

        ++failures_;
        std::cerr << file << ':' << line << ": CHECK failed: " << expression;
        if (!note.empty()) {
            std::cerr << " (" << note << ')';
        }
        std::cerr << '\n';
    }

    template <class F>
    void check_invalid_argument(F&& operation, std::string_view expression,
                                const char* file, int line) {
        ++checks_;
        try {
            operation();
        } catch (const std::invalid_argument&) {
            return;
        } catch (const std::exception& error) {
            ++failures_;
            std::cerr << file << ':' << line << ": expected std::invalid_argument from "
                      << expression << ", got: " << error.what() << '\n';
            return;
        } catch (...) {
            ++failures_;
            std::cerr << file << ':' << line << ": expected std::invalid_argument from "
                      << expression << ", got a non-standard exception\n";
            return;
        }

        ++failures_;
        std::cerr << file << ':' << line << ": expected std::invalid_argument from "
                  << expression << ", but no exception was thrown\n";
    }

    [[nodiscard]] int finish() const {
        if (failures_ == 0) {
            std::cout << "All REIST tests passed (" << checks_ << " checks).\n";
            return 0;
        }
        std::cerr << failures_ << " of " << checks_ << " checks failed.\n";
        return 1;
    }

private:
    std::uint64_t checks_ = 0;
    std::uint64_t failures_ = 0;
};

#define CHECK(ctx, expression) \
    (ctx).check(static_cast<bool>(expression), #expression, __FILE__, __LINE__)

#define CHECK_NOTE(ctx, expression, note) \
    (ctx).check(static_cast<bool>(expression), #expression, __FILE__, __LINE__, (note))

#define CHECK_INVALID_ARGUMENT(ctx, expression) \
    (ctx).check_invalid_argument([&] { static_cast<void>(expression); }, \
                                 #expression, __FILE__, __LINE__)

std::string case_note(std::int64_t T, std::int64_t B) {
    std::ostringstream stream;
    stream << "T=" << T << ", B=" << B;
    return stream.str();
}

std::int64_t lower_bound(std::int64_t B) {
    return -(B / 2);
}

std::int64_t upper_bound(std::int64_t B) {
    return (B - 1) / 2;
}

std::int64_t euclidean_reference(std::int64_t value, std::int64_t B) {
    std::int64_t r = value % B;
    return r < 0 ? r + B : r;
}

bool reconstructs_exactly(std::int64_t T, std::int64_t B,
                          const reist::division_result& result) {
#if defined(__SIZEOF_INT128__)
    using wide_int = __int128_t;
    return static_cast<wide_int>(result.q) * static_cast<wide_int>(B) +
               static_cast<wide_int>(result.r) ==
           static_cast<wide_int>(T);
#else
    // Unsigned arithmetic is defined modulo 2^64.  Combined with the centered
    // range and the quotient-neighbour check in the property tests, this is an
    // exact portable fallback for implementations without a 128-bit integer.
    const std::uint64_t reconstructed =
        static_cast<std::uint64_t>(result.q) * static_cast<std::uint64_t>(B) +
        static_cast<std::uint64_t>(result.r);
    return reconstructed == static_cast<std::uint64_t>(T);
#endif
}

bool is_neighbour_of_truncated_quotient(std::int64_t T, std::int64_t B,
                                        std::int64_t q) {
    constexpr auto min = std::numeric_limits<std::int64_t>::min();
    constexpr auto max = std::numeric_limits<std::int64_t>::max();
    const std::int64_t truncated = T / B;
    return q == truncated || (truncated != min && q == truncated - 1) ||
           (truncated != max && q == truncated + 1);
}

void test_golden_vectors(test_context& ctx) {
    struct golden_case {
        std::int64_t T;
        std::int64_t B;
        std::int64_t q;
        std::int64_t r;
    };

    constexpr std::array cases{
        golden_case{17, 10, 2, -3},
        golden_case{5, 10, 1, -5},
        golden_case{-5, 10, 0, -5},
        golden_case{15, 10, 2, -5},
        golden_case{-15, 10, -1, -5},
        golden_case{28, 12, 2, 4},
        golden_case{34, 12, 3, -2},
        golden_case{3, 5, 1, -2},
        golden_case{-3, 5, -1, 2},
        golden_case{2, 5, 0, 2},
        golden_case{-2, 5, 0, -2},
        golden_case{0, 1, 0, 0},
    };

    for (const auto& expected : cases) {
        const auto actual = reist::divide(expected.T, expected.B);
        const auto note = case_note(expected.T, expected.B);
        CHECK_NOTE(ctx, actual.q == expected.q, note);
        CHECK_NOTE(ctx, actual.r == expected.r, note);
        CHECK_NOTE(ctx,
                   reist::center_remainder(expected.T, expected.B) == expected.r,
                   note);
    }
}

void test_exhaustive_small_domain(test_context& ctx) {
    for (std::int64_t B = 1; B <= 64; ++B) {
        for (std::int64_t T = -512; T <= 512; ++T) {
            const auto actual = reist::divide(T, B);
            const auto note = case_note(T, B);

            std::int64_t expected_q = 0;
            std::int64_t expected_r = 0;
            int matches = 0;
            for (std::int64_t candidate_q = -1024; candidate_q <= 1024;
                 ++candidate_q) {
                const std::int64_t candidate_r = T - candidate_q * B;
                if (candidate_r >= lower_bound(B) &&
                    candidate_r <= upper_bound(B)) {
                    ++matches;
                    expected_q = candidate_q;
                    expected_r = candidate_r;
                }
            }

            CHECK_NOTE(ctx, matches == 1, note);
            CHECK_NOTE(ctx, actual.q == expected_q, note);
            CHECK_NOTE(ctx, actual.r == expected_r, note);
            CHECK_NOTE(ctx, reist::is_centered(actual.r, B), note);
            CHECK_NOTE(ctx, reconstructs_exactly(T, B, actual), note);
            CHECK_NOTE(ctx,
                       euclidean_reference(T, B) ==
                           euclidean_reference(actual.r, B),
                       note);
        }
    }
}

void test_int64_boundaries(test_context& ctx) {
    constexpr auto min = std::numeric_limits<std::int64_t>::min();
    constexpr auto max = std::numeric_limits<std::int64_t>::max();
    constexpr std::array<std::int64_t, 9> values{
        min, min + 1, min + 2, -1, 0, 1, max - 2, max - 1, max};
    constexpr std::array<std::int64_t, 9> moduli{
        1, 2, 3, 4, 5, 10, max / 2, max - 1, max};

    for (const auto T : values) {
        for (const auto B : moduli) {
            const auto result = reist::divide(T, B);
            const auto note = case_note(T, B);
            CHECK_NOTE(ctx, reist::is_centered(result.r, B), note);
            CHECK_NOTE(ctx, reconstructs_exactly(T, B, result), note);
            CHECK_NOTE(ctx,
                       euclidean_reference(T, B) ==
                           euclidean_reference(result.r, B),
                       note);

            CHECK_NOTE(ctx,
                       is_neighbour_of_truncated_quotient(T, B, result.q),
                       note);
        }
    }

    CHECK(ctx, (reist::divide(min, 1) == reist::division_result{min, 0}));
    CHECK(ctx, (reist::divide(max, 1) == reist::division_result{max, 0}));
    CHECK(ctx, (reist::divide(min, max) == reist::division_result{-1, -1}));
    CHECK(ctx, (reist::divide(max, max) == reist::division_result{1, 0}));
    CHECK(ctx, (reist::divide(max, 2) ==
                reist::division_result{(max / 2) + 1, -1}));
}

void test_random_properties(test_context& ctx) {
    constexpr auto max = std::numeric_limits<std::int64_t>::max();
    std::mt19937_64 random(0x52454953545f3230ULL);

    for (int iteration = 0; iteration < 50'000; ++iteration) {
        const std::int64_t T = std::bit_cast<std::int64_t>(random());
        std::int64_t B = static_cast<std::int64_t>(random() &
                                                   static_cast<std::uint64_t>(max));
        if (B == 0) {
            B = 1;
        }

        const auto result = reist::divide(T, B);
        const auto note = case_note(T, B);
        CHECK_NOTE(ctx, reist::is_centered(result.r, B), note);
        CHECK_NOTE(ctx, reconstructs_exactly(T, B, result), note);
        CHECK_NOTE(ctx,
                   is_neighbour_of_truncated_quotient(T, B, result.q),
                   note);
        CHECK_NOTE(ctx,
                   euclidean_reference(T, B) ==
                       euclidean_reference(result.r, B),
                   note);
        CHECK_NOTE(ctx, reist::center_remainder(T, B) == result.r, note);
    }
}

void test_centered_addition(test_context& ctx) {
    for (std::int64_t B = 1; B <= 64; ++B) {
        const auto lower = lower_bound(B);
        const auto upper = upper_bound(B);
        for (std::int64_t a = lower; a <= upper; ++a) {
            for (std::int64_t b = lower; b <= upper; ++b) {
                const auto actual = reist::add_centered(a, b, B);
                const auto expected = reist::center_remainder(a + b, B);
                std::ostringstream note;
                note << "a=" << a << ", b=" << b << ", B=" << B;
                CHECK_NOTE(ctx, actual == expected, note.str());
                CHECK_NOTE(ctx, reist::is_centered(actual, B), note.str());
            }
        }
    }

    // Long additive state sequences exercise invariant preservation in both
    // directions, including odd/even endpoint handling.
    for (std::int64_t B = 1; B <= 32; ++B) {
        for (std::int64_t step = lower_bound(B); step <= upper_bound(B); ++step) {
            std::int64_t state = 0;
            std::int64_t reference = 0;
            for (int iteration = 0; iteration < 1'000; ++iteration) {
                state = reist::add_centered(state, step, B);
                reference = reist::center_remainder(reference + step, B);
                CHECK(ctx, state == reference);
                CHECK(ctx, reist::is_centered(state, B));
            }
        }
    }

    constexpr auto max = std::numeric_limits<std::int64_t>::max();
    const auto half = max / 2;
    CHECK(ctx, reist::add_centered(half, half, max) == -1);
    CHECK(ctx, reist::add_centered(-half, -half, max) == 1);

    // The compatibility helper must not overflow before reduction.
#if defined(_MSC_VER) && !defined(__clang__)
#pragma warning(push)
#pragma warning(disable : 4996)
#elif defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif
    CHECK(ctx, reist::reist_add_mod(max, max, 10) == 4);
#if defined(_MSC_VER) && !defined(__clang__)
#pragma warning(pop)
#elif defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic pop
#endif
}

void test_error_handling(test_context& ctx) {
    constexpr auto min = std::numeric_limits<std::int64_t>::min();

    constexpr std::array<std::int64_t, 3> invalid_moduli{0, -1, min};
    for (const std::int64_t invalid_B : invalid_moduli) {
        CHECK_INVALID_ARGUMENT(ctx, reist::divide(0, invalid_B));
        CHECK_INVALID_ARGUMENT(ctx, reist::center_remainder(0, invalid_B));
        CHECK_INVALID_ARGUMENT(ctx, reist::is_centered(0, invalid_B));
        CHECK_INVALID_ARGUMENT(ctx, reist::add_centered(0, 0, invalid_B));
        CHECK_INVALID_ARGUMENT(ctx, reist::euclidean_remainder(0, invalid_B));
    }

    CHECK_INVALID_ARGUMENT(ctx, reist::add_centered(3, 0, 5));
    CHECK_INVALID_ARGUMENT(ctx, reist::add_centered(-3, 0, 5));
    CHECK_INVALID_ARGUMENT(ctx, reist::add_centered(5, 0, 10));
    CHECK_INVALID_ARGUMENT(ctx, reist::add_centered(-6, 0, 10));
    CHECK_INVALID_ARGUMENT(ctx, reist::add_centered(1, 0, 1));

    CHECK(ctx, reist::euclidean_remainder(-1, 10) == 9);
    CHECK(ctx, reist::euclidean_remainder(min, 1) == 0);
}

void test_compile_time_contract() {
    static_assert(reist::divide(17, 10) == reist::division_result{2, -3});
    static_assert(reist::divide(-5, 10) == reist::division_result{0, -5});
    static_assert(reist::center_remainder(3, 5) == -2);
    static_assert(reist::is_centered(-5, 10));
    static_assert(!reist::is_centered(5, 10));
    static_assert(reist::add_centered(4, 4, 10) == -2);
}

} // namespace

int main() {
    try {
        test_compile_time_contract();

        test_context ctx;
        test_golden_vectors(ctx);
        test_exhaustive_small_domain(ctx);
        test_int64_boundaries(ctx);
        test_random_properties(ctx);
        test_centered_addition(ctx);
        test_error_handling(ctx);
        return ctx.finish();
    } catch (const std::exception& error) {
        std::cerr << "Unhandled test exception: " << error.what() << '\n';
        return 2;
    } catch (...) {
        std::cerr << "Unhandled non-standard test exception\n";
        return 2;
    }
}
