#include <algorithm>
#include <chrono>
#include <cstdint>
#include <cstdio>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <random>
#include <string>
#include <utility>
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

namespace {

inline void compiler_barrier() {
#if defined(__GNUC__) || defined(__clang__)
    __asm__ __volatile__("" ::: "memory");
#elif defined(_MSC_VER)
    _ReadWriteBarrier();
#endif
}

struct Bounds {
    std::int32_t lo;
    std::int32_t hi; // exclusive
};

struct Workload {
    std::vector<std::int32_t> a;
    std::vector<std::int32_t> b;
    std::size_t upper_corrections = 0;
    std::size_t lower_corrections = 0;
    std::size_t no_corrections = 0;
};

struct Result {
    std::int32_t q;
    std::size_t N;
    std::int32_t reps;
    double classic_seconds;
    double reist_seconds;
    const char* mode;
    std::size_t upper_corrections;
    std::size_t lower_corrections;
    std::size_t no_corrections;
};

constexpr Bounds canonical_bounds(std::int32_t q) {
    const std::int32_t half = q / 2;
    return {-half, static_cast<std::int32_t>(q - half)};
}

bool is_canonical(std::int32_t value, std::int32_t q) {
    const Bounds bounds = canonical_bounds(q);
    return value >= bounds.lo && value < bounds.hi;
}

std::int32_t canonical_reference(std::int64_t value, std::int32_t q) {
    std::int64_t r = value % q;
    if (r < 0) {
        r += q;
    }
    if (r >= canonical_bounds(q).hi) {
        r -= q;
    }
    return static_cast<std::int32_t>(r);
}

std::uint32_t nonnegative_residue(std::int32_t value, std::int32_t q) {
    std::int32_t r = value % q;
    if (r < 0) {
        r = static_cast<std::int32_t>(r + q);
    }
    return static_cast<std::uint32_t>(r);
}

} // namespace

extern "C" {
volatile std::uint32_t reist_poly_benchmark_sink = 0;
}

extern "C" BENCH_NOINLINE void classic_poly_runtime_kernel(
    const std::int32_t* a,
    const std::int32_t* b,
    std::int32_t* out,
    std::size_t n,
    std::int32_t q) {
    for (std::size_t i = 0; i < n; ++i) {
        const std::int32_t sum = static_cast<std::int32_t>(a[i] + b[i]);
        out[i] = static_cast<std::int32_t>(sum % q);
    }
    if (n != 0) {
        reist_poly_benchmark_sink = static_cast<std::uint32_t>(out[0]);
    }
}

extern "C" BENCH_NOINLINE void reist_poly_runtime_kernel(
    const std::int32_t* a,
    const std::int32_t* b,
    std::int32_t* out,
    std::size_t n,
    std::int32_t q) {
    const Bounds bounds = canonical_bounds(q);
    for (std::size_t i = 0; i < n; ++i) {
        std::int32_t sum = static_cast<std::int32_t>(a[i] + b[i]);
        if (sum >= bounds.hi) {
            sum = static_cast<std::int32_t>(sum - q);
        } else if (sum < bounds.lo) {
            sum = static_cast<std::int32_t>(sum + q);
        }
        out[i] = sum;
    }
    if (n != 0) {
        reist_poly_benchmark_sink = static_cast<std::uint32_t>(out[0]);
    }
}

#define DEFINE_CONST_POLY_KERNELS(SUFFIX, Q_VALUE)                              \
extern "C" BENCH_NOINLINE void classic_poly_const_##SUFFIX(                   \
    const std::int32_t* a, const std::int32_t* b, std::int32_t* out,           \
    std::size_t n) {                                                            \
    constexpr std::int32_t q = Q_VALUE;                                        \
    for (std::size_t i = 0; i < n; ++i) {                                     \
        const std::int32_t sum = static_cast<std::int32_t>(a[i] + b[i]);       \
        out[i] = static_cast<std::int32_t>(sum % q);                           \
    }                                                                           \
    if (n != 0) {                                                               \
        reist_poly_benchmark_sink = static_cast<std::uint32_t>(out[0]);         \
    }                                                                           \
}                                                                               \
extern "C" BENCH_NOINLINE void reist_poly_const_##SUFFIX(                     \
    const std::int32_t* a, const std::int32_t* b, std::int32_t* out,           \
    std::size_t n) {                                                            \
    constexpr std::int32_t q = Q_VALUE;                                        \
    constexpr std::int32_t half = q / 2;                                       \
    constexpr std::int32_t lo = -half;                                         \
    constexpr std::int32_t hi = q - half;                                      \
    for (std::size_t i = 0; i < n; ++i) {                                     \
        std::int32_t sum = static_cast<std::int32_t>(a[i] + b[i]);             \
        if (sum >= hi) {                                                        \
            sum = static_cast<std::int32_t>(sum - q);                          \
        } else if (sum < lo) {                                                  \
            sum = static_cast<std::int32_t>(sum + q);                          \
        }                                                                       \
        out[i] = sum;                                                           \
    }                                                                           \
    if (n != 0) {                                                               \
        reist_poly_benchmark_sink = static_cast<std::uint32_t>(out[0]);         \
    }                                                                           \
}

