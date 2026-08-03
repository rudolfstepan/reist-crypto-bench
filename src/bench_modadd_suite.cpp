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

using Clock = std::chrono::steady_clock;

#if defined(_MSC_VER)
#define BENCH_NOINLINE __declspec(noinline)
#elif defined(__GNUC__) || defined(__clang__)
#define BENCH_NOINLINE __attribute__((noinline))
#else
#define BENCH_NOINLINE
#endif

extern "C" BENCH_NOINLINE std::uint64_t classic_modadd_runtime_kernel(
    std::int64_t B, std::int64_t N, std::uint64_t reduced_step);
extern "C" BENCH_NOINLINE std::int64_t reist_modadd_runtime_kernel(
    std::int64_t B, std::int64_t N, std::int64_t centered_step);

#define DECLARE_CONST_MODADD_KERNELS(SUFFIX)                                   \
extern "C" BENCH_NOINLINE std::uint64_t classic_modadd_const_##SUFFIX(        \
    std::int64_t N);                                                            \
extern "C" BENCH_NOINLINE std::int64_t reist_modadd_const_##SUFFIX(           \
    std::int64_t N)

DECLARE_CONST_MODADD_KERNELS(257);
DECLARE_CONST_MODADD_KERNELS(997);
DECLARE_CONST_MODADD_KERNELS(10007);
DECLARE_CONST_MODADD_KERNELS(1000003);
DECLARE_CONST_MODADD_KERNELS(10000019);
DECLARE_CONST_MODADD_KERNELS(1000000007);

#undef DECLARE_CONST_MODADD_KERNELS

extern "C" {
volatile std::uint64_t reist_modadd_benchmark_sink = 0;
}

