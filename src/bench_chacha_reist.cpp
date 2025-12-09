
#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstring>
#include <iomanip>
#include <string>
#include <fstream>
#include <unistd.h>
#include <cstdio>
#include <cctype>

using namespace std;

inline uint32_t std_add(uint32_t a, uint32_t b) {
    return a + b;
}

inline uint32_t reist_add32(uint32_t a, uint32_t b) {
    return a + b;
}

#define ROTL32(x,n) ((x << n) | (x >> (32 - n)))

inline void chacha_qr_std(uint32_t s[16]) {
    s[0]  += s[4];  s[12] ^= s[0];  s[12] = ROTL32(s[12], 16);
    s[8]  += s[12]; s[4]  ^= s[8];  s[4]  = ROTL32(s[4],  12);
    s[0]  += s[4];  s[12] ^= s[0];  s[12] = ROTL32(s[12],  8);
    s[8]  += s[12]; s[4]  ^= s[8];  s[4]  = ROTL32(s[4],   7);
}

inline void chacha_qr_reist(uint32_t s[16]) {
    s[0]  = reist_add32(s[0],  s[4]);  s[12] ^= s[0];  s[12] = ROTL32(s[12], 16);
    s[8]  = reist_add32(s[8],  s[12]); s[4]  ^= s[8];  s[4]  = ROTL32(s[4],  12);
    s[0]  = reist_add32(s[0],  s[4]);  s[12] ^= s[0];  s[12] = ROTL32(s[12],  8);
    s[8]  = reist_add32(s[8],  s[12]); s[4]  ^= s[8];  s[4]  = ROTL32(s[4],   7);
}

void chacha_block_std(uint32_t out[16], const uint32_t in[16]) {
    uint32_t x[16];
    memcpy(x, in, 64);
    for (int i = 0; i < 10; ++i) {
        chacha_qr_std(x);
        chacha_qr_std(x);
    }
    for (int i = 0; i < 16; ++i) out[i] = x[i] + in[i];
}

void chacha_block_reist(uint32_t out[16], const uint32_t in[16]) {
    uint32_t x[16];
    memcpy(x, in, 64);
    for (int i = 0; i < 10; ++i) {
        chacha_qr_reist(x);
        chacha_qr_reist(x);
    }
    for (int i = 0; i < 16; ++i) out[i] = std_add(x[i], in[i]);
}

template<typename F>
double bench(F func, int iters) {
    auto t0 = chrono::high_resolution_clock::now();
    func(iters);
    auto t1 = chrono::high_resolution_clock::now();
    return chrono::duration<double>(t1 - t0).count();
}

int main(int argc, char** argv) {
    // Usage: bench_chacha_reist [N] [B]
    int N = 1'000'000;
    uint32_t B = 0xCAFEBABE;
    if (argc >= 2) N = std::stoi(argv[1]);
    if (argc >= 3) B = static_cast<uint32_t>(std::stoul(argv[2]));

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
    cout << "ChaCha20 REIST Benchmark\n";
    cout << "========================================\n";
    cout << "System Information:\n";
    cout << "  Hostname: " << hostname << "\n";
    cout << "  OS: " << os_name << "\n";
    cout << "  CPU Model: " << cpu_model << "\n";
    cout << "  CPU MHz: " << cpu_mhz << "\n";
    cout << "  Memory: " << mem_total << "\n";
    cout << "========================================\n";

    {
        uint32_t a = 0x12345678;
        double t_std = bench([&](int n){
            for (int i = 0; i < n; ++i) a = std_add(a, B);
        }, N);

        double t_reist = bench([&](int n){
            for (int i = 0; i < n; ++i) a = reist_add32(a, B);
        }, N);

        cout << "\n--- Modular Addition (32-bit) ---\n";
        cout << "std_add    : " << t_std  << " s\n";
        cout << "reist_add32: " << t_reist << " s\n";
        if (t_reist > 0.0) {
            cout << "Speed ratio: " << (t_std / t_reist) << "x (std / REIST)\n";
        }
    }

    {
        uint32_t in[16];
        for (int i = 0; i < 16; ++i) in[i] = i * 0x9E3779B9u;

        uint32_t out[16];

        double t_std = bench([&](int n){
            for (int i = 0; i < n; ++i) chacha_block_std(out, in);
        }, N);

        double t_reist = bench([&](int n){
            for (int i = 0; i < n; ++i) chacha_block_reist(out, in);
        }, N);

        double bytes = N * 64.0;

        cout << "\n--- ChaCha20-like Cipher-Speed ---\n";
        cout << "Classic : " << t_std  << " s (" << bytes / t_std  / 1e6  << " MB/s)\n";
        cout << "REIST   : " << t_reist << " s (" << bytes / t_reist / 1e6 << " MB/s)\n";
        if (t_reist > 0.0) {
            cout << "Speed ratio: " << (t_std / t_reist) << "x (classic / REIST)\n";
        }
    }

    return 0;
}
