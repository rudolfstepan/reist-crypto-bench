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

// Montgomery arithmetic implementation
// For modulus N, we use R = 2^64 (assuming 64-bit operations)
// Montgomery form: x̄ = xR mod N

using Clock = std::chrono::high_resolution_clock;

struct MontgomeryContext {
    uint64_t N;      // Modulus
    uint64_t R;      // 2^64 mod N
    uint64_t R2;     // (2^64)^2 mod N
    uint64_t N_inv;  // -N^(-1) mod 2^64
    
    MontgomeryContext(uint64_t modulus) : N(modulus) {
        // Compute N_inv: N * N_inv ≡ -1 (mod 2^64)
        // Using extended Euclidean algorithm
        N_inv = compute_n_inv(N);
        
        // Compute R mod N (R = 2^64 mod N)
        // Since 2^64 overflows, compute via repeated doubling
        R = compute_r_mod_n(N);
        
        // Compute R^2 mod N
        R2 = mulmod128(R, R, N);
    }
    
    // Compute -N^(-1) mod 2^64
    static uint64_t compute_n_inv(uint64_t n) {
        uint64_t inv = 1;
        // Newton iteration for modular inverse
        for (int i = 0; i < 6; i++) {
            inv = inv * (2 - n * inv);
        }
        return inv;
    }
    
    // Compute 2^64 mod N
    static uint64_t compute_r_mod_n(uint64_t n) {
        uint64_t r = (uint64_t)(-1) % n + 1;  // 2^64 mod n
        return r;
    }
    
    // 128-bit multiplication and modular reduction
    static uint64_t mulmod128(uint64_t a, uint64_t b, uint64_t n) {
        __uint128_t prod = (__uint128_t)a * b;
        return prod % n;
    }
    
    // Montgomery reduction (REDC)
    // Input: T in [0, N*R)
    // Output: TR^(-1) mod N
    uint64_t redc(uint64_t T_low, uint64_t T_high) const {
        uint64_t m = T_low * N_inv;
        
        // Compute (T + mN) / R
        __uint128_t mn = (__uint128_t)m * N;
        __uint128_t T = ((__uint128_t)T_high << 64) | T_low;
        __uint128_t result = (T + mn) >> 64;
        
        uint64_t r = (uint64_t)result;
        if (r >= N) r -= N;
        
        return r;
    }
    
    // Convert to Montgomery form: x̄ = xR mod N
    uint64_t to_montgomery(uint64_t x) const {
        return mulmod128(x, R2, N);
    }
    
    // Convert from Montgomery form: x = x̄R^(-1) mod N
    uint64_t from_montgomery(uint64_t x_bar) const {
        return redc(x_bar, 0);
    }
    
    // Montgomery multiplication: (x̄ * ȳ)R^(-1) mod N
    uint64_t montgomery_mul(uint64_t x_bar, uint64_t y_bar) const {
        __uint128_t prod = (__uint128_t)x_bar * y_bar;
        uint64_t prod_low = (uint64_t)prod;
        uint64_t prod_high = (uint64_t)(prod >> 64);
        return redc(prod_low, prod_high);
    }
    
    // Montgomery addition: (x̄ + ȳ) mod N
    uint64_t montgomery_add(uint64_t x_bar, uint64_t y_bar) const {
        uint64_t sum = x_bar + y_bar;
        if (sum >= N || sum < x_bar) {
            sum -= N;
        }
        return sum;
    }
};

// Classical modular multiplication
uint64_t classic_modmul(uint64_t a, uint64_t b, uint64_t n) {
    __uint128_t prod = (__uint128_t)a * b;
    return prod % n;
}

// Classical modular addition
uint64_t classic_modadd(uint64_t a, uint64_t b, uint64_t n) {
    return (a + b) % n;
}

// REIST-style modular addition (symmetric remainder)
int64_t reist_modadd(int64_t a, int64_t b, int64_t n) {
    int64_t half = n / 2;
    int64_t neg_half = -half;
    int64_t r = a + b;
    
    // Branchless correction
    int64_t gt = (r > half);
    int64_t leq = (r <= neg_half);
    r -= gt * n;
    r += leq * n;
    
    return r;
}

