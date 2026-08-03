#include "reist_intrinsics.hpp"
#include "reist_mod.hpp"

#include <algorithm>
#include <array>
#include <bit>
#include <cstdint>
#include <exception>
#include <iostream>
#include <limits>
#include <random>
#include <span>
#include <sstream>
#include <stdexcept>
#include <string>
#include <string_view>
#include <vector>

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
            std::cerr << file << ':' << line
                      << ": expected std::invalid_argument from " << expression
                      << ", got: " << error.what() << '\n';
            return;
        } catch (...) {
            ++failures_;
            std::cerr << file << ':' << line
                      << ": expected std::invalid_argument from " << expression
                      << ", got a non-standard exception\n";
            return;
        }

        ++failures_;
        std::cerr << file << ':' << line
                  << ": expected std::invalid_argument from " << expression
                  << ", but no exception was thrown\n";
    }

    [[nodiscard]] int finish() const {
        if (failures_ == 0U) {
            std::cout << "All REIST intrinsic API tests passed (" << checks_
                      << " checks).\n";
            return 0;
        }
        std::cerr << failures_ << " of " << checks_ << " checks failed.\n";
        return 1;
    }

private:
    std::uint64_t checks_ = 0U;
    std::uint64_t failures_ = 0U;
};

#define CHECK(ctx, expression)                                                \
    (ctx).check(static_cast<bool>(expression), #expression, __FILE__, __LINE__)

#define CHECK_NOTE(ctx, expression, note)                                     \
    (ctx).check(static_cast<bool>(expression), #expression, __FILE__,          \
                __LINE__, (note))

#define CHECK_INVALID_ARGUMENT(ctx, expression)                               \
    (ctx).check_invalid_argument(                                             \
        [&] { static_cast<void>(expression); }, #expression, __FILE__,         \
        __LINE__)

[[nodiscard]] std::int64_t as_i64(std::int32_t value) noexcept {
    return static_cast<std::int64_t>(value);
}

[[nodiscard]] std::int32_t centered_reference(std::int64_t value,
                                               std::int32_t modulus) {
    return static_cast<std::int32_t>(
        reist::center_remainder(value, as_i64(modulus)));
}

[[nodiscard]] std::int32_t conventional_reference(std::int64_t value,
                                                   std::int32_t modulus) {
    return static_cast<std::int32_t>(
        reist::euclidean_remainder(value, as_i64(modulus)));
}

[[nodiscard]] std::int32_t add_reference(std::int32_t left,
                                         std::int32_t right,
                                         std::int32_t modulus) {
    return static_cast<std::int32_t>(reist::add_centered(
        as_i64(left), as_i64(right), as_i64(modulus)));
}

[[nodiscard]] std::span<const std::int32_t>
as_span(const std::vector<std::int32_t>& values) noexcept {
    return {values.data(), values.size()};
}

[[nodiscard]] std::string value_note(std::int64_t raw,
                                     std::int32_t modulus) {
    std::ostringstream stream;
    stream << "raw=" << raw << ", B=" << modulus;
    return stream.str();
}

[[nodiscard]] std::string add_note(std::int32_t left, std::int32_t right,
                                   std::int32_t modulus) {
    std::ostringstream stream;
    stream << "left=" << left << ", right=" << right
           << ", B=" << modulus;
    return stream.str();
}

void check_value(test_context& ctx, const reist::value_i32& actual,
                 std::int64_t raw, std::int32_t modulus) {
    const std::int32_t expected_centered = centered_reference(raw, modulus);
    const std::int32_t expected_remainder =
        conventional_reference(raw, modulus);
    const std::string note = value_note(raw, modulus);
    CHECK_NOTE(ctx, actual.modulus() == modulus, note);
    CHECK_NOTE(ctx, actual.centered() == expected_centered, note);
    CHECK_NOTE(ctx, actual.remainder() == expected_remainder, note);
}

void check_residues(test_context& ctx, std::span<const std::int32_t> actual,
                    std::span<const std::int32_t> expected) {
    CHECK(ctx, actual.size() == expected.size());
    if (actual.size() != expected.size()) {
        return;
    }
    for (std::size_t index = 0U; index < actual.size(); ++index) {
        CHECK(ctx, actual[index] == expected[index]);
    }
}

void check_batch(test_context& ctx, const reist::modulus_i32& context,
                 const reist::prepared_i32_batch& actual,
                 std::span<const std::int32_t> expected_centered) {
    check_residues(ctx, actual.centered_values(), expected_centered);

    const std::vector<std::int32_t> conventional = context.residues(actual);
    CHECK(ctx, conventional.size() == expected_centered.size());
    if (conventional.size() != expected_centered.size()) {
        return;
    }
    const std::int32_t modulus = context.modulus();
    for (std::size_t index = 0U; index < conventional.size(); ++index) {
        CHECK(ctx, conventional[index] == conventional_reference(
                                             as_i64(expected_centered[index]),
                                             modulus));
    }
}

void test_modulus_and_value_contract(test_context& ctx) {
    constexpr auto max = std::numeric_limits<std::int32_t>::max();
    constexpr auto min64 = std::numeric_limits<std::int64_t>::min();
    constexpr auto max64 = std::numeric_limits<std::int64_t>::max();
    constexpr std::array<std::int32_t, 9U> moduli{
        1, 2, 3, 4, 5, 63, 64, max - 1, max};
    constexpr std::array<std::int64_t, 11U> raw_values{
        min64, min64 + 1, -2'147'483'648LL, -2'147'483'647LL, -1, 0,
        1, 2'147'483'646LL, 2'147'483'647LL, max64 - 1, max64};

    for (const std::int32_t modulus : moduli) {
        const reist::modulus_i32 context(modulus);
        CHECK(ctx, context.modulus() == modulus);
        CHECK(ctx, context.lower_bound() == -(modulus / 2));
        CHECK(ctx, context.upper_bound() == ((modulus - 1) / 2));

        for (const std::int64_t raw : raw_values) {
            check_value(ctx, context.value(raw), raw, modulus);
        }

        for (std::size_t index = 0U; index < raw_values.size(); ++index) {
            const std::int64_t left = raw_values[index];
            const std::int64_t right =
                raw_values[(index + 4U) % raw_values.size()];
            const std::int32_t expected = add_reference(
                centered_reference(left, modulus),
                centered_reference(right, modulus), modulus);
            CHECK(ctx, context.add(left, right).centered() == expected);
        }
    }
}

void test_small_modulus_ties(test_context& ctx) {
    constexpr std::array<std::int32_t, 5U> moduli{1, 2, 3, 4, 5};
    for (const std::int32_t modulus : moduli) {
        const reist::modulus_i32 context(modulus);
        const std::int32_t lower = -(modulus / 2);
        const std::int32_t upper = (modulus - 1) / 2;
        const std::array<std::int64_t, 9U> boundary_values{
            as_i64(lower) - 1, as_i64(lower), as_i64(lower) + 1,
            as_i64(upper) - 1, as_i64(upper), as_i64(upper) + 1,
            -as_i64(modulus), 0, as_i64(modulus)};

        for (const std::int64_t raw : boundary_values) {
            check_value(ctx, context.value(raw), raw, modulus);
        }

        // The first representative above the upper bound always wraps to the
        // canonical lower endpoint.  This explicitly covers both the even
        // half-modulus tie and the corresponding odd-modulus transition.
        CHECK(ctx, context.value(as_i64(upper) + 1).centered() == lower);
        CHECK(ctx, context.value(lower).centered() == lower);
        CHECK(ctx, context.value(upper).centered() == upper);
    }
}

void test_exhaustive_centered_pairs(test_context& ctx) {
    for (std::int32_t modulus = 1; modulus <= 64; ++modulus) {
        const reist::modulus_i32 context(modulus);
        const std::int32_t lower = context.lower_bound();
        const std::int32_t upper = context.upper_bound();

        for (std::int32_t left = lower; left <= upper; ++left) {
            const reist::value_i32 left_value = context.value(as_i64(left));
            for (std::int32_t right = lower; right <= upper; ++right) {
                const reist::value_i32 right_value =
                    context.value(as_i64(right));
                const reist::value_i32 actual =
                    context.add(left_value, right_value);
                const std::int32_t expected =
                    add_reference(left, right, modulus);
                const std::string note = add_note(left, right, modulus);
                CHECK_NOTE(ctx, actual.modulus() == modulus, note);
                CHECK_NOTE(ctx, actual.centered() == expected, note);
                CHECK_NOTE(ctx,
                           actual.remainder() ==
                               conventional_reference(as_i64(expected), modulus),
                           note);
            }
        }
    }
}

void test_large_modulus_boundaries(test_context& ctx) {
    constexpr auto max = std::numeric_limits<std::int32_t>::max();
    constexpr std::array<std::int32_t, 2U> moduli{max - 1, max};

    for (const std::int32_t modulus : moduli) {
        const reist::modulus_i32 context(modulus);
        const std::int32_t lower = context.lower_bound();
        const std::int32_t upper = context.upper_bound();
        const std::array<std::int32_t, 5U> values{
            lower, static_cast<std::int32_t>(lower + 1), 0,
            static_cast<std::int32_t>(upper - 1), upper};

        for (const std::int32_t left : values) {
            for (const std::int32_t right : values) {
                const reist::value_i32 actual =
                    context.add(context.value(as_i64(left)),
                                context.value(as_i64(right)));
                const std::int32_t expected =
                    add_reference(left, right, modulus);
                CHECK_NOTE(ctx, actual.centered() == expected,
                           add_note(left, right, modulus));
            }
        }

        check_value(ctx, context.value(std::numeric_limits<std::int64_t>::min()),
                    std::numeric_limits<std::int64_t>::min(), modulus);
        check_value(ctx, context.value(std::numeric_limits<std::int64_t>::max()),
                    std::numeric_limits<std::int64_t>::max(), modulus);
    }
}

void test_prepare_and_fill(test_context& ctx) {
    constexpr std::array<std::int32_t, 10U> raw_values{
        std::numeric_limits<std::int32_t>::min(), -258, -257, -129, -1,
        0, 128, 129, 257, std::numeric_limits<std::int32_t>::max()};
    const reist::modulus_i32 context(257);

    const auto prepared = context.prepare(raw_values);
    CHECK(ctx, prepared.size() == raw_values.size());
    CHECK(ctx, !prepared.empty());
    CHECK(ctx, prepared.modulus() == 257);

    std::array<std::int32_t, raw_values.size()> expected{};
    for (std::size_t index = 0U; index < raw_values.size(); ++index) {
        expected[index] = centered_reference(as_i64(raw_values[index]), 257);
    }
    check_batch(ctx, context, prepared, expected);

    constexpr std::size_t fill_count = 19U;
    const auto raw_fill = context.filled(fill_count,
                                         std::numeric_limits<std::int32_t>::max());
    CHECK(ctx, raw_fill.size() == fill_count);
    const std::vector<std::int32_t> raw_fill_expected(
        fill_count,
        centered_reference(as_i64(std::numeric_limits<std::int32_t>::max()),
                           257));
    check_batch(ctx, context, raw_fill, as_span(raw_fill_expected));

    const reist::value_i32 prepared_value = context.value(-129);
    const auto value_fill = context.filled(fill_count, prepared_value);
    const std::vector<std::int32_t> value_fill_expected(
        fill_count, prepared_value.centered());
    check_batch(ctx, context, value_fill, as_span(value_fill_expected));

    const std::array<std::int32_t, 0U> no_values{};
    const auto empty = context.prepare(no_values);
    CHECK(ctx, empty.empty());
    CHECK(ctx, empty.size() == 0U);
    CHECK(ctx, empty.modulus() == 257);
    CHECK(ctx, context.residues(empty).empty());
    CHECK(ctx, empty.centered_values().empty());

    const reist::modulus_i32 context5(5);
    constexpr std::array<std::int32_t, 4U> five_values{-8, -1, 4, 12};
    const auto replacement = context5.prepare(five_values);
    auto assigned = prepared;
    assigned = replacement;
    CHECK(ctx, assigned.modulus() == 5);
    check_residues(ctx, assigned.centered_values(),
                   replacement.centered_values());
    check_batch(ctx, context5, assigned, replacement.centered_values());
    CHECK_INVALID_ARGUMENT(ctx, context.residues(assigned));
    const reist::prepared_i32_batch& same_batch = assigned;
    assigned = same_batch;
    check_batch(ctx, context5, assigned, replacement.centered_values());
}

void test_backend_metadata(test_context& ctx) {
    CHECK(ctx, reist::intrinsic_backend_available(
                   reist::intrinsic_backend::automatic));
    CHECK(ctx, reist::intrinsic_backend_available(
                   reist::intrinsic_backend::compiler_auto));
    CHECK(ctx, reist::intrinsic_backend_available(
                   reist::intrinsic_backend::explicit_simd) ==
                   reist::explicit_simd_available());

    CHECK(ctx, std::string_view(reist::intrinsic_backend_name(
                   reist::intrinsic_backend::automatic)) == "automatic");
    CHECK(ctx, std::string_view(reist::intrinsic_backend_name(
                   reist::intrinsic_backend::compiler_auto)) ==
                   "compiler-auto");
    CHECK(ctx, std::string_view(reist::intrinsic_backend_name(
                   reist::intrinsic_backend::explicit_simd)) ==
                   "explicit-simd");

    const std::string_view simd_name(reist::explicit_simd_backend_name());
    if (reist::explicit_simd_available()) {
        CHECK(ctx, simd_name == "avx2" || simd_name == "neon");
    } else {
        CHECK(ctx, simd_name == "unavailable");
    }
}

void test_invalid_inputs_and_context_mix(test_context& ctx) {
    constexpr auto min = std::numeric_limits<std::int32_t>::min();
    CHECK_INVALID_ARGUMENT(ctx, reist::modulus_i32(0));
    CHECK_INVALID_ARGUMENT(ctx, reist::modulus_i32(-1));
    CHECK_INVALID_ARGUMENT(ctx, reist::modulus_i32(min));

    const reist::modulus_i32 modulus5(5);
    const reist::modulus_i32 another_modulus5(5);
    const reist::modulus_i32 modulus7(7);
    const reist::value_i32 value5 = modulus5.value(2);
    const reist::value_i32 value5_from_other_context =
        another_modulus5.value(2);
    const reist::value_i32 value7 = modulus7.value(2);

    // Equal numeric moduli are compatible; the public contract is based on
    // the modulus, not object identity.
    CHECK(ctx, modulus5.add(value5, value5_from_other_context).centered() == -1);
    CHECK_INVALID_ARGUMENT(ctx, modulus5.add(value5, value7));
    CHECK_INVALID_ARGUMENT(ctx, modulus5.add(value7, value7));
    CHECK_INVALID_ARGUMENT(ctx, modulus5.filled(3U, value7));

    constexpr std::array<std::int32_t, 4U> four_values{1, 2, 3, 4};
    constexpr std::array<std::int32_t, 3U> three_values{1, 2, 3};
    auto destination5 = modulus5.prepare(four_values);
    const auto source5 = modulus5.prepare(four_values);
    const auto short_source5 = modulus5.prepare(three_values);
    auto destination7 = modulus7.prepare(four_values);
    const auto source7 = modulus7.prepare(four_values);
    const auto unknown_backend =
        static_cast<reist::intrinsic_backend>(999);

    CHECK_INVALID_ARGUMENT(
        ctx, modulus5.add_inplace(destination5, short_source5, 1U,
                                  reist::intrinsic_backend::compiler_auto));
    CHECK_INVALID_ARGUMENT(
        ctx, modulus5.add_inplace(destination5, source7, 1U,
                                  reist::intrinsic_backend::compiler_auto));
    CHECK_INVALID_ARGUMENT(
        ctx, modulus5.add_inplace(destination7, source7, 1U,
                                  reist::intrinsic_backend::compiler_auto));
    CHECK_INVALID_ARGUMENT(ctx, modulus5.residues(source7));
    CHECK_INVALID_ARGUMENT(ctx, modulus7.residues(source5));
    CHECK(ctx, !reist::intrinsic_backend_available(unknown_backend));
    CHECK(ctx, std::string_view(
                   reist::intrinsic_backend_name(unknown_backend)) ==
                   "unknown");
    CHECK_INVALID_ARGUMENT(
        ctx, modulus5.add_inplace(destination5, source5, 1U,
                                  unknown_backend));
    CHECK_INVALID_ARGUMENT(
        ctx, modulus5.add_inplace(destination5, destination5, 1U,
                                  unknown_backend));
}

[[nodiscard]] std::int32_t random_i32(std::mt19937& random) {
    const std::uint32_t bits = static_cast<std::uint32_t>(random());
    return std::bit_cast<std::int32_t>(bits);
}

[[nodiscard]] std::vector<std::int32_t>
batch_reference(std::span<const std::int32_t> initial,
                std::span<const std::int32_t> addends,
                std::int32_t modulus, std::size_t repetitions) {
    std::vector<std::int32_t> expected(initial.size());
    for (std::size_t index = 0U; index < initial.size(); ++index) {
        expected[index] = centered_reference(as_i64(initial[index]), modulus);
        const std::int32_t addend =
            centered_reference(as_i64(addends[index]), modulus);
        for (std::size_t repetition = 0U; repetition < repetitions;
             ++repetition) {
            expected[index] =
                add_reference(expected[index], addend, modulus);
        }
    }
    return expected;
}

[[nodiscard]] bool probe_explicit_simd(test_context& ctx) {
    const reist::modulus_i32 context(257);
    constexpr std::array<std::int32_t, 17U> initial{
        -128, -127, -64, -1, 0, 1, 63, 64, 127,
        128, 129, 255, 256, 257, 258, 1024, 65'537};
    constexpr std::array<std::int32_t, 17U> addends{
        1, -1, 2, -2, 3, -3, 64, -64, 127,
        -128, 129, -129, 256, -256, 257, -257, -65'537};
    auto destination = context.prepare(initial);
    const auto source = context.prepare(addends);

    const bool reported_available = reist::explicit_simd_available();
    bool threw_runtime_error = false;
    try {
        context.add_inplace(destination, source, 3U,
                            reist::intrinsic_backend::explicit_simd);
    } catch (const std::runtime_error& error) {
        threw_runtime_error = true;
        if (reported_available) {
            CHECK_NOTE(ctx, false, error.what());
        } else {
            std::cout << "Explicit SIMD intrinsic tests skipped: "
                      << error.what() << '\n';
        }
    } catch (const std::exception& error) {
        CHECK_NOTE(ctx, false, error.what());
        return false;
    } catch (...) {
        CHECK_NOTE(ctx, false,
                   "explicit SIMD probe threw a non-standard exception");
        return false;
    }

    CHECK(ctx, threw_runtime_error != reported_available);
    if (threw_runtime_error) {
        return false;
    }

    const auto expected = batch_reference(initial, addends, 257, 3U);
    check_batch(ctx, context, destination, as_span(expected));
    return true;
}

void test_batch_backends_and_tails(test_context& ctx) {
    constexpr auto max = std::numeric_limits<std::int32_t>::max();
    constexpr std::array<std::int32_t, 14U> moduli{
        1, 2, 3, 4, 5, 7, 10, 31, 32, 33, 257, 65'537, max - 1, max};
    // These lengths exercise both sides of the common 4-lane NEON and 8-lane
    // AVX2 widths, wider unrolled loops, an empty batch, and scalar tails.
    constexpr std::array<std::size_t, 22U> sizes{
        0U, 1U, 2U, 3U, 4U, 5U, 7U, 8U, 9U, 15U, 16U,
        17U, 31U, 32U, 33U, 63U, 64U, 65U, 127U, 128U, 129U, 257U};
    constexpr std::array<std::size_t, 4U> repetitions{0U, 1U, 3U, 11U};

    std::vector<reist::intrinsic_backend> backends{
        reist::intrinsic_backend::automatic,
        reist::intrinsic_backend::compiler_auto};
    if (probe_explicit_simd(ctx)) {
        backends.push_back(reist::intrinsic_backend::explicit_simd);
    }

    std::mt19937 random(0x52454953U);
    for (const std::int32_t modulus : moduli) {
        const reist::modulus_i32 context(modulus);
        for (const std::size_t size : sizes) {
            std::vector<std::int32_t> initial(size);
            std::vector<std::int32_t> addends(size);
            for (std::size_t index = 0U; index < size; ++index) {
                initial[index] = random_i32(random);
                addends[index] = random_i32(random);
            }

            for (const std::size_t repeat_count : repetitions) {
                const auto expected = batch_reference(
                    as_span(initial), as_span(addends), modulus, repeat_count);
                for (const reist::intrinsic_backend backend : backends) {
                    auto destination = context.prepare(as_span(initial));
                    const auto source = context.prepare(as_span(addends));
                    context.add_inplace(destination, source, repeat_count,
                                        backend);
                    check_batch(ctx, context, destination, as_span(expected));
                }
            }
        }
    }
}

void test_default_backend_overload(test_context& ctx) {
    constexpr auto max = std::numeric_limits<std::int32_t>::max();
    constexpr std::array<std::int32_t, 4U> moduli{257, 1'000'000,
                                                  1'000'003, max};
    constexpr std::array<std::int32_t, 17U> initial{
        std::numeric_limits<std::int32_t>::min(), max, -1'000'003, -258,
        -129, -128, -1, 0, 1, 127, 128, 129, 257, 258, 65'537,
        1'000'003, 42};
    constexpr std::array<std::int32_t, 17U> addends{
        max, std::numeric_limits<std::int32_t>::min(), 1'000'003, 258,
        129, 128, 1, 0, -1, -127, -128, -129, -257, -258, -65'537,
        -1'000'003, -42};
    constexpr std::size_t repetitions = 19U;

    for (const std::int32_t modulus : moduli) {
        const reist::modulus_i32 context(modulus);
        const auto source = context.prepare(addends);
        auto default_output = context.prepare(initial);
        auto named_output = context.prepare(initial);

        context.add_inplace(default_output, source, repetitions);
        context.add_inplace(named_output, source, repetitions,
                            reist::intrinsic_backend::automatic);

        const auto expected =
            batch_reference(initial, addends, modulus, repetitions);
        check_batch(ctx, context, default_output, as_span(expected));
        check_batch(ctx, context, named_output, as_span(expected));
        CHECK(ctx, std::equal(default_output.centered_values().begin(),
                              default_output.centered_values().end(),
                              named_output.centered_values().begin(),
                              named_output.centered_values().end()));
    }
}

void test_repeated_persistent_state(test_context& ctx) {
    constexpr std::array<std::int32_t, 6U> moduli{1, 2, 3, 4, 5, 257};
    constexpr std::size_t size = 37U;
    constexpr std::size_t calls = 23U;
    std::mt19937 random(0x494E5452U);

    for (const std::int32_t modulus : moduli) {
        const reist::modulus_i32 context(modulus);
        std::vector<std::int32_t> initial(size);
        std::vector<std::int32_t> addends(size);
        for (std::size_t index = 0U; index < size; ++index) {
            initial[index] = random_i32(random);
            addends[index] = random_i32(random);
        }

        auto destination = context.prepare(as_span(initial));
        const auto source = context.prepare(as_span(addends));
        for (std::size_t call = 0U; call < calls; ++call) {
            context.add_inplace(destination, source, 1U,
                                reist::intrinsic_backend::compiler_auto);
        }
        const auto expected =
            batch_reference(as_span(initial), as_span(addends), modulus, calls);
        check_batch(ctx, context, destination, as_span(expected));
    }
}

void test_self_alias_uses_fixed_rhs(test_context& ctx) {
    constexpr auto min = std::numeric_limits<std::int32_t>::min();
    constexpr auto max = std::numeric_limits<std::int32_t>::max();
    constexpr std::array<std::int32_t, 3U> moduli{3, 257, max};
    constexpr std::array<std::int32_t, 17U> initial{
        min, max, -1'000'003, -258, -129, -128, -1, 0, 1,
        127, 128, 129, 257, 258, 65'537, 1'000'003, 42};
    constexpr std::size_t repetitions = 3U;

    std::vector<reist::intrinsic_backend> backends{
        reist::intrinsic_backend::automatic,
        reist::intrinsic_backend::compiler_auto};
    if (reist::explicit_simd_available()) {
        backends.push_back(reist::intrinsic_backend::explicit_simd);
    }

    for (const std::int32_t modulus : moduli) {
        const reist::modulus_i32 context(modulus);
        const auto expected =
            batch_reference(initial, initial, modulus, repetitions);
        for (const reist::intrinsic_backend backend : backends) {
            auto destination = context.prepare(initial);
            context.add_inplace(destination, destination, repetitions,
                                backend);
            check_batch(ctx, context, destination, as_span(expected));
        }
    }
}

} // namespace

int main() {
    try {
        test_context ctx;
        test_modulus_and_value_contract(ctx);
        test_small_modulus_ties(ctx);
        test_exhaustive_centered_pairs(ctx);
        test_large_modulus_boundaries(ctx);
        test_prepare_and_fill(ctx);
        test_backend_metadata(ctx);
        test_invalid_inputs_and_context_mix(ctx);
        test_batch_backends_and_tails(ctx);
        test_default_backend_overload(ctx);
        test_repeated_persistent_state(ctx);
        test_self_alias_uses_fixed_rhs(ctx);
        return ctx.finish();
    } catch (const std::exception& error) {
        std::cerr << "Unhandled intrinsic test exception: " << error.what()
                  << '\n';
        return 2;
    } catch (...) {
        std::cerr << "Unhandled non-standard intrinsic test exception\n";
        return 2;
    }
}
