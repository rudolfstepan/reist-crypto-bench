#include <iostream>
#include <chrono>
#include <cstdint>
#include <iomanip>
#include <vector>
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

using Clock = std::chrono::high_resolution_clock;

// Classic hash-mix style step: x = (x * A + B) % M
static std::uint64_t hashmix_classic(std::uint64_t x, std::uint64_t A, std::uint64_t B, std::uint64_t M) {
    return (x * A + B) % M;
}

// REIST-style: symmetrische Reduktion ohne Division
static std::int64_t hashmix_reist(std::int64_t x, std::int64_t A, std::int64_t B, std::int64_t M) {
    std::int64_t q = M;
    std::int64_t half = q / 2;
    std::int64_t neg_half = -half;

    std::int64_t r = x * A + B;
    r %= q; // optional: falls man overflow-einschränkung will; ansonsten kann man hier
            // auch mit 128-Bit rechnen, je nach Plattform. Für dieses Benchmark
            // bleibt der Fokus aber auf der Reduktion.

    // REIST-Korrektur (branchless)
    std::int64_t gt  = (r >  half);
    std::int64_t leq = (r <= neg_half);
    r -= gt  * q;
    r += leq * q;
    return r;
}

template<typename F>
double time_loop(F&& f, std::uint64_t iters) {
    auto t0 = Clock::now();
    f(iters);
    auto t1 = Clock::now();
    std::chrono::duration<double> dt = t1 - t0;
    return dt.count();
}

int main(int argc, char** argv) {
    std::uint64_t N = 100'000'000;
    std::vector<std::uint64_t> moduli;
    std::uint64_t A = 6364136223846793005ULL;
    std::uint64_t B = 1442695040888963407ULL;

    // Usage: bench_hashmix [N] [B]
    if (argc >= 2) N = std::stoull(argv[1]);
    if (argc >= 3) B = std::stoull(argv[2]);

    if (argc >= 4) {
        // Runtime parameter scenario for modulus
        moduli.push_back(std::stoull(argv[3]));
    } else {
        // Constant scenario (default moduli)
        moduli = {
            1'000'003ULL,
            10'000'019ULL,
            100'000'007ULL,
            1'000'000'007ULL
        };
    }

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
    std::cout << "Hashmix benchmark (classic % vs REIST reduction)\n";
    std::cout << "========================================\n";
    std::cout << "System Information:\n";
    std::cout << "  Hostname: " << hostname << "\n";
    std::cout << "  OS: " << os_name << "\n";
    std::cout << "  CPU Model: " << cpu_model << "\n";
    std::cout << "  CPU MHz: " << cpu_mhz << "\n";
    std::cout << "  Memory: " << mem_total << "\n";
    std::cout << "========================================\n\n";
    std::cout << "Iterations N = " << N << "\n";

    for (auto M : moduli) {
        std::uint64_t x1 = 0x1234567890abcdefULL;
        std::int64_t  x2 = static_cast<std::int64_t>(0x1234567890abcdefULL);

        double t_classic = time_loop([&](std::uint64_t n){
            for (std::uint64_t i = 0; i < n; ++i) {
                x1 = hashmix_classic(x1, A, B, M);
            }
        }, N);

        double t_reist = time_loop([&](std::uint64_t n){
            for (std::uint64_t i = 0; i < n; ++i) {
                x2 = hashmix_reist(x2, static_cast<std::int64_t>(A),
                                   static_cast<std::int64_t>(B),
                                   static_cast<std::int64_t>(M));
            }
        }, N);

        std::cout << "M = " << M << "";
        std::cout << "  classic : " << t_classic << "";
        std::cout << "  REIST   : " << t_reist   << "";
        if (t_reist > 0.0) {
            std::cout << "  speedup : " << (t_classic / t_reist) << "x (classic / REIST)";
        }
        std::cout << "  sink values: " << std::hex << x1 << " / " << x2 << std::dec << "";
    }

    return 0;
}
