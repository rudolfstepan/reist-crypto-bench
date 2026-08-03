#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <cstdio>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <string>
#include <vector>

#if defined(_MSC_VER)
#include <intrin.h>
#endif

#ifndef _WIN32
#include <unistd.h>
#else
#include <winsock2.h>
#include <windows.h>
#endif

#if defined(__aarch64__) || defined(__arm__)
#include <arm_neon.h>
#define REIST_HAVE_NEON 1
#else
#define REIST_HAVE_NEON 0
#endif

using Clock = std::chrono::steady_clock;

#if defined(_MSC_VER)
#define BENCH_NOINLINE __declspec(noinline)
#elif defined(__GNUC__) || defined(__clang__)
#define BENCH_NOINLINE __attribute__((noinline))
#else
#define BENCH_NOINLINE
#endif

extern "C" {
volatile std::uint32_t reist_modadd_neon_benchmark_sink = 0;
}

constexpr std::size_t kStreams = 4;
constexpr std::array<std::int32_t, kStreams> kInitialSeeds = {0, 1, 2, 3};
constexpr std::array<std::int32_t, kStreams> kStepSeeds = {3, 5, 7, 11};

inline void compiler_barrier() {
#if defined(__GNUC__) || defined(__clang__)
    __asm__ __volatile__("" ::: "memory");
#elif defined(_MSC_VER)
    _ReadWriteBarrier();
#endif
}

struct Result {
    std::int32_t B;
    std::int64_t updates_per_stream;
    const char* name;
    const char* mode;
    double seconds;
};

struct Bounds {
    std::int32_t lo;
    std::int32_t hi; // exclusive
};

struct LaneConfig {
    std::array<std::uint32_t, kStreams> initial_nonnegative{};
    std::array<std::uint32_t, kStreams> step_nonnegative{};
    std::array<std::int32_t, kStreams> initial_canonical{};
    std::array<std::int32_t, kStreams> step_canonical{};
};

constexpr Bounds canonical_bounds(std::int32_t B) {
    const std::int32_t half = B / 2;
    return {-half, static_cast<std::int32_t>(B - half)};
}

constexpr std::int32_t canonical_from_nonnegative(
    std::uint32_t value, std::int32_t B) {
    const std::int32_t hi = canonical_bounds(B).hi;
    return value >= static_cast<std::uint32_t>(hi)
        ? static_cast<std::int32_t>(static_cast<std::int64_t>(value) - B)
        : static_cast<std::int32_t>(value);
}

constexpr LaneConfig make_lane_config(std::int32_t B) {
    LaneConfig config{};
    const std::uint32_t modulus = static_cast<std::uint32_t>(B);
    for (std::size_t lane = 0; lane < kStreams; ++lane) {
        const std::uint32_t initial =
            static_cast<std::uint32_t>(kInitialSeeds[lane]) % modulus;
        const std::uint32_t step =
            static_cast<std::uint32_t>(kStepSeeds[lane]) % modulus;
        config.initial_nonnegative[lane] = initial;
        config.step_nonnegative[lane] = step;
        config.initial_canonical[lane] = canonical_from_nonnegative(initial, B);
        config.step_canonical[lane] = canonical_from_nonnegative(step, B);
    }
    return config;
}

constexpr bool is_canonical(std::int32_t value, std::int32_t B) {
    const Bounds bounds = canonical_bounds(B);
    return value >= bounds.lo && value < bounds.hi;
}

constexpr std::int32_t correct_canonical_once(
    std::int32_t sum, std::int32_t B) {
    const Bounds bounds = canonical_bounds(B);
    if (sum >= bounds.hi) {
        sum = static_cast<std::int32_t>(sum - B);
    } else if (sum < bounds.lo) {
        sum = static_cast<std::int32_t>(sum + B);
    }
    return sum;
}

std::uint32_t canonical_to_nonnegative(std::int32_t value, std::int32_t B) {
    return value < 0
        ? static_cast<std::uint32_t>(value + B)
        : static_cast<std::uint32_t>(value);
}

extern "C" [[maybe_unused]] BENCH_NOINLINE
std::array<std::uint32_t, kStreams>
classic_modadd_4stream_runtime_kernel(std::int32_t B, std::int64_t N) {
    const LaneConfig config = make_lane_config(B);
    const std::uint32_t modulus = static_cast<std::uint32_t>(B);
    auto state = config.initial_nonnegative;
    for (std::int64_t i = 0; i < N; ++i) {
        for (std::size_t lane = 0; lane < kStreams; ++lane) {
            state[lane] = (state[lane] + config.step_nonnegative[lane]) % modulus;
        }
    }
    reist_modadd_neon_benchmark_sink = state[0];
    return state;
}