// REIST-style modular multiplication using symmetric remainder
int64_t reist_modmul(int64_t a, int64_t b, int64_t n) {
    __int128_t prod = (__int128_t)a * b;
    int64_t r = prod % n;
    
    // Convert to symmetric remainder
    int64_t half = n / 2;
    if (r > half) r -= n;
    else if (r <= -half) r += n;
    
    return r;
}

template<typename F>
double time_loop(F&& f, int64_t N) {
    auto t0 = Clock::now();
    f(N);
    auto t1 = Clock::now();
    std::chrono::duration<double> dt = t1 - t0;
    return dt.count();
}

int main(int argc, char** argv) {
    int64_t N = 10'000'000;  // Number of operations
    
    if (argc >= 2) N = std::stoll(argv[1]);
    if (N <= 0) {
        std::cerr << "N must be > 0\n";
        return 1;
    }
    
    std::vector<uint64_t> moduli;
    if (argc >= 3) {
        // Runtime parameter scenario
        moduli.push_back(std::stoull(argv[2]));
    } else {
        // Default moduli - cryptographically relevant sizes
        moduli = {
            257,              // Small prime (8-bit)
            65537,            // Fermat prime (16-bit)
            1000003,          // ~20-bit prime
            10000019,         // ~24-bit prime
            1000000007,       // 30-bit prime
            1000000000039ULL  // ~40-bit prime
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
    std::cout << "REIST vs Montgomery Arithmetic Benchmark\n";
    std::cout << "========================================\n";
    std::cout << "System Information:\n";
    std::cout << "  Hostname: " << hostname << "\n";
    std::cout << "  OS: " << os_name << "\n";
    std::cout << "  CPU Model: " << cpu_model << "\n";
    std::cout << "  CPU MHz: " << cpu_mhz << "\n";
    std::cout << "  Memory: " << mem_total << "\n";
    std::cout << "========================================\n\n";
    std::cout << "Total operations per modulus N = " << N << "\n\n";
    std::cout << "Testing scenarios:\n";
    std::cout << "  1. Modular Addition\n";
    std::cout << "  2. Modular Multiplication\n";
    std::cout << "  3. Montgomery Multiplication (with conversion overhead)\n\n";
    std::cout << "Running benchmarks...\n\n";
    
    for (auto M : moduli) {
        std::cout << "========================================\n";
        std::cout << "Modulus = " << M << "\n";
        std::cout << "========================================\n";
        
        MontgomeryContext mont(M);
        
        // Test 1: Modular Addition
        std::cout << "\n--- Modular Addition ---\n";
        
        uint64_t a = 12345 % M;
        uint64_t b = 67890 % M;
        uint64_t sink_classic = 0;
        
        double t_classic_add = time_loop([&](int64_t n) {
            uint64_t x = a, y = b;
            for (int64_t i = 0; i < n; ++i) {
                x = classic_modadd(x, y, M);
            }
            sink_classic = x;
        }, N);
        
        int64_t a_s = (int64_t)(a % M);
        int64_t b_s = (int64_t)(b % M);
        int64_t sink_reist = 0;
        
        double t_reist_add = time_loop([&](int64_t n) {
            int64_t x = a_s, y = b_s;
            for (int64_t i = 0; i < n; ++i) {
                x = reist_modadd(x, y, (int64_t)M);
            }
            sink_reist = x;
        }, N);
        
        uint64_t x_bar = mont.to_montgomery(a);
        uint64_t y_bar = mont.to_montgomery(b);
        uint64_t sink_mont = 0;
        
        double t_mont_add = time_loop([&](int64_t n) {
            uint64_t x = x_bar, y = y_bar;
            for (int64_t i = 0; i < n; ++i) {
                x = mont.montgomery_add(x, y);
            }
            sink_mont = x;
        }, N);
        
        std::cout << "  Classic     : " << t_classic_add << " s\n";
        std::cout << "  REIST       : " << t_reist_add << " s\n";
        std::cout << "  Montgomery  : " << t_mont_add << " s\n";
        std::cout << "  REIST speedup vs Classic    : " << (t_classic_add / t_reist_add) << "x\n";
        std::cout << "  Montgomery speedup vs Classic: " << (t_classic_add / t_mont_add) << "x\n";
        std::cout << "  REIST speedup vs Montgomery : " << (t_mont_add / t_reist_add) << "x\n";
        std::cout << "  Sinks: " << sink_classic << " / " << sink_reist << " / " << sink_mont << "\n";
        
        // Test 2: Modular Multiplication
        std::cout << "\n--- Modular Multiplication ---\n";
        
        sink_classic = 0;
        double t_classic_mul = time_loop([&](int64_t n) {
            uint64_t x = a, y = b;
            for (int64_t i = 0; i < n; ++i) {
                x = classic_modmul(x, y, M);
            }
            sink_classic = x;
        }, N);
        
        sink_reist = 0;
        double t_reist_mul = time_loop([&](int64_t n) {
            int64_t x = a_s, y = b_s;
            for (int64_t i = 0; i < n; ++i) {
                x = reist_modmul(x, y, (int64_t)M);
            }
            sink_reist = x;
        }, N);
        
        sink_mont = 0;
        double t_mont_mul = time_loop([&](int64_t n) {
            uint64_t x = x_bar, y = y_bar;
            for (int64_t i = 0; i < n; ++i) {
                x = mont.montgomery_mul(x, y);
            }
            sink_mont = x;
        }, N);
        
        std::cout << "  Classic     : " << t_classic_mul << " s\n";
        std::cout << "  REIST       : " << t_reist_mul << " s\n";
        std::cout << "  Montgomery  : " << t_mont_mul << " s\n";
        std::cout << "  REIST speedup vs Classic    : " << (t_classic_mul / t_reist_mul) << "x\n";
        std::cout << "  Montgomery speedup vs Classic: " << (t_classic_mul / t_mont_mul) << "x\n";
        std::cout << "  REIST speedup vs Montgomery : " << (t_mont_mul / t_reist_mul) << "x\n";
        std::cout << "  Sinks: " << sink_classic << " / " << sink_reist << " / " << sink_mont << "\n";

        // Test 2b: Combined REIST Addition + Montgomery Multiplication
        std::cout << "\n--- Combined REIST Add + Montgomery Mul ---\n";

        double t_combined = time_loop([&](int64_t n) {
            int64_t x = a_s;                  // centered REIST value
            uint64_t z = (uint64_t)(b % M);   // multiplier
            uint64_t z_m = mont.to_montgomery(z);

            for (int64_t i = 0; i < n; ++i) {
                // REIST modular addition (centered)
                x = reist_modadd(x, (int64_t)z, (int64_t)M);

                // Map centered value to [0, M) for Montgomery
                uint64_t x_pos = (uint64_t)(x >= 0 ? x : x + M);
                uint64_t x_m = mont.to_montgomery(x_pos);

                // Montgomery multiplication
                z_m = mont.montgomery_mul(x_m, z_m);
            }

            sink_classic = mont.from_montgomery(z_m);
        }, N);

        std::cout << "  Combined time : " << t_combined << " s\n";
        std::cout << "  Sink: " << sink_classic << "\n";
        std::cout << "  Reference (Classic add + classic mul): "
          << (t_classic_add + t_classic_mul) << " s\n";


        // Test 3: Montgomery with conversion overhead
        std::cout << "\n--- Montgomery Multiplication (with conversion) ---\n";
        
        double t_mont_full = time_loop([&](int64_t n) {
            uint64_t result = 0;
            uint64_t x = a;
            uint64_t y = b;

            for (int64_t i = 0; i < n; ++i) {
                x += i + 1;
                y ^= x;

                uint64_t x_m = mont.to_montgomery(x % M);
                uint64_t y_m = mont.to_montgomery(y % M);
                uint64_t z_m = mont.montgomery_mul(x_m, y_m);
                result = mont.from_montgomery(z_m);
            }
            sink_classic = result;
        }, N);

        std::cout << "  Montgomery (full cycle): " << t_mont_full << " s\n";
        std::cout << "  Overhead: " << ((t_mont_full / t_classic_mul) - 1.0) * 100.0 << "% vs Classic\n";
        std::cout << "  Note: Montgomery is efficient when staying in Montgomery form\n";
        std::cout << "        for multiple operations (e.g., modular exponentiation)\n";

        std::cout << "  Note: REIST produces centered residues [-N/2, N/2),\n";
        std::cout << "        Montgomery operates in [0, N) domain.\n";

        
        std::cout << "\n";
    }
    
    return 0;
}
