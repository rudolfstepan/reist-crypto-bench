#include <iostream>
#include <chrono>
#include <vector>
#include <cstdint>
#include <iomanip>
#include <fstream>
#ifndef _WIN32
#include <unistd.h>
#else
#include <winsock2.h>
#include <windows.h>
#endif
#include <cstdio>
#include <string>
#include <cctype>

// Enable NEON on ARM platforms
#if defined(__aarch64__) || defined(__arm__)
  #include <arm_neon.h>
#endif

using Clock = std::chrono::high_resolution_clock;

struct Result {
    std::int64_t B;
    std::int64_t N;
    const char*  name;
    double       seconds;
};

template<typename F>
double time_loop(F&& f, std::int64_t N) {
    auto t0 = Clock::now();
    f(N);
    auto t1 = Clock::now();
    std::chrono::duration<double> dt = t1 - t0;
    return dt.count();
}

// Classic modulo counter: r = (r + step) % B
static std::uint64_t bench_classic_mod(std::int64_t B, std::int64_t N, std::int64_t step) {
    std::int64_t r = 0;
    for (std::int64_t i = 0; i < N; ++i) {
        r = (r + step) % B;
    }
    return static_cast<std::uint64_t>(r);
}

// REIST-style symmetric remainder counter (scalar).
// Keep r in (-B/2, +B/2] by simple correction.
static std::int64_t bench_reist_sym_scalar(std::int64_t B, std::int64_t N, std::int64_t step) {
    std::int64_t halfB = B / 2;
    std::int64_t r = 0;
    for (std::int64_t i = 0; i < N; ++i) {
        r += step;
        if (r > halfB) {
            r -= B;
        } else if (r <= -halfB) {
            r += B;
        }
    }
    return r;
}

// NEON-vectorized REIST symmetric remainder counter.
// Process 4 values in parallel using NEON int32x4_t
#if defined(__aarch64__) || defined(__arm__)
static std::int64_t bench_reist_sym_neon(std::int64_t B, std::int64_t N, std::int64_t step) {
    std::int64_t halfB = B / 2;
    
    // Create NEON vectors
    int32x4_t r_vec = vdupq_n_s32(0);
    int32x4_t step_vec = vdupq_n_s32(static_cast<int32_t>(step));
    int32x4_t halfB_vec = vdupq_n_s32(static_cast<int32_t>(halfB));
    int32x4_t negHalfB_vec = vdupq_n_s32(static_cast<int32_t>(-halfB));
    int32x4_t B_vec = vdupq_n_s32(static_cast<int32_t>(B));
    
    // Process 4 iterations at a time in parallel
    std::int64_t simd_iters = N / 4;
    for (std::int64_t i = 0; i < simd_iters; ++i) {
        // r += step
        r_vec = vaddq_s32(r_vec, step_vec);
        
        // Predicates for corrections
        uint32x4_t gt_half = vcgtq_s32(r_vec, halfB_vec);        // r > halfB
        uint32x4_t le_neghalf = vcleq_s32(r_vec, negHalfB_vec);  // r <= -halfB
        
        // Compute correction results
        int32x4_t r_minus_B = vsubq_s32(r_vec, B_vec);
        int32x4_t r_plus_B = vaddq_s32(r_vec, B_vec);
        
        // Apply corrections using bit-select (vbslq)
        // vbslq selects from first argument where mask is 1, second argument where mask is 0
        r_vec = vbslq_s32(gt_half, r_minus_B, r_vec);           // if r > halfB: r -= B
        r_vec = vbslq_s32(le_neghalf, r_plus_B, r_vec);         // if r <= -halfB: r += B
    }
    
    // Extract result (all 4 lanes should have the same value for correct algorithm)
    std::int64_t result = static_cast<std::int64_t>(vgetq_lane_s32(r_vec, 0));
    
    // Handle remaining iterations if N is not divisible by 4
    std::int64_t remainder = N % 4;
    for (std::int64_t i = 0; i < remainder; ++i) {
        result += step;
        if (result > halfB) {
            result -= B;
        } else if (result <= -halfB) {
            result += B;
        }
    }
    
    return result;
}
#else
// Fallback for non-ARM platforms
static std::int64_t bench_reist_sym_neon(std::int64_t B, std::int64_t N, std::int64_t step) {
    return bench_reist_sym_scalar(B, N, step);
}
#endif