extern "C" [[maybe_unused]] BENCH_NOINLINE
std::array<std::int32_t, kStreams>
reist_modadd_4stream_runtime_kernel(std::int32_t B, std::int64_t N) {
    const LaneConfig config = make_lane_config(B);
    auto state = config.initial_canonical;
    for (std::int64_t i = 0; i < N; ++i) {
        for (std::size_t lane = 0; lane < kStreams; ++lane) {
            state[lane] = correct_canonical_once(
                static_cast<std::int32_t>(state[lane] + config.step_canonical[lane]),
                B);
        }
    }
    reist_modadd_neon_benchmark_sink =
        static_cast<std::uint32_t>(state[0]);
    return state;
}

template<std::int32_t B>
BENCH_NOINLINE std::array<std::uint32_t, kStreams>
classic_four_streams_compile_time(std::int64_t N) {
    static_assert(B > 0);
    constexpr LaneConfig config = make_lane_config(B);
    constexpr std::uint32_t modulus = static_cast<std::uint32_t>(B);
    auto state = config.initial_nonnegative;
    for (std::int64_t i = 0; i < N; ++i) {
        for (std::size_t lane = 0; lane < kStreams; ++lane) {
            state[lane] = (state[lane] + config.step_nonnegative[lane]) % modulus;
        }
    }
    reist_modadd_neon_benchmark_sink = state[0];
    return state;
}

template<std::int32_t B>
BENCH_NOINLINE std::array<std::int32_t, kStreams>
scalar_four_streams_compile_time(std::int64_t N) {
    static_assert(B > 0);
    constexpr LaneConfig config = make_lane_config(B);
    constexpr Bounds bounds = canonical_bounds(B);
    auto state = config.initial_canonical;
    for (std::int64_t i = 0; i < N; ++i) {
        for (std::size_t lane = 0; lane < kStreams; ++lane) {
            std::int32_t sum = static_cast<std::int32_t>(
                state[lane] + config.step_canonical[lane]);
            if (sum >= bounds.hi) {
                sum = static_cast<std::int32_t>(sum - B);
            } else if (sum < bounds.lo) {
                sum = static_cast<std::int32_t>(sum + B);
            }
            state[lane] = sum;
        }
    }
    reist_modadd_neon_benchmark_sink =
        static_cast<std::uint32_t>(state[0]);
    return state;
}

#if REIST_HAVE_NEON
extern "C" BENCH_NOINLINE std::array<std::int32_t, kStreams>
reist_modadd_neon_4stream_runtime_kernel(std::int32_t B, std::int64_t N) {
    const LaneConfig config = make_lane_config(B);
    const Bounds bounds = canonical_bounds(B);
    int32x4_t state = vld1q_s32(config.initial_canonical.data());
    const int32x4_t step = vld1q_s32(config.step_canonical.data());
    const int32x4_t modulus = vdupq_n_s32(B);
    const int32x4_t lo = vdupq_n_s32(bounds.lo);
    const int32x4_t hi = vdupq_n_s32(bounds.hi);

    for (std::int64_t i = 0; i < N; ++i) {
        state = vaddq_s32(state, step);
        const uint32x4_t upper = vcgeq_s32(state, hi);
        const uint32x4_t lower = vcltq_s32(state, lo);
        state = vbslq_s32(upper, vsubq_s32(state, modulus), state);
        state = vbslq_s32(lower, vaddq_s32(state, modulus), state);
    }

    std::array<std::int32_t, kStreams> result{};
    vst1q_s32(result.data(), state);
    reist_modadd_neon_benchmark_sink =
        static_cast<std::uint32_t>(result[0]);
    return result;
}