namespace {

constexpr std::int64_t kDefaultStep = 3;

inline void compiler_barrier() {
#if defined(__GNUC__) || defined(__clang__)
    __asm__ __volatile__("" ::: "memory");
#elif defined(_MSC_VER)
    _ReadWriteBarrier();
#endif
}

struct Result {
    std::int64_t B;
    std::int64_t N;
    const char* name;
    const char* mode;
    double seconds;
};

struct Bounds {
    std::int64_t lo;
    std::int64_t hi; // exclusive
};

Bounds canonical_bounds(std::int64_t B) {
    const std::int64_t half = B / 2;
    return {-half, B - half};
}

bool is_canonical(std::int64_t r, std::int64_t B) {
    const Bounds bounds = canonical_bounds(B);
    return r >= bounds.lo && r < bounds.hi;
}

std::int64_t canonical_reference(std::int64_t value, std::int64_t B) {
    std::int64_t r = value % B;
    if (r < 0) {
        r += B;
    }
    if (r >= canonical_bounds(B).hi) {
        r -= B;
    }
    return r;
}

std::int64_t correct_canonical_once(std::int64_t sum, std::int64_t B) {
    const Bounds bounds = canonical_bounds(B);
    if (sum >= bounds.hi) {
        sum -= B;
    } else if (sum < bounds.lo) {
        sum += B;
    }
    return sum;
}

std::uint64_t nonnegative_step(std::int64_t B) {
    return static_cast<std::uint64_t>(kDefaultStep) % static_cast<std::uint64_t>(B);
}

std::int64_t canonical_step(std::int64_t B) {
    return canonical_reference(kDefaultStep, B);
}

std::uint64_t canonical_to_nonnegative(std::int64_t r, std::int64_t B) {
    if (r < 0) {
        return static_cast<std::uint64_t>(r + B);
    }
    return static_cast<std::uint64_t>(r);
}

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

bool preflight_bounds(std::int64_t B) {
    const Bounds bounds = canonical_bounds(B);
    const std::array<std::int64_t, 7> sums = {
        bounds.lo,
        bounds.hi - 1,
        bounds.hi,
        bounds.lo == -B ? bounds.lo : bounds.lo - 1,
        B - 1,
        -B + 1,
        0
    };

    for (const std::int64_t sum : sums) {
        const std::int64_t actual = correct_canonical_once(sum, B);
        const std::int64_t expected = canonical_reference(sum, B);
        if (actual != expected || !is_canonical(actual, B)) {
            std::cerr << "PRECHECK FAILED for B=" << B
                      << ", sum=" << sum << ": got " << actual
                      << ", expected " << expected << "\n";
            return false;
        }
    }
    return true;
}

bool preflight_sequence(std::int64_t B, std::int64_t N) {
    if (!preflight_bounds(B)) {
        return false;
    }

    const std::int64_t checks = std::min<std::int64_t>(N, 4096);
    const std::uint64_t modulus = static_cast<std::uint64_t>(B);
    const std::uint64_t classic_step = nonnegative_step(B);
    const std::int64_t reist_step = canonical_step(B);
    std::uint64_t expected = 0;
    std::int64_t actual = 0;

    for (std::int64_t i = 0; i < checks; ++i) {
        expected = (expected + classic_step) % modulus;
        actual = correct_canonical_once(actual + reist_step, B);
        if (!is_canonical(actual, B)
            || canonical_to_nonnegative(actual, B) != expected) {
            std::cerr << "PRECHECK FAILED for B=" << B
                      << " after update " << (i + 1) << "\n";
            return false;
        }
    }
    return true;
}

bool outputs_match(std::uint64_t classic, std::int64_t reist, std::int64_t B) {
    return is_canonical(reist, B)
        && canonical_to_nonnegative(reist, B) == classic;
}

template<std::int64_t B>
std::uint64_t call_classic_const_kernel(std::int64_t N) {
    if constexpr (B == 257) {
        return classic_modadd_const_257(N);
    } else if constexpr (B == 997) {
        return classic_modadd_const_997(N);
    } else if constexpr (B == 10007) {
        return classic_modadd_const_10007(N);
    } else if constexpr (B == 1000003) {
        return classic_modadd_const_1000003(N);
    } else if constexpr (B == 10000019) {
        return classic_modadd_const_10000019(N);
    } else {
        static_assert(B == 1000000007);
        return classic_modadd_const_1000000007(N);
    }
}

template<std::int64_t B>
std::int64_t call_reist_const_kernel(std::int64_t N) {
    if constexpr (B == 257) {
        return reist_modadd_const_257(N);
    } else if constexpr (B == 997) {
        return reist_modadd_const_997(N);
    } else if constexpr (B == 10007) {
        return reist_modadd_const_10007(N);
    } else if constexpr (B == 1000003) {
        return reist_modadd_const_1000003(N);
    } else if constexpr (B == 10000019) {
        return reist_modadd_const_10000019(N);
    } else {
        static_assert(B == 1000000007);
        return reist_modadd_const_1000000007(N);
    }
}

void print_case(
    std::int64_t B,
    const char* mode,
    double classic_seconds,
    double reist_seconds,
    std::uint64_t classic,
    std::int64_t reist) {
    std::cout << "[" << mode << "]\n";
    std::cout << "Modulus B = " << B << "\n";
    std::cout << "  classic_mod: " << classic_seconds << " s\n";
    std::cout << "  reist_sym  : " << reist_seconds << " s\n";
    if (reist_seconds > 0.0) {
        std::cout << "  speedup    : " << (classic_seconds / reist_seconds)
                  << "x (classic / canonical REIST)\n";
    }
    std::cout << "  results    : " << classic << " / " << reist
              << " (congruent, canonical checked)\n\n";
}

template<std::int64_t B>
bool run_compile_time_case(std::int64_t N, std::vector<Result>& results) {
    if (!preflight_sequence(B, N)) {
        return false;
    }

    const std::int64_t preflight_N = std::min<std::int64_t>(N, 4096);
    const std::uint64_t pre_classic =
        call_classic_const_kernel<B>(preflight_N);
    const std::int64_t pre_reist =
        call_reist_const_kernel<B>(preflight_N);
    if (!outputs_match(pre_classic, pre_reist, B)) {
        std::cerr << "PRECHECK FAILED in compile-time kernels for B=" << B << "\n";
        return false;
    }

    std::uint64_t classic = 0;
    std::int64_t reist = 0;
    volatile std::int64_t timed_N = N;
    const double t_classic = time_call([&] {
        classic = call_classic_const_kernel<B>(timed_N);
    });
    const double t_reist = time_call([&] {
        reist = call_reist_const_kernel<B>(timed_N);
    });

    if (!outputs_match(classic, reist, B)) {
        std::cerr << "POSTCHECK FAILED for compile-time B=" << B << "\n";
        return false;
    }

    results.push_back({B, N, "classic_mod", "compile_time", t_classic});
    results.push_back({B, N, "reist_sym", "compile_time", t_reist});
    print_case(B, "compile-time template modulus", t_classic, t_reist,
               classic, reist);
    return true;
}

bool run_runtime_case(
    std::int64_t B, std::int64_t N, std::vector<Result>& results) {
    if (!preflight_sequence(B, N)) {
        return false;
    }

    const std::int64_t preflight_N = std::min<std::int64_t>(N, 4096);
    const std::uint64_t reduced_step = nonnegative_step(B);
    const std::int64_t centered_step = canonical_step(B);
    const std::uint64_t pre_classic =
        classic_modadd_runtime_kernel(B, preflight_N, reduced_step);
    const std::int64_t pre_reist =
        reist_modadd_runtime_kernel(B, preflight_N, centered_step);
    if (!outputs_match(pre_classic, pre_reist, B)) {
        std::cerr << "PRECHECK FAILED in runtime kernels for B=" << B << "\n";
        return false;
    }

    std::uint64_t classic = 0;
    std::int64_t reist = 0;
    volatile std::int64_t timed_N = N;
    const double t_classic = time_call([&] {
        classic = classic_modadd_runtime_kernel(B, timed_N, reduced_step);
    });
    const double t_reist = time_call([&] {
        reist = reist_modadd_runtime_kernel(B, timed_N, centered_step);
    });

    if (!outputs_match(classic, reist, B)) {
        std::cerr << "POSTCHECK FAILED for runtime B=" << B << "\n";
        return false;
    }

    results.push_back({B, N, "classic_mod", "runtime", t_classic});
    results.push_back({B, N, "reist_sym", "runtime", t_reist});
    print_case(B, "runtime modulus", t_classic, t_reist, classic, reist);
    return true;
}

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
        DWORD mhz = 0;
        buffer_size = sizeof(mhz);
        if (RegQueryValueExA(key, "~MHz", nullptr, nullptr,
                            reinterpret_cast<LPBYTE>(&mhz),
                            &buffer_size) == ERROR_SUCCESS) {
            cpu_mhz = std::to_string(mhz);
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

} // namespace

extern "C" BENCH_NOINLINE std::uint64_t classic_modadd_runtime_kernel(
    std::int64_t B, std::int64_t N, std::uint64_t reduced_step) {
    const std::uint64_t modulus = static_cast<std::uint64_t>(B);
    std::uint64_t r = 0;
    for (std::int64_t i = 0; i < N; ++i) {
        r = (r + reduced_step) % modulus;
    }
    reist_modadd_benchmark_sink = r;
    return r;
}

extern "C" BENCH_NOINLINE std::int64_t reist_modadd_runtime_kernel(
    std::int64_t B, std::int64_t N, std::int64_t centered_step) {
    std::int64_t r = 0;
    for (std::int64_t i = 0; i < N; ++i) {
        r = correct_canonical_once(r + centered_step, B);
    }
    reist_modadd_benchmark_sink = static_cast<std::uint64_t>(r);
    return r;
}

#define DEFINE_CONST_MODADD_KERNELS(SUFFIX, B_VALUE)                            \
extern "C" BENCH_NOINLINE std::uint64_t classic_modadd_const_##SUFFIX(         \
    std::int64_t N) {                                                           \
    constexpr std::uint64_t modulus = B_VALUE;                                 \
    constexpr std::uint64_t step =                                             \
        static_cast<std::uint64_t>(kDefaultStep) % modulus;                    \
    std::uint64_t r = 0;                                                       \
    for (std::int64_t i = 0; i < N; ++i) {                                    \
        r = (r + step) % modulus;                                              \
    }                                                                           \
    reist_modadd_benchmark_sink = r;                                           \
    return r;                                                                   \
}                                                                               \
extern "C" BENCH_NOINLINE std::int64_t reist_modadd_const_##SUFFIX(            \
    std::int64_t N) {                                                           \
    constexpr std::int64_t B = B_VALUE;                                        \
    constexpr std::int64_t half = B / 2;                                       \
    constexpr std::int64_t lo = -half;                                         \
    constexpr std::int64_t hi = B - half;                                      \
    constexpr std::int64_t nonnegative = kDefaultStep % B;                     \
    constexpr std::int64_t step =                                              \
        nonnegative >= hi ? nonnegative - B : nonnegative;                     \
    std::int64_t r = 0;                                                        \
    for (std::int64_t i = 0; i < N; ++i) {                                    \
        r += step;                                                              \
        if (r >= hi) {                                                          \
            r -= B;                                                             \
        } else if (r < lo) {                                                    \
            r += B;                                                             \
        }                                                                       \
    }                                                                           \
    reist_modadd_benchmark_sink = static_cast<std::uint64_t>(r);               \
    return r;                                                                   \
}

