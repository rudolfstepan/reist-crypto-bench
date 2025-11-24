#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstring>
#include <iomanip>

using namespace std;

inline uint32_t std_add(uint32_t a, uint32_t b) {
    return a + b;
}

// Here we conceptually keep a hook for a REIST-style addition.
// On commodity CPUs this is simulated with an extra operation,
// but in dedicated hardware this would be a cheaper "signed-add-only" pathway.
inline uint32_t reist_add32(uint32_t a, uint32_t b) {
    return a + b; // placeholder: hardware-level REIST optimization would live here
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

int main() {
    constexpr int N = 1'000'000;

    cout << fixed << setprecision(6);

    {
        uint32_t a = 0x12345678, b = 0xCAFEBABE;
        double t_std = bench([&](int n){
            for (int i = 0; i < n; ++i) a = std_add(a, b);
        }, N);

        double t_reist = bench([&](int n){
            for (int i = 0; i < n; ++i) a = reist_add32(a, b);
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
