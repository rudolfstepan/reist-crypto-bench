#include "reist_intrinsics.hpp"
#include "bench_reist_intrinsics_const.hpp"

#include <algorithm>
#include <array>
#include <atomic>
#include <charconv>
#include <chrono>
#include <cstddef>
#include <cstdint>
#include <ctime>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <new>
#include <optional>
#include <span>
#include <stdexcept>
#include <string>
#include <string_view>
#include <system_error>
#include <vector>

#ifndef REIST_INTRINSIC_BENCH_OPTIMIZED
#define REIST_INTRINSIC_BENCH_OPTIMIZED 0
#endif

#ifndef REIST_BENCH_HAVE_AVX2_CONST
#define REIST_BENCH_HAVE_AVX2_CONST 0
#endif

#ifndef REIST_BENCH_HAVE_NEON_CONST
#define REIST_BENCH_HAVE_NEON_CONST 0
#endif

namespace {

using clock_type = std::chrono::steady_clock;

constexpr std::uint64_t kSeed = UINT64_C(0x6a09e667f3bcc909);
constexpr std::size_t kMinimumTrials = 6;
constexpr const char* kCsvPath = "results_reist_intrinsics.csv";
constexpr bool kOptimizedBuild = REIST_INTRINSIC_BENCH_OPTIMIZED != 0;

volatile std::uint64_t benchmark_sink = 0;

struct config {
    std::size_t elements = 1'000'003;
    std::size_t repetitions = 256;
    std::int32_t modulus = 1'000'003;
    std::size_t trials = 12;
};

enum class timed_method : std::size_t {
    compiler_const_percent = 0,
    reist_compiler_auto = 1,
    reist_automatic = 2,
};

constexpr std::array<std::array<timed_method, 3>, 6> kTrialOrders{{
    {timed_method::compiler_const_percent, timed_method::reist_compiler_auto,
     timed_method::reist_automatic},
    {timed_method::compiler_const_percent, timed_method::reist_automatic,
     timed_method::reist_compiler_auto},
    {timed_method::reist_compiler_auto, timed_method::compiler_const_percent,
     timed_method::reist_automatic},
    {timed_method::reist_compiler_auto, timed_method::reist_automatic,
     timed_method::compiler_const_percent},
    {timed_method::reist_automatic, timed_method::compiler_const_percent,
     timed_method::reist_compiler_auto},
    {timed_method::reist_automatic, timed_method::reist_compiler_auto,
     timed_method::compiler_const_percent},
}};

struct trial_result {
    std::size_t trial = 0;
    std::array<timed_method, 3> order{};
    double compiler_const_seconds = 0.0;
    double reist_compiler_seconds = 0.0;
    double reist_automatic_seconds = 0.0;
    double speedup_const_over_automatic = 0.0;
    double speedup_const_over_reist_compiler = 0.0;
    double speedup_reist_compiler_over_automatic = 0.0;
    std::uint64_t compiler_const_checksum = 0;
    std::uint64_t reist_compiler_checksum = 0;
    std::uint64_t reist_automatic_checksum = 0;
};

struct distribution {
    double median = 0.0;
    double q1 = 0.0;
    double q3 = 0.0;
    double iqr = 0.0;
};

struct compiler_const_selection {
    compiler_const_kernel kernel = nullptr;
    const char* backend = "portable";
};

constexpr std::string_view method_name(timed_method method) noexcept {
    switch (method) {
    case timed_method::compiler_const_percent:
        return "compiler_const_percent";
    case timed_method::reist_compiler_auto:
        return "reist_compiler_auto";
    case timed_method::reist_automatic:
        return "reist_automatic";
    }
    return "unknown";
}

std::string order_name(const std::array<timed_method, 3>& order) {
    std::string result;
    for (std::size_t index = 0; index < order.size(); ++index) {
        if (index != 0U) {
            result.push_back('>');
        }
        const std::string_view name = method_name(order[index]);
        result.append(name.data(), name.size());
    }
    return result;
}

compiler_const_selection select_compiler_const_kernel(
    std::uint32_t modulus) noexcept {
    const std::string_view explicit_backend(
        reist::explicit_simd_backend_name());
#if REIST_BENCH_HAVE_AVX2_CONST
    if (explicit_backend == "avx2") {
        return {compiler_const_kernel_avx2(modulus), "avx2"};
    }
#endif
#if REIST_BENCH_HAVE_NEON_CONST
    if (explicit_backend == "neon") {
        return {compiler_const_kernel_neon(modulus), "neon"};
    }
#endif
    return {compiler_const_kernel_portable(modulus), "portable-c++"};
}

void compiler_barrier() noexcept {
    std::atomic_signal_fence(std::memory_order_seq_cst);
}

void consume(std::uint64_t value) noexcept {
    const std::uint64_t previous = benchmark_sink;
    benchmark_sink = previous ^ value;
    compiler_barrier();
}

std::string compiler_description() {
#if defined(__clang__)
    return std::string("Clang ") + __clang_version__;
#elif defined(__GNUC__)
    return std::string("GCC ") + __VERSION__;
#elif defined(_MSC_VER)
#define REIST_STRINGIFY_IMPL(value) #value
#define REIST_STRINGIFY(value) REIST_STRINGIFY_IMPL(value)
    return std::string("MSVC ") + REIST_STRINGIFY(_MSC_FULL_VER);
#undef REIST_STRINGIFY
#undef REIST_STRINGIFY_IMPL
#else
    return "unknown";
#endif
}

constexpr long cpp_standard_version() noexcept {
#if defined(_MSC_VER) && defined(_MSVC_LANG)
    return _MSVC_LANG;
#else
    return __cplusplus;
#endif
}

std::string architecture_description() {
#if defined(__x86_64__) || defined(_M_X64)
    return "x86_64";
#elif defined(__aarch64__) || defined(_M_ARM64)
    return "aarch64";
#elif defined(__i386__) || defined(_M_IX86)
    return "x86";
#elif defined(__arm__) || defined(_M_ARM)
    return "arm";
#else
    return "unknown";
#endif
}

std::string utc_timestamp() {
    const std::time_t now = std::time(nullptr);
    std::tm utc{};
#if defined(_WIN32)
    if (gmtime_s(&utc, &now) != 0) {
        throw std::runtime_error("could not convert the timestamp to UTC");
    }
#else
    if (gmtime_r(&now, &utc) == nullptr) {
        throw std::runtime_error("could not convert the timestamp to UTC");
    }
#endif
    std::array<char, 32> text{};
    if (std::strftime(text.data(), text.size(), "%Y-%m-%dT%H:%M:%SZ", &utc)
        == 0) {
        throw std::runtime_error("could not format the UTC timestamp");
    }
    return text.data();
}

bool parse_positive_size(std::string_view text, std::size_t& value) {
    std::uint64_t parsed = 0;
    const char* const begin = text.data();
    const char* const end = begin + text.size();
    const auto result = std::from_chars(begin, end, parsed, 10);
    if (text.empty() || result.ec != std::errc{} || result.ptr != end
        || parsed == 0
        || parsed > static_cast<std::uint64_t>(
            std::numeric_limits<std::size_t>::max())) {
        return false;
    }
    value = static_cast<std::size_t>(parsed);
    return true;
}

bool parse_positive_modulus(std::string_view text, std::int32_t& value) {
    std::uint64_t parsed = 0;
    const char* const begin = text.data();
    const char* const end = begin + text.size();
    const auto result = std::from_chars(begin, end, parsed, 10);
    if (text.empty() || result.ec != std::errc{} || result.ptr != end
        || parsed == 0
        || parsed > static_cast<std::uint64_t>(
            std::numeric_limits<std::int32_t>::max())) {
        return false;
    }
    value = static_cast<std::int32_t>(parsed);
    return true;
}

void print_usage(const char* program) {
    std::cout
        << "Usage: " << program
        << " [elements repetitions modulus trials]\n"
        << "       " << program
        << " [--elements N] [--repetitions N] [--modulus B] [--trials N]\n\n"
        << "All counts and B must be positive; B must fit in int32_t.\n"
        << "Timed compile-time moduli: 256, 257, 12289, 65536, 65537, "
           "1000000, 1000003, 1000000007, 2147483647.\n"
        << "At least " << kMinimumTrials
        << " trials and a multiple of six are required for balanced "
           "three-way order. Defaults: "
           "elements=1000003, repetitions=256, modulus=1000003, trials=12.\n";
}

bool parse_arguments(int argc, char** argv, config& result, bool& help) {
    help = false;
    std::array<bool, 4> assigned{};
    std::size_t next_positional = 0;

    const auto assign = [&](std::size_t field, std::string_view text) {
        if (assigned[field]) {
            return false;
        }
        bool valid = false;
        if (field == 0) {
            valid = parse_positive_size(text, result.elements);
        } else if (field == 1) {
            valid = parse_positive_size(text, result.repetitions);
        } else if (field == 2) {
            valid = parse_positive_modulus(text, result.modulus);
        } else {
            valid = parse_positive_size(text, result.trials);
        }
        assigned[field] = valid;
        return valid;
    };

    for (int index = 1; index < argc; ++index) {
        const std::string_view argument(argv[index]);
        if (argument == "--help" || argument == "-h") {
            help = true;
            return true;
        }

        std::size_t field = 4;
        if (argument == "--elements") {
            field = 0;
        } else if (argument == "--repetitions") {
            field = 1;
        } else if (argument == "--modulus" || argument == "--B") {
            field = 2;
        } else if (argument == "--trials") {
            field = 3;
        }

        if (field < 4) {
            if (index + 1 >= argc || !assign(field, argv[++index])) {
                return false;
            }
            continue;
        }
        if (!argument.empty() && argument.front() == '-') {
            return false;
        }
        while (next_positional < assigned.size()
               && assigned[next_positional]) {
            ++next_positional;
        }
        if (next_positional >= assigned.size()
            || !assign(next_positional, argument)) {
            return false;
        }
        ++next_positional;
    }
    return result.trials >= kMinimumTrials
        && (result.trials % kTrialOrders.size()) == 0U;
}

std::uint64_t next_random(std::uint64_t& state) noexcept {
    state ^= state << 13U;
    state ^= state >> 7U;
    state ^= state << 17U;
    return state;
}

std::int32_t random_i32(std::uint64_t& state) noexcept {
    const std::uint32_t raw = static_cast<std::uint32_t>(next_random(state));
    const std::int64_t shifted = static_cast<std::int64_t>(raw)
        + static_cast<std::int64_t>(std::numeric_limits<std::int32_t>::min());
    return static_cast<std::int32_t>(shifted);
}

std::vector<std::int32_t> make_input(std::size_t count,
                                     std::int32_t B,
                                     std::uint64_t salt) {
    std::vector<std::int32_t> values(count);
    std::uint64_t state = kSeed ^ salt;
    for (std::int32_t& value : values) {
        value = random_i32(state);
    }

    const std::int32_t lower = static_cast<std::int32_t>(-(B / 2));
    const std::int32_t upper = static_cast<std::int32_t>((B - 1) / 2);
    const std::array<std::int32_t, 12> boundaries = {
        0,
        lower,
        upper,
        static_cast<std::int32_t>(lower > std::numeric_limits<std::int32_t>::min()
                                      ? lower - 1
                                      : lower),
        static_cast<std::int32_t>(upper < std::numeric_limits<std::int32_t>::max()
                                      ? upper + 1
                                      : upper),
        B,
        static_cast<std::int32_t>(-static_cast<std::int64_t>(B)),
        static_cast<std::int32_t>(B - 1),
        static_cast<std::int32_t>(1 - static_cast<std::int64_t>(B)),
        std::numeric_limits<std::int32_t>::min(),
        std::numeric_limits<std::int32_t>::max(),
        1
    };
    const std::size_t boundary_count = std::min(count, boundaries.size());
    for (std::size_t index = 0; index < boundary_count; ++index) {
        values[index] = boundaries[index];
        values[count - 1 - index] = boundaries[boundaries.size() - 1 - index];
    }
    return values;
}

std::uint64_t euclidean_residue(std::int32_t value, std::int32_t B) noexcept {
    std::int64_t residue = static_cast<std::int64_t>(value)
        % static_cast<std::int64_t>(B);
    if (residue < 0) {
        residue += B;
    }
    return static_cast<std::uint64_t>(residue);
}

std::vector<std::uint32_t> make_classic_input(
    std::span<const std::int32_t> input,
    std::int32_t B) {
    std::vector<std::uint32_t> residues;
    residues.reserve(input.size());
    for (const std::int32_t value : input) {
        residues.push_back(
            static_cast<std::uint32_t>(euclidean_residue(value, B)));
    }
    return residues;
}

std::int32_t centered_from_residue(std::uint64_t residue,
                                   std::int32_t B) noexcept {
    const std::uint64_t modulus = static_cast<std::uint64_t>(B);
    const std::uint64_t upper_half_begin =
        (modulus / 2U) + (modulus % 2U);
    const std::int64_t centered = residue >= upper_half_begin
        ? static_cast<std::int64_t>(residue) - static_cast<std::int64_t>(B)
        : static_cast<std::int64_t>(residue);
    return static_cast<std::int32_t>(centered);
}

std::uint64_t expected_residue(std::int32_t lhs,
                               std::int32_t rhs,
                               std::size_t repetitions,
                               std::int32_t B) noexcept {
    const std::uint64_t modulus = static_cast<std::uint64_t>(B);
    const std::uint64_t lhs_residue = euclidean_residue(lhs, B);
    const std::uint64_t rhs_residue = euclidean_residue(rhs, B);
    const std::uint64_t reduced_repetitions =
        static_cast<std::uint64_t>(repetitions) % modulus;
    const std::uint64_t scaled_rhs =
        (reduced_repetitions * rhs_residue) % modulus;
    return (lhs_residue + scaled_rhs) % modulus;
}

std::uint64_t hash_word(std::uint64_t hash, std::uint64_t word) noexcept {
    constexpr std::uint64_t prime = UINT64_C(1099511628211);
    for (unsigned int shift = 0; shift < 64U; shift += 8U) {
        hash ^= (word >> shift) & UINT64_C(0xff);
        hash *= prime;
    }
    return hash;
}

bool validate_output(const reist::prepared_i32_batch& output,
                     std::span<const std::int32_t> lhs,
                     std::span<const std::int32_t> rhs,
                     std::size_t repetitions,
                     std::int32_t B,
                     std::string_view label,
                     std::uint64_t& checksum) {
    const auto actual_centered = output.centered_values();
    if (output.modulus() != B || actual_centered.size() != lhs.size()
        || rhs.size() != lhs.size()) {
        std::cerr << "VALIDATION FAILED (" << label
                  << "): output context or size mismatch\n";
        return false;
    }

    const std::int32_t lower = static_cast<std::int32_t>(-(B / 2));
    const std::int32_t upper = static_cast<std::int32_t>((B - 1) / 2);
    std::uint64_t hash = UINT64_C(14695981039346656037);
    for (std::size_t index = 0; index < lhs.size(); ++index) {
        const std::uint64_t expected =
            expected_residue(lhs[index], rhs[index], repetitions, B);
        const std::int32_t expected_centered =
            centered_from_residue(expected, B);
        const std::int64_t actual_center =
            static_cast<std::int64_t>(actual_centered[index]);
        const std::int64_t actual_residue = actual_center < 0
            ? actual_center + static_cast<std::int64_t>(B)
            : actual_center;
        if (actual_residue != static_cast<std::int64_t>(expected)
            || actual_center != static_cast<std::int64_t>(expected_centered)
            || actual_center < static_cast<std::int64_t>(lower)
            || actual_center > static_cast<std::int64_t>(upper)) {
            std::cerr << "VALIDATION FAILED (" << label << ") at index "
                      << index << ": residue=" << actual_residue
                      << " (expected " << expected << "), centered="
                      << actual_center << " (expected " << expected_centered
                      << ")\n";
            return false;
        }
        hash = hash_word(hash, static_cast<std::uint64_t>(actual_residue));
    }
    checksum = hash;
    consume(hash);
    return true;
}

bool validate_classic_output(std::span<const std::uint32_t> output,
                             std::span<const std::int32_t> lhs,
                             std::span<const std::int32_t> rhs,
                             std::size_t repetitions,
                             std::int32_t B,
                             std::string_view label,
                             std::uint64_t& checksum) {
    if (output.size() != lhs.size() || rhs.size() != lhs.size()) {
        std::cerr << "VALIDATION FAILED (" << label
                  << "): output size mismatch\n";
        return false;
    }

    std::uint64_t hash = UINT64_C(14695981039346656037);
    for (std::size_t index = 0; index < lhs.size(); ++index) {
        const std::uint64_t expected =
            expected_residue(lhs[index], rhs[index], repetitions, B);
        const std::uint64_t actual = output[index];
        if (actual != expected) {
            std::cerr << "VALIDATION FAILED (" << label << ") at index "
                      << index << ": residue=" << actual << " (expected "
                      << expected << ")\n";
            return false;
        }
        hash = hash_word(hash, actual);
    }
    checksum = hash;
    consume(hash);
    return true;
}

double timed_compiler_const(compiler_const_kernel kernel,
                            std::vector<std::uint32_t>& destination,
                            std::span<const std::uint32_t> rhs,
                            std::size_t repetitions) {
    compiler_barrier();
    const auto start = clock_type::now();
    compiler_barrier();
    kernel(destination.data(), rhs.data(), destination.size(), repetitions);
    compiler_barrier();
    const auto stop = clock_type::now();
    compiler_barrier();
    return std::chrono::duration<double>(stop - start).count();
}

double timed_reist_compiler(const reist::modulus_i32& modulus,
                            reist::prepared_i32_batch& destination,
                            const reist::prepared_i32_batch& rhs,
                            std::size_t repetitions) {
    compiler_barrier();
    const auto start = clock_type::now();
    compiler_barrier();
    modulus.add_inplace(destination, rhs, repetitions,
                        reist::intrinsic_backend::compiler_auto);
    compiler_barrier();
    const auto stop = clock_type::now();
    compiler_barrier();
    return std::chrono::duration<double>(stop - start).count();
}

double timed_reist_automatic(const reist::modulus_i32& modulus,
                             reist::prepared_i32_batch& destination,
                             const reist::prepared_i32_batch& rhs,
                             std::size_t repetitions) {
    compiler_barrier();
    const auto start = clock_type::now();
    compiler_barrier();
    modulus.add_inplace(destination, rhs, repetitions);
    compiler_barrier();
    const auto stop = clock_type::now();
    compiler_barrier();
    return std::chrono::duration<double>(stop - start).count();
}

bool run_preflight(std::int32_t requested_modulus) {
    constexpr std::array<std::int32_t, 12> standard_moduli = {
        1, 2, 3, 256, 257, 12'289, 65'536, 65'537, 1'000'000,
        1'000'003, 1'000'000'007,
        std::numeric_limits<std::int32_t>::max()
    };
    constexpr std::array<std::size_t, 7> tail_sizes = {1, 3, 7, 15, 17, 31, 33};
    constexpr std::size_t repetitions = 19;

    std::vector<std::int32_t> moduli(standard_moduli.begin(),
                                     standard_moduli.end());
    if (std::find(moduli.begin(), moduli.end(), requested_modulus)
        == moduli.end()) {
        moduli.push_back(requested_modulus);
    }
    for (const std::int32_t B : moduli) {
        const reist::modulus_i32 modulus(B);
        for (const std::size_t count : tail_sizes) {
            const auto lhs = make_input(count, B, UINT64_C(0x1111111111111111));
            const auto rhs = make_input(count, B, UINT64_C(0x2222222222222222));
            const auto prepared_lhs = modulus.prepare(lhs);
            const auto prepared_rhs = modulus.prepare(rhs);
            auto reist_compiler_output = prepared_lhs;
            auto reist_automatic_output = prepared_lhs;
            modulus.add_inplace(reist_compiler_output, prepared_rhs,
                                repetitions,
                                reist::intrinsic_backend::compiler_auto);
            modulus.add_inplace(reist_automatic_output, prepared_rhs,
                                repetitions);

            std::uint64_t reist_compiler_checksum = 0;
            std::uint64_t reist_automatic_checksum = 0;
            if (!validate_output(reist_compiler_output, lhs, rhs,
                                 repetitions, B,
                                 "REIST compiler-auto preflight",
                                 reist_compiler_checksum)
                || !validate_output(reist_automatic_output, lhs, rhs,
                                    repetitions, B,
                                    "REIST automatic preflight",
                                    reist_automatic_checksum)
                || reist_compiler_checksum != reist_automatic_checksum) {
                return false;
            }

            const compiler_const_selection selection =
                select_compiler_const_kernel(static_cast<std::uint32_t>(B));
            if (selection.kernel != nullptr) {
                auto compiler_output = make_classic_input(lhs, B);
                const auto compiler_rhs = make_classic_input(rhs, B);
                selection.kernel(compiler_output.data(), compiler_rhs.data(),
                                 compiler_output.size(), repetitions);
                std::uint64_t compiler_checksum = 0;
                if (!validate_classic_output(
                        compiler_output, lhs, rhs, repetitions, B,
                        "compiler constexpr-% preflight", compiler_checksum)
                    || compiler_checksum != reist_automatic_checksum) {
                    return false;
                }
            }
        }
    }
    return true;
}

double quantile(const std::vector<double>& sorted, double fraction) {
    if (sorted.empty()) {
        return 0.0;
    }
    const double position = fraction
        * static_cast<double>(sorted.size() - 1U);
    const auto lower = static_cast<std::size_t>(position);
    const std::size_t upper = std::min(lower + 1U, sorted.size() - 1U);
    const double weight = position - static_cast<double>(lower);
    return sorted[lower] + ((sorted[upper] - sorted[lower]) * weight);
}

distribution summarize(std::vector<double> samples) {
    std::sort(samples.begin(), samples.end());
    distribution result;
    result.median = quantile(samples, 0.5);
    result.q1 = quantile(samples, 0.25);
    result.q3 = quantile(samples, 0.75);
    result.iqr = result.q3 - result.q1;
    return result;
}

std::string csv_escape(std::string_view value) {
    std::string result;
    result.reserve(value.size() + 2U);
    result.push_back('"');
    for (const char character : value) {
        if (character == '"') {
            result.push_back('"');
        }
        result.push_back(character);
    }
    result.push_back('"');
    return result;
}

bool write_csv(const config& settings,
               std::string_view timestamp,
               std::string_view compiler_baseline_backend,
               std::string_view resolved_backend,
               const std::vector<trial_result>& trials,
               const distribution& compiler_const_stats,
               const distribution& reist_compiler_stats,
               const distribution& reist_automatic_stats,
               const distribution& speedup_const_automatic_stats,
               const distribution& speedup_const_compiler_stats,
               const distribution& speedup_compiler_automatic_stats) {
    std::ofstream csv(kCsvPath, std::ios::trunc);
    if (!csv) {
        std::cerr << "ERROR: could not write " << kCsvPath << '\n';
        return false;
    }
    csv << "schema,timestamp_utc,benchmark,comparison_scope,architecture,"
           "compiler,cpp_standard,compiler_baseline_backend,reist_policy,"
           "resolved_reist_backend,"
           "modulus,elements,repetitions,trials,row_type,trial,"
           "execution_order,implementation,"
           "seconds,seconds_q1,seconds_q3,seconds_iqr,"
           "completed_lane_chains_per_second,"
           "updates_per_second,ns_per_update,"
           "speedup_const_over_automatic,"
           "speedup_const_over_automatic_q1,"
           "speedup_const_over_automatic_q3,"
           "speedup_const_over_automatic_iqr,"
           "speedup_const_over_compiler_auto,"
           "speedup_const_over_compiler_auto_q1,"
           "speedup_const_over_compiler_auto_q3,"
           "speedup_const_over_compiler_auto_iqr,"
           "speedup_compiler_auto_over_automatic,"
           "speedup_compiler_auto_over_automatic_q1,"
           "speedup_compiler_auto_over_automatic_q3,"
           "speedup_compiler_auto_over_automatic_iqr,"
           "checksum,validation\n";
    csv << std::setprecision(17);

    const std::string compiler = compiler_description();
    const std::string architecture = architecture_description();
    const auto prefix = [&] {
        csv << "3," << csv_escape(timestamp) << ','
            << csv_escape("reist_const_modulo_api_diagnostic") << ','
            << csv_escape(
                   "prepared_steady_state_constexpr_percent_vs_reist")
            << ','
            << csv_escape(architecture) << ',' << csv_escape(compiler) << ','
            << cpp_standard_version() << ','
            << csv_escape(compiler_baseline_backend) << ','
            << csv_escape("compiler_auto_and_automatic") << ','
            << csv_escape(resolved_backend) << ','
            << settings.modulus << ',' << settings.elements << ','
            << settings.repetitions << ',' << settings.trials << ',';
    };

    const double elements = static_cast<double>(settings.elements);
    const double updates = elements * static_cast<double>(settings.repetitions);
    const std::uint64_t summary_checksum = trials.empty()
        ? 0U
        : trials.front().compiler_const_checksum;
    for (const trial_result& trial : trials) {
        const std::string order = order_name(trial.order);
        const auto trial_row = [&](std::string_view implementation,
                                   double seconds,
                                   std::uint64_t checksum) {
            prefix();
            csv << "trial," << trial.trial << ',' << csv_escape(order) << ','
                << csv_escape(implementation) << ',' << seconds << ",,,,"
                << (elements / seconds) << ',' << (updates / seconds) << ','
                << ((seconds * 1.0e9) / updates) << ','
                << trial.speedup_const_over_automatic << ",,,,"
                << trial.speedup_const_over_reist_compiler << ",,,,"
                << trial.speedup_reist_compiler_over_automatic << ",,,,"
                << checksum << ",pass\n";
        };
        trial_row("compiler_const_percent", trial.compiler_const_seconds,
                  trial.compiler_const_checksum);
        trial_row("reist_compiler_auto", trial.reist_compiler_seconds,
                  trial.reist_compiler_checksum);
        trial_row("reist_automatic", trial.reist_automatic_seconds,
                  trial.reist_automatic_checksum);
    }

    const auto summary_row = [&](std::string_view implementation,
                                 const distribution& stats) {
        prefix();
        csv << "summary,0,"
            << csv_escape("balanced_all_six_permutations") << ','
            << csv_escape(implementation) << ',' << stats.median << ','
            << stats.q1 << ',' << stats.q3 << ',' << stats.iqr << ','
            << (elements / stats.median) << ',' << (updates / stats.median)
            << ',' << ((stats.median * 1.0e9) / updates) << ','
            << speedup_const_automatic_stats.median << ','
            << speedup_const_automatic_stats.q1 << ','
            << speedup_const_automatic_stats.q3 << ','
            << speedup_const_automatic_stats.iqr << ','
            << speedup_const_compiler_stats.median << ','
            << speedup_const_compiler_stats.q1 << ','
            << speedup_const_compiler_stats.q3 << ','
            << speedup_const_compiler_stats.iqr << ','
            << speedup_compiler_automatic_stats.median << ','
            << speedup_compiler_automatic_stats.q1 << ','
            << speedup_compiler_automatic_stats.q3 << ','
            << speedup_compiler_automatic_stats.iqr << ','
            << summary_checksum << ",pass\n";
    };
    summary_row("compiler_const_percent", compiler_const_stats);
    summary_row("reist_compiler_auto", reist_compiler_stats);
    summary_row("reist_automatic", reist_automatic_stats);
    return static_cast<bool>(csv);
}

void print_ratio_observation(std::string_view label,
                             const distribution& stats) {
    std::cout << "  " << label << ": ";
    if (stats.q1 > 1.0) {
        std::cout << "descriptively positive (Q1 > 1.0)";
    } else if (stats.q3 < 1.0) {
        std::cout << "descriptively negative (Q3 < 1.0)";
    } else {
        std::cout << "mixed; the central half crosses 1.0";
    }
    std::cout << '\n';
}

int run(const config& settings) {
    if (!kOptimizedBuild) {
        std::cerr
            << "SKIP: the modulo-vs-REIST timing requires an optimized "
               "build (CMake Release/RelWithDebInfo/MinSizeRel or make "
               "diagnostics).\n";
        return 77;
    }

    const compiler_const_selection compiler_selection =
        select_compiler_const_kernel(
            static_cast<std::uint32_t>(settings.modulus));
    if (compiler_selection.kernel == nullptr) {
        std::cerr
            << "ERROR: no compile-time % kernel exists for modulus "
            << settings.modulus << ". Supported moduli: 256, 257, 12289, "
               "65536, 65537, 1000000, 1000003, 1000000007, "
               "2147483647.\n";
        return 2;
    }

    const std::string backend_name = reist::explicit_simd_available()
        ? reist::explicit_simd_backend_name()
        : "portable-c++";
    std::cout << "REIST developer-API modulo benchmark\n"
              << "  primary comparison: compiler-optimized constant C++ % "
                 "vs REIST automatic\n"
              << "  secondary paths: REIST compiler_auto and automatic\n"
              << "  operation  : dst[i] = (dst[i] + rhs[i]) mod B\n"
              << "  timing     : prepared steady-state updates only; input "
                 "normalization, copies, output conversion and validation "
                 "are excluded\n"
              << "  architecture: " << architecture_description() << '\n'
              << "  compiler   : " << compiler_description() << '\n'
              << "  constant-% backend: " << compiler_selection.backend
              << " (B is a compile-time template constant)\n"
              << "  automatic backend: " << backend_name << '\n'
              << "  elements   : " << settings.elements << '\n'
              << "  repetitions: " << settings.repetitions << '\n'
              << "  modulus B  : " << settings.modulus << '\n'
              << "  trials     : " << settings.trials
              << " (balanced across all six execution orders)\n";

    if (!run_preflight(settings.modulus)) {
        return 1;
    }
    std::cout << "  preflight  : PASS (independent oracle, boundary and tail sizes)\n";

    const auto lhs = make_input(settings.elements, settings.modulus,
                                UINT64_C(0x3333333333333333));
    const auto rhs = make_input(settings.elements, settings.modulus,
                                UINT64_C(0x4444444444444444));
    const auto compiler_lhs = make_classic_input(lhs, settings.modulus);
    const auto compiler_rhs = make_classic_input(rhs, settings.modulus);
    const reist::modulus_i32 modulus(settings.modulus);
    const auto prepared_lhs = modulus.prepare(lhs);
    const auto prepared_rhs = modulus.prepare(rhs);

    const std::size_t warmup_repetitions =
        std::min<std::size_t>(settings.repetitions, 4U);
    auto compiler_warmup = compiler_lhs;
    auto reist_compiler_warmup = prepared_lhs;
    auto reist_automatic_warmup = prepared_lhs;
    compiler_selection.kernel(
        compiler_warmup.data(), compiler_rhs.data(), compiler_warmup.size(),
        warmup_repetitions);
    modulus.add_inplace(reist_compiler_warmup, prepared_rhs,
                        warmup_repetitions,
                        reist::intrinsic_backend::compiler_auto);
    modulus.add_inplace(reist_automatic_warmup, prepared_rhs,
                        warmup_repetitions);
    std::uint64_t compiler_warmup_checksum = 0;
    std::uint64_t reist_compiler_warmup_checksum = 0;
    std::uint64_t reist_automatic_warmup_checksum = 0;
    if (!validate_classic_output(compiler_warmup, lhs, rhs,
                                 warmup_repetitions, settings.modulus,
                                 "compiler constant-% warmup",
                                 compiler_warmup_checksum)
        || !validate_output(reist_compiler_warmup, lhs, rhs,
                            warmup_repetitions, settings.modulus,
                            "REIST compiler-auto warmup",
                            reist_compiler_warmup_checksum)
        || !validate_output(reist_automatic_warmup, lhs, rhs,
                            warmup_repetitions, settings.modulus,
                            "REIST automatic warmup",
                            reist_automatic_warmup_checksum)
        || compiler_warmup_checksum != reist_compiler_warmup_checksum
        || compiler_warmup_checksum != reist_automatic_warmup_checksum) {
        return 1;
    }

    std::vector<trial_result> trials;
    trials.reserve(settings.trials);
    std::vector<double> compiler_const_samples;
    std::vector<double> reist_compiler_samples;
    std::vector<double> reist_automatic_samples;
    std::vector<double> speedup_const_automatic_samples;
    std::vector<double> speedup_const_compiler_samples;
    std::vector<double> speedup_compiler_automatic_samples;
    compiler_const_samples.reserve(settings.trials);
    reist_compiler_samples.reserve(settings.trials);
    reist_automatic_samples.reserve(settings.trials);
    speedup_const_automatic_samples.reserve(settings.trials);
    speedup_const_compiler_samples.reserve(settings.trials);
    speedup_compiler_automatic_samples.reserve(settings.trials);

    std::cout << std::fixed << std::setprecision(6);
    for (std::size_t trial_number = 0; trial_number < settings.trials;
         ++trial_number) {
        trial_result trial;
        trial.trial = trial_number + 1U;
        trial.order = kTrialOrders[trial_number % kTrialOrders.size()];

        // Initialize in reverse execution order. Across each complete group of
        // six trials, every path occupies every timing and cache position.
        std::vector<std::uint32_t> compiler_output;
        std::optional<reist::prepared_i32_batch> reist_compiler_output;
        std::optional<reist::prepared_i32_batch> reist_automatic_output;
        for (std::size_t reverse = trial.order.size(); reverse > 0U;
             --reverse) {
            switch (trial.order[reverse - 1U]) {
            case timed_method::compiler_const_percent:
                compiler_output = compiler_lhs;
                break;
            case timed_method::reist_compiler_auto:
                reist_compiler_output.emplace(prepared_lhs);
                break;
            case timed_method::reist_automatic:
                reist_automatic_output.emplace(prepared_lhs);
                break;
            }
        }

        for (const timed_method method : trial.order) {
            switch (method) {
            case timed_method::compiler_const_percent:
                trial.compiler_const_seconds = timed_compiler_const(
                    compiler_selection.kernel, compiler_output, compiler_rhs,
                    settings.repetitions);
                break;
            case timed_method::reist_compiler_auto:
                trial.reist_compiler_seconds = timed_reist_compiler(
                    modulus, *reist_compiler_output, prepared_rhs,
                    settings.repetitions);
                break;
            case timed_method::reist_automatic:
                trial.reist_automatic_seconds = timed_reist_automatic(
                    modulus, *reist_automatic_output, prepared_rhs,
                    settings.repetitions);
                break;
            }
        }
        if (trial.compiler_const_seconds <= 0.0
            || trial.reist_compiler_seconds <= 0.0
            || trial.reist_automatic_seconds <= 0.0) {
            std::cerr << "ERROR: non-positive duration in trial "
                      << trial.trial << '\n';
            return 1;
        }
        trial.speedup_const_over_automatic =
            trial.compiler_const_seconds / trial.reist_automatic_seconds;
        trial.speedup_const_over_reist_compiler =
            trial.compiler_const_seconds / trial.reist_compiler_seconds;
        trial.speedup_reist_compiler_over_automatic =
            trial.reist_compiler_seconds / trial.reist_automatic_seconds;
        if (!validate_classic_output(
                compiler_output, lhs, rhs, settings.repetitions,
                settings.modulus, "compiler constant-% timed trial",
                trial.compiler_const_checksum)
            || !validate_output(*reist_compiler_output, lhs, rhs,
                                settings.repetitions, settings.modulus,
                                "REIST compiler-auto timed trial",
                                trial.reist_compiler_checksum)
            || !validate_output(*reist_automatic_output, lhs, rhs,
                                settings.repetitions, settings.modulus,
                                "REIST automatic timed trial",
                                trial.reist_automatic_checksum)
            || trial.compiler_const_checksum != trial.reist_compiler_checksum
            || trial.compiler_const_checksum
                != trial.reist_automatic_checksum) {
            return 1;
        }

        compiler_const_samples.push_back(trial.compiler_const_seconds);
        reist_compiler_samples.push_back(trial.reist_compiler_seconds);
        reist_automatic_samples.push_back(trial.reist_automatic_seconds);
        speedup_const_automatic_samples.push_back(
            trial.speedup_const_over_automatic);
        speedup_const_compiler_samples.push_back(
            trial.speedup_const_over_reist_compiler);
        speedup_compiler_automatic_samples.push_back(
            trial.speedup_reist_compiler_over_automatic);
        trials.push_back(trial);
        std::cout << "  trial " << std::setw(2) << trial.trial << " ["
                  << order_name(trial.order) << "]: const %="
                  << trial.compiler_const_seconds
                  << " s, REIST compiler_auto="
                  << trial.reist_compiler_seconds
                  << " s, REIST automatic="
                  << trial.reist_automatic_seconds
                  << " s, const/automatic="
                  << trial.speedup_const_over_automatic << "x\n";
    }

    const distribution compiler_const_stats =
        summarize(compiler_const_samples);
    const distribution reist_compiler_stats =
        summarize(reist_compiler_samples);
    const distribution reist_automatic_stats =
        summarize(reist_automatic_samples);
    const distribution speedup_const_automatic_stats =
        summarize(speedup_const_automatic_samples);
    const distribution speedup_const_compiler_stats =
        summarize(speedup_const_compiler_samples);
    const distribution speedup_compiler_automatic_stats =
        summarize(speedup_compiler_automatic_samples);
    const double updates = static_cast<double>(settings.elements)
        * static_cast<double>(settings.repetitions);
    std::cout << "\nMedian and central 50% (Q1..Q3):\n"
              << "  compiler constant %: " << compiler_const_stats.median
              << " s [" << compiler_const_stats.q1 << ", "
              << compiler_const_stats.q3 << "], "
              << (updates / compiler_const_stats.median) << " updates/s\n"
              << "  REIST compiler_auto: " << reist_compiler_stats.median
              << " s [" << reist_compiler_stats.q1 << ", "
              << reist_compiler_stats.q3 << "], "
              << (updates / reist_compiler_stats.median) << " updates/s\n"
              << "  REIST automatic    : " << reist_automatic_stats.median
              << " s [" << reist_automatic_stats.q1 << ", "
              << reist_automatic_stats.q3 << "], "
              << (updates / reist_automatic_stats.median) << " updates/s\n"
              << "  const % / REIST automatic: "
              << speedup_const_automatic_stats.median << "x ["
              << speedup_const_automatic_stats.q1 << ", "
              << speedup_const_automatic_stats.q3 << "]\n"
              << "  const % / REIST compiler_auto: "
              << speedup_const_compiler_stats.median << "x ["
              << speedup_const_compiler_stats.q1 << ", "
              << speedup_const_compiler_stats.q3 << "]\n"
              << "  REIST compiler_auto / automatic: "
              << speedup_compiler_automatic_stats.median << "x ["
              << speedup_compiler_automatic_stats.q1 << ", "
              << speedup_compiler_automatic_stats.q3 << "]\n"
              << "  interpretation: in every ratio, >1 means the method "
                 "named after '/' was faster.\n"
              << "  claim boundary: this is a prepared, repeated modular-"
                 "addition workload, not a universal modulo or end-to-end "
                  "application claim.\n";
    print_ratio_observation("const % / REIST automatic",
                            speedup_const_automatic_stats);
    print_ratio_observation("const % / REIST compiler_auto",
                            speedup_const_compiler_stats);
    print_ratio_observation("REIST compiler_auto / automatic",
                            speedup_compiler_automatic_stats);

    const std::string timestamp = utc_timestamp();
    if (!write_csv(settings, timestamp, compiler_selection.backend,
                   backend_name, trials, compiler_const_stats,
                   reist_compiler_stats, reist_automatic_stats,
                   speedup_const_automatic_stats,
                   speedup_const_compiler_stats,
                   speedup_compiler_automatic_stats)) {
        return 1;
    }
    std::cout << "CSV written to " << kCsvPath << '\n';
    return 0;
}

} // namespace

int main(int argc, char** argv) {
    try {
        config settings;
        bool help = false;
        if (!parse_arguments(argc, argv, settings, help)) {
            print_usage(argv[0]);
            return 2;
        }
        if (help) {
            print_usage(argv[0]);
            return 0;
        }
        return run(settings);
    } catch (const std::bad_alloc&) {
        std::cerr << "ERROR: not enough memory for the requested element count\n";
        return 1;
    } catch (const std::exception& error) {
        std::cerr << "ERROR: " << error.what() << '\n';
        return 1;
    } catch (...) {
        std::cerr << "ERROR: unexpected non-standard exception\n";
        return 1;
    }
}