template<std::int32_t B>
BENCH_NOINLINE std::array<std::int32_t, kStreams>
neon_four_streams_compile_time(std::int64_t N) {
    static_assert(B > 0);
    constexpr LaneConfig config = make_lane_config(B);
    constexpr Bounds bounds = canonical_bounds(B);
    int32x4_t state = vld1q_s32(config.initial_canonical.data());
    const int32x4_t step = vld1q_s32(config.step_canonical.data());
    const int32x4_t modulus = vdupq_n_s32(B);
    const int32x4_t lo = vdupq_n_s32(bounds.lo);
    const int32x4_t hi = vdupq_n_s32(bounds.hi);

    for (std::int64_t i = 0; i < N; ++i) {
        state = vaddq_s32(state, step);
        const uint32x4_t upper = vcgeq_s32(state, hi);
        const uint32x4_t lower = vcltq_s32(state, lo);
        state = vbslq_s32(upper, vsubq_s32(state, modulus), state);
        state = vbslq_s32(lower, vaddq_s32(state, modulus), state);
    }

    std::array<std::int32_t, kStreams> result{};
    vst1q_s32(result.data(), state);
    reist_modadd_neon_benchmark_sink =
        static_cast<std::uint32_t>(result[0]);
    return result;
}
#endif

template<typename F>
double time_call(F&& function) {
    compiler_barrier();
    const auto t0 = Clock::now();
    compiler_barrier();
    function();
    compiler_barrier();
    const auto t1 = Clock::now();
    compiler_barrier();
    return std::chrono::duration<double>(t1 - t0).count();
}

[[maybe_unused]] bool lane_results_match(
    const std::array<std::uint32_t, kStreams>& classic,
    const std::array<std::int32_t, kStreams>& canonical,
    std::int32_t B) {
    for (std::size_t lane = 0; lane < kStreams; ++lane) {
        if (!is_canonical(canonical[lane], B)
            || canonical_to_nonnegative(canonical[lane], B) != classic[lane]) {
            return false;
        }
    }
    return true;
}

[[maybe_unused]] bool canonical_lanes_equal(
    const std::array<std::int32_t, kStreams>& lhs,
    const std::array<std::int32_t, kStreams>& rhs) {
    return lhs == rhs;
}

template<typename T>
void print_lanes(const std::array<T, kStreams>& lanes) {
    std::cout << '[';
    for (std::size_t lane = 0; lane < kStreams; ++lane) {
        if (lane != 0) {
            std::cout << ", ";
        }
        std::cout << lanes[lane];
    }
    std::cout << ']';
}

#if REIST_HAVE_NEON
void print_case(
    std::int32_t B,
    const char* mode,
    double t_classic,
    double t_scalar,
    double t_neon,
    const std::array<std::uint32_t, kStreams>& classic,
    const std::array<std::int32_t, kStreams>& scalar,
    const std::array<std::int32_t, kStreams>& neon) {
    std::cout << '[' << mode << "]\n"
              << "Modulus B = " << B << "\n"
              << "  classic_mod (4 streams) : " << t_classic << " s\n"
              << "  REIST scalar (4 streams): " << t_scalar << " s\n"
              << "  REIST NEON (4 streams)  : " << t_neon << " s\n";
    if (t_scalar > 0.0) {
        std::cout << "  classic / scalar REIST  : " << t_classic / t_scalar
                  << "x\n";
    }
    if (t_neon > 0.0) {
        std::cout << "  scalar / explicit NEON  : " << t_scalar / t_neon
                  << "x\n";
    }
    std::cout << "  classic lanes           : ";
    print_lanes(classic);
    std::cout << "\n  scalar canonical lanes  : ";
    print_lanes(scalar);
    std::cout << "\n  NEON canonical lanes    : ";
    print_lanes(neon);
    std::cout << "\n  lane check               : PASS\n\n";
}

template<std::int32_t B>
bool run_compile_time_case(std::int64_t N, std::vector<Result>& results) {
    const std::int64_t checks = std::min<std::int64_t>(N, 4096);
    const auto pre_classic = classic_four_streams_compile_time<B>(checks);
    const auto pre_scalar = scalar_four_streams_compile_time<B>(checks);
    const auto pre_neon = neon_four_streams_compile_time<B>(checks);
    if (!lane_results_match(pre_classic, pre_scalar, B)
        || !canonical_lanes_equal(pre_scalar, pre_neon)) {
        std::cerr << "PRECHECK FAILED in four-stream compile-time kernels for B="
                  << B << "\n";
        return false;
    }

    std::array<std::uint32_t, kStreams> classic{};
    std::array<std::int32_t, kStreams> scalar{};
    std::array<std::int32_t, kStreams> neon{};
    volatile std::int64_t timed_N = N;
    const double t_classic = time_call([&] {
        classic = classic_four_streams_compile_time<B>(timed_N);
    });
    const double t_scalar = time_call([&] {
        scalar = scalar_four_streams_compile_time<B>(timed_N);
    });
    const double t_neon = time_call([&] {
        neon = neon_four_streams_compile_time<B>(timed_N);
    });

    if (!lane_results_match(classic, scalar, B)
        || !canonical_lanes_equal(scalar, neon)) {
        std::cerr << "POSTCHECK FAILED in four-stream compile-time kernels for B="
                  << B << "\n";
        return false;
    }

    results.push_back({B, N, "classic_mod_4stream", "compile_time", t_classic});
    results.push_back({B, N, "reist_scalar_4stream", "compile_time", t_scalar});
    results.push_back({B, N, "reist_neon_4stream", "compile_time", t_neon});
    print_case(B, "compile-time template modulus; four independent streams",
               t_classic, t_scalar, t_neon, classic, scalar, neon);
    return true;
}