int main(int argc, char** argv) {
    std::int64_t N = 50'000'000;
    if (argc >= 2) N = std::stoll(argv[1]);
    if (N <= 0) {
        std::cerr << "N must be > 0\n";
        return 1;
    }

    std::vector<std::int64_t> moduli;
    if (argc >= 3) {
        moduli.push_back(std::stoll(argv[2]));
    } else {
        moduli = {
            257,
            997,
            10007,
            1000003,
            10000019,
            1000000007
        };
    }

    std::int64_t step = 3;
    std::vector<Result> results;
    results.reserve(moduli.size() * 3);

    // Collect system info
    std::string cpu_model, cpu_mhz, mem_total, hostname, os_name;
#ifndef _WIN32
    {
        std::ifstream cpuinfo("/proc/cpuinfo");
        std::string line;
        while (std::getline(cpuinfo, line)) {
            if (line.find("model name") != std::string::npos) {
                cpu_model = line.substr(line.find(":") + 2);
            }
            if (line.find("cpu MHz") != std::string::npos) {
                cpu_mhz = line.substr(line.find(":") + 2);
            }
        }
    }
    {
        std::ifstream meminfo("/proc/meminfo");
        std::string line;
        if (std::getline(meminfo, line)) {
            if (line.find("MemTotal") != std::string::npos) {
                mem_total = line.substr(line.find(":") + 2);
            }
        }
    }
    char hn[256];
    if (gethostname(hn, sizeof(hn)) == 0) hostname = hn;
    {
        FILE* fp = popen("uname -o", "r");
        if (fp) {
            char buf[128];
            if (fgets(buf, sizeof(buf), fp)) {
                os_name = std::string(buf);
                if (!os_name.empty() && os_name.back() == '\n') {
                    os_name.pop_back();
                }
            }
            pclose(fp);
        }
    }
#else
    char hn[256];
    DWORD hnSize = sizeof(hn);
    if (GetComputerNameA(hn, &hnSize)) hostname = hn;
    else hostname = "Unknown";
    
    FILE* fp = _popen("ver", "r");
    if (fp) {
        char buf[128];
        if (fgets(buf, sizeof(buf), fp)) {
            os_name = std::string(buf);
            if (!os_name.empty() && os_name.back() == '\n') {
                os_name.pop_back();
            }
        }
        _pclose(fp);
    }
    os_name = "Windows";
    
    HKEY hKey;
    if (RegOpenKeyExA(HKEY_LOCAL_MACHINE, "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0", 0, KEY_READ, &hKey) == ERROR_SUCCESS) {
        char buf[256];
        DWORD size = sizeof(buf);
        if (RegQueryValueExA(hKey, "ProcessorNameString", NULL, NULL, (LPBYTE)buf, &size) == ERROR_SUCCESS) {
            cpu_model = std::string(buf);
        }
        RegCloseKey(hKey);
    }
    MEMORYSTATUSEX statex;
    statex.dwLength = sizeof(statex);
    if (GlobalMemoryStatusEx(&statex)) {
        mem_total = std::to_string(statex.ullTotalPhys / (1024 * 1024)) + " MB";
    }
#endif

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "========================================\n";
    std::cout << "REIST modular-add benchmark suite (NEON)\n";
    std::cout << "========================================\n";
    std::cout << "System Information:\n";
    std::cout << "  Hostname: " << hostname << "\n";
    std::cout << "  OS: " << os_name << "\n";
    std::cout << "  CPU Model: " << cpu_model << "\n";
    std::cout << "  CPU MHz: " << cpu_mhz << "\n";
    std::cout << "  Memory: " << mem_total << "\n";
    std::cout << "========================================\n\n";
    std::cout << "Total iterations per modulus N = " << N << "\n";
    std::cout << "step = " << step << "\n\n";
    std::cout << "Running benchmarks (with NEON vectorization)...\n\n";

    for (auto B : moduli) {
        std::cout << "Modulus B = " << B << "\n";
        
        std::uint64_t sink1 = 0;
        double t_classic = time_loop([&](std::int64_t n){
            sink1 = bench_classic_mod(B, n, step);
        }, N);
        results.push_back({B, N, "classic_mod", t_classic});

        std::int64_t sink2 = 0;
        double t_reist_scalar = time_loop([&](std::int64_t n){
            sink2 = bench_reist_sym_scalar(B, n, step);
        }, N);
        results.push_back({B, N, "reist_sym_scalar", t_reist_scalar});

        std::int64_t sink3 = 0;
        double t_reist_neon = time_loop([&](std::int64_t n){
            sink3 = bench_reist_sym_neon(B, n, step);
        }, N);
        results.push_back({B, N, "reist_sym_neon", t_reist_neon});

        std::cout << "  classic_mod        : " << t_classic        << " s\n";
        std::cout << "  reist_sym (scalar) : " << t_reist_scalar   << " s\n";
        std::cout << "  reist_sym (NEON)   : " << t_reist_neon     << " s\n";
        
        if (t_reist_scalar > 0.0) {
            std::cout << "  speedup (classic / scalar) : " << (t_classic / t_reist_scalar) << "x\n";
        }
        if (t_reist_neon > 0.0) {
            std::cout << "  speedup (classic / NEON)   : " << (t_classic / t_reist_neon) << "x\n";
        }
        if (t_reist_scalar > 0.0 && t_reist_neon > 0.0) {
            std::cout << "  NEON speedup (scalar / NEON): " << (t_reist_scalar / t_reist_neon) << "x\n";
        }
        std::cout << "  sinks: " << sink1 << " / " << sink2 << " / " << sink3 << "\n\n";
    }

    // Write CSV for plotting
    const char* csv_name = "results_modadd_suite_neon.csv";
    std::ofstream csv(csv_name);
    if (csv) {
        csv << "modulus,N,scenario,seconds,ops_per_sec\n";
        for (const auto& r : results) {
            double ops_per_sec = (r.seconds > 0.0) ? (double(r.N) / r.seconds) : 0.0;
            csv << r.B << ","
                << r.N << ","
                << r.name << ","
                << r.seconds << ","
                << ops_per_sec << "\n";
        }
        csv.close();
        std::cout << "CSV written to " << csv_name << "\n";
    } else {
        std::cerr << "WARNING: could not write CSV file " << csv_name << "\n";
    }

    return 0;
}
