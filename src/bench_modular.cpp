#include <iostream>
#include <chrono>
#include <random>
#include <vector>
#include <iomanip>
#include <cstdint>
#include <fstream>
#include <unistd.h>
#include <cstdio>
#include <string>
#include <cctype>
#include "reist_mod.hpp"

using namespace std;

template<typename F>
double bench(F func, long long iters) {
    auto t0 = chrono::high_resolution_clock::now();
    func(iters);
    auto t1 = chrono::high_resolution_clock::now();
    return chrono::duration<double>(t1 - t0).count();
}

int main(int argc, char** argv) {
    long long N = 5'000'000;
    long long B = 257;

    if (argc >= 2) B = stoll(argv[1]);
    if (argc >= 3) N = stoll(argv[2]);

    if (B <= 1 || N <= 0) {
        cerr << "Usage: " << argv[0] << " [B>1] [N>0]\n";
        return 1;
    }

    mt19937_64 rng(0xBEEF);
    uniform_int_distribution<int64_t> dist(0, (int64_t(1) << 62));

    // Collect system info
    std::string cpu_model, cpu_mhz, mem_total, hostname, os_name;
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

    cout << fixed << setprecision(6);
    cout << "========================================\n";
    cout << "Modular Benchmark\n";
    cout << "========================================\n";
    cout << "System Information:\n";
    cout << "  Hostname: " << hostname << "\n";
    cout << "  OS: " << os_name << "\n";
    cout << "  CPU Model: " << cpu_model << "\n";
    cout << "  CPU MHz: " << cpu_mhz << "\n";
    cout << "  Memory: " << mem_total << "\n";
    cout << "========================================\n\n";
    cout << "Benchmark with B = " << B << ", N = " << N << "\n";

    double t_classic = bench([&](long long n){
        for (long long i = 0; i < n; ++i) {
            int64_t a = dist(rng);
            volatile auto r = reist::classic_remainder(a, B);
            (void)r;
        }
    }, N);

    double t_reist = bench([&](long long n){
        for (long long i = 0; i < n; ++i) {
            int64_t a = dist(rng);
            volatile auto r = reist::signed_remainder(a, B);
            (void)r;
        }
    }, N);

    cout << "\n--- Modular remainder ---\n";
    cout << "classic  : " << t_classic << " s\n";
    cout << "REIST    : " << t_reist   << " s\n";
    if (t_reist > 0.0) {
        cout << "Speedup  : " << (t_classic / t_reist) << "x (classic / REIST)\n";
    }

    return 0;
}