bool run_runtime_case(
    std::int32_t B, std::int64_t N, std::vector<Result>& results) {
    const std::int64_t checks = std::min<std::int64_t>(N, 4096);
    const auto pre_classic = classic_modadd_4stream_runtime_kernel(B, checks);
    const auto pre_scalar = reist_modadd_4stream_runtime_kernel(B, checks);
    const auto pre_neon = reist_modadd_neon_4stream_runtime_kernel(B, checks);
    if (!lane_results_match(pre_classic, pre_scalar, B)
        || !canonical_lanes_equal(pre_scalar, pre_neon)) {
        std::cerr << "PRECHECK FAILED in four-stream runtime kernels for B="
                  << B << "\n";
        return false;
    }

    std::array<std::uint32_t, kStreams> classic{};
    std::array<std::int32_t, kStreams> scalar{};
    std::array<std::int32_t, kStreams> neon{};
    volatile std::int64_t timed_N = N;
    const double t_classic = time_call([&] {
        classic = classic_modadd_4stream_runtime_kernel(B, timed_N);
    });
    const double t_scalar = time_call([&] {
        scalar = reist_modadd_4stream_runtime_kernel(B, timed_N);
    });
    const double t_neon = time_call([&] {
        neon = reist_modadd_neon_4stream_runtime_kernel(B, timed_N);
    });

    if (!lane_results_match(classic, scalar, B)
        || !canonical_lanes_equal(scalar, neon)) {
        std::cerr << "POSTCHECK FAILED in four-stream runtime kernels for B="
                  << B << "\n";
        return false;
    }

    results.push_back({B, N, "classic_mod_4stream", "runtime", t_classic});
    results.push_back({B, N, "reist_scalar_4stream", "runtime", t_scalar});
    results.push_back({B, N, "reist_neon_4stream", "runtime", t_neon});
    print_case(B, "runtime modulus; four independent streams",
               t_classic, t_scalar, t_neon, classic, scalar, neon);
    return true;
}
#endif

bool parse_positive_i64(const char* text, std::int64_t& value) {
    try {
        std::size_t used = 0;
        const std::string input(text);
        const long long parsed = std::stoll(input, &used, 10);
        if (used != input.size() || parsed <= 0) {
            return false;
        }
        value = static_cast<std::int64_t>(parsed);
        return true;
    } catch (...) {
        return false;
    }
}

void print_system_info() {
    std::string cpu_model, cpu_mhz, mem_total, hostname, os_name;
#ifndef _WIN32
    {
        std::ifstream cpuinfo("/proc/cpuinfo");
        std::string line;
        while (std::getline(cpuinfo, line)) {
            if (line.find("model name") != std::string::npos) {
                cpu_model = line.substr(line.find(':') + 2);
            }
            if (line.find("cpu MHz") != std::string::npos) {
                cpu_mhz = line.substr(line.find(':') + 2);
            }
        }
    }
    {
        std::ifstream meminfo("/proc/meminfo");
        std::string line;
        if (std::getline(meminfo, line)
            && line.find("MemTotal") != std::string::npos) {
            mem_total = line.substr(line.find(':') + 2);
        }
    }
    char hn[256] = {};
    if (gethostname(hn, sizeof(hn)) == 0) {
        hostname = hn;
    }
    FILE* fp = popen("uname -o", "r");
    if (fp) {
        char buffer[128] = {};
        if (fgets(buffer, sizeof(buffer), fp)) {
            os_name = buffer;
            if (!os_name.empty() && os_name.back() == '\n') {
                os_name.pop_back();
            }
        }
        pclose(fp);
    }
#else
    char hn[256] = {};
    DWORD hn_size = sizeof(hn);
    if (GetComputerNameA(hn, &hn_size)) {
        hostname = hn;
    }
    os_name = "Windows";
    HKEY key;
    if (RegOpenKeyExA(HKEY_LOCAL_MACHINE,
                      "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0",
                      0, KEY_READ, &key) == ERROR_SUCCESS) {
        char buffer[256] = {};
        DWORD buffer_size = sizeof(buffer);
        if (RegQueryValueExA(key, "ProcessorNameString", nullptr, nullptr,
                            reinterpret_cast<LPBYTE>(buffer),
                            &buffer_size) == ERROR_SUCCESS) {
            cpu_model = buffer;
        }
        RegCloseKey(key);
    }
    MEMORYSTATUSEX memory{};
    memory.dwLength = sizeof(memory);
    if (GlobalMemoryStatusEx(&memory)) {
        mem_total = std::to_string(memory.ullTotalPhys / (1024 * 1024)) + " MB";
    }
#endif
    std::cout << "System Information:\n"
              << "  Hostname: " << hostname << "\n"
              << "  OS: " << os_name << "\n"
              << "  CPU Model: " << cpu_model << "\n"
              << "  CPU MHz: " << cpu_mhz << "\n"
              << "  Memory: " << mem_total << "\n";
}

