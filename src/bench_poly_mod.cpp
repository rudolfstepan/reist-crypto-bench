#include <iostream>
#include <chrono>
#include <vector>
#include <random>
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

using Clock = std::chrono::high_resolution_clock;

// Classic modulo polynomial add: r[i] = (a[i] + b[i]) % q
static void classic_poly_add(
    const std::vector<int32_t>& a,
    const std::vector<int32_t>& b,
    std::vector<int32_t>& out,
    int32_t q)
{
    const int32_t n = static_cast<int32_t>(a.size());
    for (int32_t i = 0; i < n; ++i) {
        int32_t t = a[i] + b[i];
        out[i] = t % q;
    }
}

// REIST polynomial add (signed remainder, branchless Korrektur)
//
// Hält die Koeffizienten in (-q/2, +q/2] durch einfache +/-q-Korrektur
// ohne explizite if/else-Branches, um Branch-Misprediction zu minimieren.
static void reist_poly_add(
    const std::vector<int32_t>& a,
    const std::vector<int32_t>& b,
    std::vector<int32_t>& out,
    int32_t q)
{
    const int32_t n      = static_cast<int32_t>(a.size());
    const int32_t halfq  = q / 2;
    const int32_t neg_hq = -halfq;

    for (int32_t i = 0; i < n; ++i) {
        int32_t r = a[i] + b[i];

        // Boolesche Flags als 0/1
        int32_t gt  = (r >  halfq);   // r >  q/2
        int32_t leq = (r <= neg_hq);  // r <= -q/2

        // Branchless Korrektur:
        // r -= gt  * q;
        // r += leq * q;
        r -= gt  * q;
        r += leq * q;

        out[i] = r;
    }
}

template<typename F>
double time_exec(F&& func, int reps) {
    auto t0 = Clock::now();
    for (int i = 0; i < reps; ++i) {
        func();
    }
    auto t1 = Clock::now();
    return std::chrono::duration<double>(t1 - t0).count();
}

int main(int argc, char** argv)
{
    int N    = 1024;     // Polynomgrad
    int reps = 50000;    // Anzahl Wiederholungen
    std::vector<int32_t> moduli;

    if (argc >= 2) N    = std::stoi(argv[1]);
    if (argc >= 3) reps = std::stoi(argv[2]);
    if (argc >= 4) {
        // Runtime parameter scenario
        moduli.push_back(std::stoi(argv[3]));
    } else {
        // Constant scenario (default moduli)
        moduli = {
            1000003,
            10000019,
            100000007,
            1000000007
        };
    }

    std::mt19937 rng(12345);

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
    std::cout << "Polynomial Modular Add Benchmark (NTRU-style, large q)\n";
    std::cout << "========================================\n";
    std::cout << "System Information:\n";
    std::cout << "  Hostname: " << hostname << "\n";
    std::cout << "  OS: " << os_name << "\n";
    std::cout << "  CPU Model: " << cpu_model << "\n";
    std::cout << "  CPU MHz: " << cpu_mhz << "\n";
    std::cout << "  Memory: " << mem_total << "\n";
    std::cout << "========================================\n\n";
    std::cout << "N = " << N << ", reps = " << reps << "\n\n";

    std::ofstream csv("results_poly_mod.csv");
    if (!csv) {
        std::cerr << "ERROR: could not open results_poly_mod.csv for writing\n";
        return 1;
    }
    csv << "q,N,reps,classic,reist,speedup\n";

    std::vector<int32_t> a(N), b(N), out(N);
    std::uniform_int_distribution<int32_t> dist(-500000, 500000);

    for (int32_t q : moduli) {
        for (int i = 0; i < N; ++i) {
            a[i] = dist(rng);
            b[i] = dist(rng);
        }

        double t_classic = time_exec([&]() {
            classic_poly_add(a, b, out, q);
        }, reps);

        double t_reist = time_exec([&]() {
            reist_poly_add(a, b, out, q);
        }, reps);

        double speed = t_classic / t_reist;

        std::cout << "q = " << q << "\n";
        std::cout << "  classic : " << t_classic << " s\n";
        std::cout << "  REIST   : " << t_reist   << " s\n";
        std::cout << "  speedup : " << speed     << "x\n\n";

        csv << q << "," << N << "," << reps << ","
            << t_classic << "," << t_reist << "," << speed << "\n";
    }

    csv.close();
    std::cout << "CSV written to results_poly_mod.csv\n";

    return 0;
}
