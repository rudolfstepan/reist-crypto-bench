#include <iostream>
#include <chrono>
#include <cstdint>
#include <cstring>
#include <vector>
#include <iomanip>

using Clock = std::chrono::high_resolution_clock;

inline uint32_t std_add(uint32_t a, uint32_t b) {
    return a + b;
}

inline uint32_t reist_add32(uint32_t a, uint32_t b) {
    // In real hardware, this would map to a REIST-style ALU.
    // Here we keep it identical to std_add to avoid changing cipher behaviour.
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
    std::memcpy(x, in, 64);
    for (int i = 0; i < 10; ++i) {
        chacha_qr_std(x);
        chacha_qr_std(x);
    }
    for (int i = 0; i < 16; ++i) out[i] = x[i] + in[i];
}

void chacha_block_reist(uint32_t out[16], const uint32_t in[16]) {
    uint32_t x[16];
    std::memcpy(x, in, 64);
    for (int i = 0; i < 10; ++i) {
        chacha_qr_reist(x);
        chacha_qr_reist(x);
    }
    for (int i = 0; i < 16; ++i) out[i] = std_add(x[i], in[i]);
}

template<typename F>
double time_stream(F&& f, std::size_t blocks) {
    auto t0 = Clock::now();
    f(blocks);
    auto t1 = Clock::now();
    std::chrono::duration<double> dt = t1 - t0;
    return dt.count();
}

int main(int argc, char** argv) {
    std::size_t blocks = 1'000'000; // 1e6 * 64 bytes = 64 MB

    if (argc >= 2) {
        blocks = static_cast<std::size_t>(std::stoull(argv[1]));
    }

    uint32_t in[16];
    for (int i = 0; i < 16; ++i) in[i] = i * 0x9E3779B9u;

    uint32_t out[16];
    std::vector<uint32_t> sink(16);

    std::cout << std::fixed << std::setprecision(6);

    double t_std = time_stream([&](std::size_t n){
        for (std::size_t i = 0; i < n; ++i) {
            chacha_block_std(out, in);
            for (int j = 0; j < 16; ++j) sink[j] ^= out[j];
        }
    }, blocks);

    double t_reist = time_stream([&](std::size_t n){
        for (std::size_t i = 0; i < n; ++i) {
            chacha_block_reist(out, in);
            for (int j = 0; j < 16; ++j) sink[j] ^= out[j];
        }
    }, blocks);

    double bytes = static_cast<double>(blocks) * 64.0;
    std::cout << "ChaCha20-like keystream benchmark ("
            << (bytes / (1024.0 * 1024.0))
            << " MB total)\n\n";

    std::cout << "Classic : " << t_std
            << " s (" << (bytes / t_std / 1e6) << " MB/s)\n";

    std::cout << "REIST   : " << t_reist
            << " s (" << (bytes / t_reist / 1e6) << " MB/s)\n";

    if (t_reist > 0.0) {
        std::cout << "Speed ratio (classic / REIST): "
                << (t_std / t_reist) << "x\n";
    }

    std::cout << "\nSink XOR: ";
    for (int j = 0; j < 16; ++j) {
        std::cout << std::hex << sink[j] << " ";
    }
    std::cout << std::dec << "\n";

    return 0;
}