int main(int argc, char** argv) {
    if (argc > 3) {
        std::cerr << "Usage: " << argv[0] << " [updates-per-stream>0] [B>0]\n";
        return 2;
    }

    std::int64_t N = 50'000'000;
    if (argc >= 2 && !parse_positive_i64(argv[1], N)) {
        std::cerr << "updates-per-stream must be a positive 64-bit integer\n";
        return 2;
    }
    if (static_cast<std::uint64_t>(N)
        > std::numeric_limits<std::uint64_t>::max() / kStreams) {
        std::cerr << "updates-per-stream is too large to count four-stream "
                     "operations safely\n";
        return 2;
    }

    std::int64_t parsed_B = 0;
    const bool runtime_mode = argc >= 3;
    if (runtime_mode
        && (!parse_positive_i64(argv[2], parsed_B)
            || parsed_B > std::numeric_limits<std::int32_t>::max())) {
        std::cerr << "B must be in [1, INT32_MAX] for the int32x4 NEON kernel\n";
        return 2;
    }

    std::cout << std::fixed << std::setprecision(6)
              << "========================================\n"
              << "REIST four-stream modular-add benchmark\n"
              << "========================================\n";
    print_system_info();
    std::cout << "========================================\n\n";

#if !REIST_HAVE_NEON
    std::cout << "SKIP: this executable requires ARM NEON. No SIMD speedup was "
                 "reported.\n";
    return 0;
#else
    std::cout << "Workload: four independent recurrent counters\n"
              << "Updates per stream: " << N << "\n"
              << "Total modular additions per timed kernel: "
              << (static_cast<long double>(N) * kStreams) << "\n"
              << "Lane steps: [3, 5, 7, 11], centered once per modulus\n"
              << "The NEON result is compared only with the same four-stream "
                 "scalar-source workload; it is not a speedup for one serial chain.\n\n";

    std::vector<Result> results;
    bool ok = true;
    if (runtime_mode) {
        results.reserve(3);
        ok = run_runtime_case(static_cast<std::int32_t>(parsed_B), N, results);
    } else {
        results.reserve(18);
        ok = run_compile_time_case<257>(N, results)
          && run_compile_time_case<997>(N, results)
          && run_compile_time_case<10007>(N, results)
          && run_compile_time_case<1000003>(N, results)
          && run_compile_time_case<10000019>(N, results)
          && run_compile_time_case<1000000007>(N, results);
    }
    if (!ok) {
        return 1;
    }

    std::ofstream csv("results_modadd_suite_neon.csv");
    if (!csv) {
        std::cerr << "ERROR: could not write results_modadd_suite_neon.csv\n";
        return 1;
    }
    csv << "modulus,N,scenario,seconds,ops_per_sec,mode,streams,"
           "updates_per_stream\n";
    for (const Result& result : results) {
        const long double total_operations =
            static_cast<long double>(result.updates_per_stream) * kStreams;
        const long double rate = result.seconds > 0.0
            ? total_operations / result.seconds
            : 0.0L;
        csv << result.B << ',' << static_cast<unsigned long long>(total_operations)
            << ',' << result.name << ',' << result.seconds << ','
            << static_cast<double>(rate) << ',' << result.mode << ','
            << kStreams << ',' << result.updates_per_stream << '\n';
    }
    std::cout << "CSV written to results_modadd_suite_neon.csv\n";
    return 0;
#endif
}