DEFINE_CONST_POLY_KERNELS(1000003, 1000003)
DEFINE_CONST_POLY_KERNELS(10000019, 10000019)
DEFINE_CONST_POLY_KERNELS(100000007, 100000007)
DEFINE_CONST_POLY_KERNELS(1000000007, 1000000007)

#undef DEFINE_CONST_POLY_KERNELS

namespace {

using ConstKernel = void (*)(
    const std::int32_t*, const std::int32_t*, std::int32_t*, std::size_t);

template<std::int32_t Q>
ConstKernel classic_const_kernel() {
    if constexpr (Q == 1000003) {
        return classic_poly_const_1000003;
    } else if constexpr (Q == 10000019) {
        return classic_poly_const_10000019;
    } else if constexpr (Q == 100000007) {
        return classic_poly_const_100000007;
    } else {
        static_assert(Q == 1000000007);
        return classic_poly_const_1000000007;
    }
}

template<std::int32_t Q>
ConstKernel reist_const_kernel() {
    if constexpr (Q == 1000003) {
        return reist_poly_const_1000003;
    } else if constexpr (Q == 10000019) {
        return reist_poly_const_10000019;
    } else if constexpr (Q == 100000007) {
        return reist_poly_const_100000007;
    } else {
        static_assert(Q == 1000000007);
        return reist_poly_const_1000000007;
    }
}

bool pair_is_valid(std::int64_t a, std::int64_t b, std::int32_t q) {
    const Bounds bounds = canonical_bounds(q);
    return a >= bounds.lo && a < bounds.hi
        && b >= bounds.lo && b < bounds.hi;
}

Workload make_workload(std::size_t N, std::int32_t q) {
    Workload workload;
    workload.a.resize(N);
    workload.b.resize(N);

    const Bounds bounds = canonical_bounds(q);
    std::mt19937 rng(0x5eed1234U ^ static_cast<std::uint32_t>(q));
    std::uniform_int_distribution<std::int32_t> distribution(
        bounds.lo, static_cast<std::int32_t>(bounds.hi - 1));
    for (std::size_t i = 0; i < N; ++i) {
        workload.a[i] = distribution(rng);
        workload.b[i] = distribution(rng);
    }

    const std::vector<std::pair<std::int64_t, std::int64_t>> boundaries = {
        {bounds.lo, 0},
        {static_cast<std::int64_t>(bounds.hi) - 1, 0},
        {static_cast<std::int64_t>(bounds.hi) - 1,
         static_cast<std::int64_t>(bounds.hi) - 1},
        {bounds.lo, bounds.lo},
        {static_cast<std::int64_t>(bounds.hi) - 1, 1},
        {bounds.lo, -1},
        {0, 0},
        {bounds.lo, static_cast<std::int64_t>(bounds.hi) - 1}
    };
    std::size_t position = 0;
    for (const auto [a, b] : boundaries) {
        if (position >= N) {
            break;
        }
        if (pair_is_valid(a, b, q)) {
            workload.a[position] = static_cast<std::int32_t>(a);
            workload.b[position] = static_cast<std::int32_t>(b);
            ++position;
        }
    }

    for (std::size_t i = 0; i < N; ++i) {
        const std::int64_t sum =
            static_cast<std::int64_t>(workload.a[i]) + workload.b[i];
        if (sum >= bounds.hi) {
            ++workload.upper_corrections;
        } else if (sum < bounds.lo) {
            ++workload.lower_corrections;
        } else {
            ++workload.no_corrections;
        }
    }
    return workload;
}

bool verify_outputs(
    const Workload& workload,
    const std::vector<std::int32_t>& classic,
    const std::vector<std::int32_t>& reist,
    std::int32_t q,
    const char* phase) {
    if (classic.size() != workload.a.size()
        || reist.size() != workload.a.size()) {
        std::cerr << phase << " FAILED: output size mismatch\n";
        return false;
    }

    for (std::size_t i = 0; i < workload.a.size(); ++i) {
        const std::int64_t sum =
            static_cast<std::int64_t>(workload.a[i]) + workload.b[i];
        const std::int32_t expected = canonical_reference(sum, q);
        if (reist[i] != expected || !is_canonical(reist[i], q)
            || nonnegative_residue(classic[i], q)
                != nonnegative_residue(expected, q)) {
            std::cerr << phase << " FAILED for q=" << q << ", index=" << i
                      << ", a=" << workload.a[i]
                      << ", b=" << workload.b[i]
                      << ", classic=" << classic[i]
                      << ", REIST=" << reist[i]
                      << ", expected canonical=" << expected << "\n";
            return false;
        }
    }
    return true;
}

std::uint64_t checksum(const std::vector<std::int32_t>& values) {
    std::uint64_t result = 0xcbf29ce484222325ULL;
    for (const std::int32_t value : values) {
        result ^= static_cast<std::uint32_t>(value);
        result *= 0x100000001b3ULL;
    }
    return result;
}

template<typename F>
double time_repeated(F&& function, std::int32_t reps) {
    compiler_barrier();
    const auto t0 = Clock::now();
    for (std::int32_t repetition = 0; repetition < reps; ++repetition) {
        function();
        compiler_barrier();
    }
    const auto t1 = Clock::now();
    compiler_barrier();
    return std::chrono::duration<double>(t1 - t0).count();
}

void print_case(
    const Result& result,
    std::uint64_t classic_checksum,
    std::uint64_t reist_checksum) {
    const std::size_t total = result.upper_corrections
        + result.lower_corrections + result.no_corrections;
    const auto percent = [total](std::size_t count) {
        return total == 0
            ? 0.0
            : 100.0 * static_cast<double>(count) / static_cast<double>(total);
    };

    std::cout << '[' << result.mode << "]\n"
              << "q = " << result.q << "\n"
              << "  classic : " << result.classic_seconds << " s\n"
              << "  REIST   : " << result.reist_seconds << " s\n";
    if (result.reist_seconds > 0.0) {
        std::cout << "  speedup : "
                  << result.classic_seconds / result.reist_seconds << "x\n";
    }
    std::cout << "  correction mix per pass: upper "
              << result.upper_corrections << " ("
              << percent(result.upper_corrections) << "%), lower "
              << result.lower_corrections << " ("
              << percent(result.lower_corrections) << "%), none "
              << result.no_corrections << " ("
              << percent(result.no_corrections) << "%)\n"
              << "  checksums: 0x" << std::hex << classic_checksum
              << " / 0x" << reist_checksum << std::dec
              << " (representations checked element-wise)\n\n";
}

template<std::int32_t Q>
bool run_compile_time_case(
    std::size_t N, std::int32_t reps, std::vector<Result>& results) {
    Workload workload = make_workload(N, Q);
    std::vector<std::int32_t> classic(N);
    std::vector<std::int32_t> reist(N);
    const ConstKernel classic_kernel = classic_const_kernel<Q>();
    const ConstKernel reist_kernel = reist_const_kernel<Q>();

    classic_kernel(workload.a.data(), workload.b.data(), classic.data(), N);
    reist_kernel(workload.a.data(), workload.b.data(), reist.data(), N);
    if (!verify_outputs(workload, classic, reist, Q, "PRECHECK")) {
        return false;
    }

    const double t_classic = time_repeated([&] {
        classic_kernel(workload.a.data(), workload.b.data(), classic.data(), N);
    }, reps);
    const double t_reist = time_repeated([&] {
        reist_kernel(workload.a.data(), workload.b.data(), reist.data(), N);
    }, reps);

    if (!verify_outputs(workload, classic, reist, Q, "POSTCHECK")) {
        return false;
    }

    const Result result{Q, N, reps, t_classic, t_reist, "compile_time",
                        workload.upper_corrections,
                        workload.lower_corrections,
                        workload.no_corrections};
    results.push_back(result);
    print_case(result, checksum(classic), checksum(reist));
    return true;
}

bool run_runtime_case(
    std::int32_t q,
    std::size_t N,
    std::int32_t reps,
    std::vector<Result>& results) {
    Workload workload = make_workload(N, q);
    std::vector<std::int32_t> classic(N);
    std::vector<std::int32_t> reist(N);

    classic_poly_runtime_kernel(
        workload.a.data(), workload.b.data(), classic.data(), N, q);
    reist_poly_runtime_kernel(
        workload.a.data(), workload.b.data(), reist.data(), N, q);
    if (!verify_outputs(workload, classic, reist, q, "PRECHECK")) {
        return false;
    }

    const double t_classic = time_repeated([&] {
        classic_poly_runtime_kernel(
            workload.a.data(), workload.b.data(), classic.data(), N, q);
    }, reps);
    const double t_reist = time_repeated([&] {
        reist_poly_runtime_kernel(
            workload.a.data(), workload.b.data(), reist.data(), N, q);
    }, reps);

    if (!verify_outputs(workload, classic, reist, q, "POSTCHECK")) {
        return false;
    }

    const Result result{q, N, reps, t_classic, t_reist, "runtime",
                        workload.upper_corrections,
                        workload.lower_corrections,
                        workload.no_corrections};
    results.push_back(result);
    print_case(result, checksum(classic), checksum(reist));
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

int main(int argc, char** argv) {
    if (argc > 4) {
        std::cerr << "Usage: " << argv[0] << " [N>=8] [reps>0] [q>0]\n";
        return 2;
    }

    std::int64_t parsed_N = 1024;
    std::int64_t parsed_reps = 50'000;
    std::int64_t parsed_q = 0;
    if (argc >= 2 && !parse_positive_i64(argv[1], parsed_N)) {
        std::cerr << "N must be a positive integer\n";
        return 2;
    }
    if (argc >= 3 && !parse_positive_i64(argv[2], parsed_reps)) {
        std::cerr << "reps must be a positive integer\n";
        return 2;
    }
    const bool runtime_mode = argc >= 4;
    if (runtime_mode && !parse_positive_i64(argv[3], parsed_q)) {
        std::cerr << "q must be a positive integer\n";
        return 2;
    }
    if (parsed_N < 8
        || static_cast<std::uint64_t>(parsed_N)
            > (std::numeric_limits<std::size_t>::max)()) {
        std::cerr << "N must be in [8, SIZE_MAX]\n";
        return 2;
    }
    if (parsed_reps > (std::numeric_limits<std::int32_t>::max)()) {
        std::cerr << "reps must be in [1, INT32_MAX]\n";
        return 2;
    }
    if (runtime_mode
        && parsed_q > (std::numeric_limits<std::int32_t>::max)()) {
        std::cerr << "q must be in [1, INT32_MAX]\n";
        return 2;
    }

    const std::size_t N = static_cast<std::size_t>(parsed_N);
    const std::int32_t reps = static_cast<std::int32_t>(parsed_reps);

    std::cout << std::fixed << std::setprecision(6)
              << "========================================\n"
              << "Polynomial canonical modular-add benchmark\n"
              << "========================================\n";
    print_system_info();
    std::cout << "========================================\n\n"
              << "N = " << N << ", reps = " << reps << "\n"
              << "Inputs are regenerated per q inside "
                 "[-floor(q/2), ceil(q/2)).\n"
              << "Boundary vectors are injected and correction rates are reported.\n"
              << "SIMD status: portable scalar source only; an O3/SIMD-labelled "
                 "binary relies on compiler auto-vectorization, not explicit intrinsics.\n\n";

    std::vector<Result> results;
    bool ok = true;
    if (runtime_mode) {
        results.reserve(1);
        ok = run_runtime_case(static_cast<std::int32_t>(parsed_q), N, reps,
                              results);
    } else {
        results.reserve(4);
        ok = run_compile_time_case<1000003>(N, reps, results)
          && run_compile_time_case<10000019>(N, reps, results)
          && run_compile_time_case<100000007>(N, reps, results)
          && run_compile_time_case<1000000007>(N, reps, results);
    }
    if (!ok) {
        return 1;
    }

    std::ofstream csv("results_poly_mod.csv");
    if (!csv) {
        std::cerr << "ERROR: could not open results_poly_mod.csv for writing\n";
        return 1;
    }
    csv << "q,N,reps,classic,reist,speedup,mode,vectorization,"
           "upper_corrections,lower_corrections,no_corrections\n";
    for (const Result& result : results) {
        const double speedup = result.reist_seconds > 0.0
            ? result.classic_seconds / result.reist_seconds
            : 0.0;
        csv << result.q << ',' << result.N << ',' << result.reps << ','
            << result.classic_seconds << ',' << result.reist_seconds << ','
            << speedup << ',' << result.mode << ",compiler_auto_only,"
            << result.upper_corrections << ',' << result.lower_corrections << ','
            << result.no_corrections << '\n';
    }
    std::cout << "CSV written to results_poly_mod.csv\n";
    return 0;
}