DEFINE_CONST_MODADD_KERNELS(257, 257)
DEFINE_CONST_MODADD_KERNELS(997, 997)
DEFINE_CONST_MODADD_KERNELS(10007, 10007)
DEFINE_CONST_MODADD_KERNELS(1000003, 1000003)
DEFINE_CONST_MODADD_KERNELS(10000019, 10000019)
DEFINE_CONST_MODADD_KERNELS(1000000007, 1000000007)

#undef DEFINE_CONST_MODADD_KERNELS

int main(int argc, char** argv) {
    if (argc > 3) {
        std::cerr << "Usage: " << argv[0] << " [N>0] [B>0]\n";
        return 2;
    }

    std::int64_t N = 50'000'000;
    if (argc >= 2 && !parse_positive_i64(argv[1], N)) {
        std::cerr << "N must be a positive 64-bit integer\n";
        return 2;
    }

    std::int64_t runtime_B = 0;
    const bool runtime_mode = argc >= 3;
    if (runtime_mode && !parse_positive_i64(argv[2], runtime_B)) {
        std::cerr << "B must be in [1, INT64_MAX]\n";
        return 2;
    }

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "========================================\n"
              << "REIST canonical modular-add benchmark\n"
              << "========================================\n";
    print_system_info();
    std::cout << "========================================\n\n"
              << "Updates per modulus N = " << N << "\n"
              << "Source step = " << kDefaultStep
              << " (centered once before the REIST loop)\n"
              << "Canonical interval: [-floor(B/2), ceil(B/2))\n\n";

    std::vector<Result> results;
    bool ok = true;
    if (runtime_mode) {
        results.reserve(2);
        ok = run_runtime_case(runtime_B, N, results);
    } else {
        results.reserve(12);
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

    std::ofstream csv("results_modadd_suite.csv");
    if (!csv) {
        std::cerr << "ERROR: could not write results_modadd_suite.csv\n";
        return 1;
    }
    csv << "modulus,N,scenario,seconds,ops_per_sec,mode\n";
    for (const Result& result : results) {
        const double ops_per_second = result.seconds > 0.0
            ? static_cast<double>(result.N) / result.seconds
            : 0.0;
        csv << result.B << ',' << result.N << ',' << result.name << ','
            << result.seconds << ',' << ops_per_second << ','
            << result.mode << '\n';
    }
    std::cout << "CSV written to results_modadd_suite.csv\n";
    return 0;
}
