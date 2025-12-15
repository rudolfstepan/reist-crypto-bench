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


// This benchmark compares two ways to maintain a periodic counter modulo B:
//
//  (1) Classic: r = (r + step) % B
//  (2) REIST-style: keep r in a signed symmetric interval and correct only
//      with simple comparisons and +/- B.
//
// On typical CPUs, '%' for non-power-of-two moduli is relatively expensive,
// so (2) can be noticeably faster. This is exactly the scenario where a REIST-ALU
// in hardware shines even stärker: no division, only signed additions and
// trivial comparisons.

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

// REIST-style symmetric remainder counter.
// Keep r in (-B/2, +B/2] by simple correction.
static std::int64_t bench_reist_sym(std::int64_t B, std::int64_t N, std::int64_t step) {
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

int main(int argc, char** argv) {
    // Usage:
    //   bench_modadd_suite [N] [B]
    // If B is provided, only that modulus is benchmarked (runtime parameter).
    // Otherwise, all default moduli are used (constant scenario).

    std::int64_t N = 50'000'000;
    if (argc >= 2) N = std::stoll(argv[1]);
    if (N <= 0) {
        std::cerr << "N must be > 0\n";
        return 1;
    }

    std::vector<std::int64_t> moduli;
    if (argc >= 3) {
        // Runtime parameter scenario
        moduli.push_back(std::stoll(argv[2]));
    } else {
        // Constant scenario (default moduli)
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
    results.reserve(moduli.size() * 2);

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
    // Windows: get hostname
    char hn[256];
    DWORD hnSize = sizeof(hn);
    if (GetComputerNameA(hn, &hnSize)) hostname = hn;
    else hostname = "Unknown";
    // Windows: get OS name
    os_name = "Windows";
    // Windows: get CPU info
    HKEY hKey;
    if (RegOpenKeyExA(HKEY_LOCAL_MACHINE, "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0", 0, KEY_READ, &hKey) == ERROR_SUCCESS) {
        char buf[256];
        DWORD bufSize = sizeof(buf);
        if (RegQueryValueExA(hKey, "ProcessorNameString", NULL, NULL, (LPBYTE)buf, &bufSize) == ERROR_SUCCESS) {
            cpu_model = std::string(buf);
        }
        bufSize = sizeof(buf);
        if (RegQueryValueExA(hKey, "~MHz", NULL, NULL, (LPBYTE)buf, &bufSize) == ERROR_SUCCESS) {
            cpu_mhz = std::to_string(*(DWORD*)buf);
        }
        RegCloseKey(hKey);
    }
    // Windows: get memory info
    MEMORYSTATUSEX statex;
    statex.dwLength = sizeof(statex);
    if (GlobalMemoryStatusEx(&statex)) {
        mem_total = std::to_string(statex.ullTotalPhys / (1024 * 1024)) + " MB";
    }
#endif

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "========================================\n";
    std::cout << "REIST modular-add benchmark suite\n";
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
    std::cout << "Running benchmarks...\n\n";

    for (auto B : moduli) {
        std::cout << "Modulus B = " << B << "\n";
        std::uint64_t sink1 = 0;
        double t_classic = time_loop([&](std::int64_t n){
            sink1 = bench_classic_mod(B, n, step);
        }, N);
        results.push_back({B, N, "classic_mod", t_classic});

        std::int64_t sink2 = 0;
        double t_reist = time_loop([&](std::int64_t n){
            sink2 = bench_reist_sym(B, n, step);
        }, N);
        results.push_back({B, N, "reist_sym", t_reist});

        std::cout << "  classic_mod: " << t_classic << " s\n";
        std::cout << "  reist_sym  : " << t_reist   << " s\n";
        if (t_reist > 0.0) {
            std::cout << "  speedup    : " << (t_classic / t_reist) << "x (classic / REIST)\n";
        }
        std::cout << "  sinks: " << sink1 << " / " << sink2 << "\n\n";
    }

    // Write CSV for plotting
    const char* csv_name = "results_modadd_suite.csv";
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
