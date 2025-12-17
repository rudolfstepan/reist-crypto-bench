#include <iostream>
#include <chrono>
#include <vector>
#include <cstdint>
#include <iomanip>
#include <fstream>
#include <string>
#include <cstdlib>

#ifndef _WIN32
#include <unistd.h>
#else
#include <windows.h>
#endif

using Clock = std::chrono::high_resolution_clock;

/* ============================================================
   Global volatile sink — verhindert Dead-Code-Elimination
   ============================================================ */
static volatile uint64_t g_sink = 0;

/* ============================================================
   Montgomery Arithmetic
   ============================================================ */
struct MontgomeryContext {
    uint64_t N;
    uint64_t N_inv;
    uint64_t R;
    uint64_t R2;

    explicit MontgomeryContext(uint64_t modulus) : N(modulus) {
        if ((N & 1) == 0) {
            std::cerr << "Montgomery requires odd modulus\n";
            std::abort();
        }
        N_inv = compute_n_inv(N);
        R = compute_r_mod_n(N);
        R2 = mulmod128(R, R, N);
    }

    static uint64_t compute_n_inv(uint64_t n) {
        uint64_t inv = 1;
        for (int i = 0; i < 6; ++i)
            inv *= (2 - n * inv);
        return inv;
    }

    static uint64_t compute_r_mod_n(uint64_t n) {
        __uint128_t R = (__uint128_t)1 << 64;
        return (uint64_t)(R % n);
    }

    static uint64_t mulmod128(uint64_t a, uint64_t b, uint64_t n) {
        return (uint64_t)((__uint128_t)a * b % n);
    }

    uint64_t redc(uint64_t lo, uint64_t hi) const {
        uint64_t m = lo * N_inv;
        __uint128_t t = ((__uint128_t)hi << 64) | lo;
        __uint128_t mn = (__uint128_t)m * N;
        uint64_t r = (uint64_t)((t + mn) >> 64);
        if (r >= N) r -= N;
        return r;
    }

    uint64_t to_montgomery(uint64_t x) const {
        return mulmod128(x, R2, N);
    }

    uint64_t from_montgomery(uint64_t x) const {
        return redc(x, 0);
    }

    uint64_t montgomery_mul(uint64_t a, uint64_t b) const {
        __uint128_t p = (__uint128_t)a * b;
        return redc((uint64_t)p, (uint64_t)(p >> 64));
    }

    uint64_t montgomery_add(uint64_t a, uint64_t b) const {
        uint64_t s = a + b;
        if (s >= N || s < a) s -= N;
        return s;
    }
};

/* ============================================================
   Classical arithmetic
   ============================================================ */
uint64_t classic_modadd(uint64_t a, uint64_t b, uint64_t n) {
    return (a + b) % n;
}

uint64_t classic_modmul(uint64_t a, uint64_t b, uint64_t n) {
    return (uint64_t)((__uint128_t)a * b % n);
}

/* ============================================================
   REIST arithmetic (centered)
   ============================================================ */
int64_t reist_modadd(int64_t a, int64_t b, int64_t n) {
    int64_t r = a + b;
    int64_t h = n >> 1;
    if (r >  h) r -= n;
    if (r < -h) r += n;
    return r;
}

int64_t reist_modmul(int64_t a, int64_t b, int64_t n) {
    __int128_t p = (__int128_t)a * b;
    int64_t r = (int64_t)(p % n);
    int64_t h = n >> 1;
    if (r >  h) r -= n;
    if (r < -h) r += n;
    return r;
}

/* ============================================================
   Timing helper
   ============================================================ */
template<class F>
double time_loop(F&& f, int64_t N) {
    auto t0 = Clock::now();
    f(N);
    auto t1 = Clock::now();
    return std::chrono::duration<double>(t1 - t0).count();
}

/* ============================================================
   Main
   ============================================================ */
int main(int argc, char** argv) {
    int64_t OPS = 10'000'000;
    if (argc > 1) OPS = std::stoll(argv[1]);

    std::vector<uint64_t> moduli = {
        257,
        65537,
        1000003,
        10000019,
        1000000007ULL,
        1000000000039ULL
    };

    std::cout << std::fixed << std::setprecision(9);
    std::cout << "========================================\n";
    std::cout << "REIST vs Montgomery Arithmetic Benchmark\n";
    std::cout << "========================================\n";
    std::cout << "Total operations per modulus = " << OPS << "\n\n";

    for (uint64_t M : moduli) {
        std::cout << "========================================\n";
        std::cout << "Modulus = " << M << "\n";
        std::cout << "========================================\n";

        MontgomeryContext mont(M);

        uint64_t a = 1234567 % M;
        uint64_t b = 89101112 % M;
        int64_t  a_s = (int64_t)a;
        int64_t  b_s = (int64_t)b;

        /* ---------- Modular Addition ---------- */
        double t_classic_add = time_loop([&](int64_t n){
            uint64_t x = a;
            for (int64_t i = 0; i < n; ++i)
                x = classic_modadd(x, b, M);
            g_sink = x;
        }, OPS);

        double t_reist_add = time_loop([&](int64_t n){
            int64_t x = a_s;
            for (int64_t i = 0; i < n; ++i)
                x = reist_modadd(x, b_s, (int64_t)M);
            g_sink = (uint64_t)(x >= 0 ? x : x + M);
        }, OPS);

        uint64_t a_m = mont.to_montgomery(a);
        uint64_t b_m = mont.to_montgomery(b);

        double t_mont_add = time_loop([&](int64_t n){
            uint64_t x = a_m;
            for (int64_t i = 0; i < n; ++i)
                x = mont.montgomery_add(x, b_m);
            g_sink = mont.from_montgomery(x);
        }, OPS);

        std::cout << "\n--- Modular Addition ---\n";
        std::cout << "Classic     : " << t_classic_add << " s\n";
        std::cout << "REIST       : " << t_reist_add   << " s\n";
        std::cout << "Montgomery  : " << t_mont_add    << " s\n";

        /* ---------- Modular Multiplication ---------- */
        double t_classic_mul = time_loop([&](int64_t n){
            uint64_t x = a;
            for (int64_t i = 0; i < n; ++i)
                x = classic_modmul(x, b, M);
            g_sink = x;
        }, OPS);

        double t_reist_mul = time_loop([&](int64_t n){
            int64_t x = a_s;
            for (int64_t i = 0; i < n; ++i)
                x = reist_modmul(x, b_s, (int64_t)M);
            g_sink = (uint64_t)(x >= 0 ? x : x + M);
        }, OPS);

        double t_mont_mul = time_loop([&](int64_t n){
            uint64_t x = a_m;
            for (int64_t i = 0; i < n; ++i)
                x = mont.montgomery_mul(x, b_m);
            g_sink = mont.from_montgomery(x);
        }, OPS);

        std::cout << "\n--- Modular Multiplication ---\n";
        std::cout << "Classic     : " << t_classic_mul << " s\n";
        std::cout << "REIST       : " << t_reist_mul   << " s\n";
        std::cout << "Montgomery  : " << t_mont_mul    << " s\n";

        /* ---------- Full cycle comparison ---------- */
        double t_classic_full = time_loop([&](int64_t n){
            uint64_t x = a, y = b, r = 0;
            for (int64_t i = 0; i < n; ++i) {
                x += i + 1;
                y ^= x;
                r = classic_modmul(x % M, y % M, M);
            }
            g_sink = r;
        }, OPS);

        double t_mont_full = time_loop([&](int64_t n){
            uint64_t x = a, y = b, r = 0;
            for (int64_t i = 0; i < n; ++i) {
                x += i + 1;
                y ^= x;
                uint64_t xm = mont.to_montgomery(x % M);
                uint64_t ym = mont.to_montgomery(y % M);
                r = mont.from_montgomery(mont.montgomery_mul(xm, ym));
            }
            g_sink = r;
        }, OPS);

        std::cout << "\n--- Full Cycle (with conversion) ---\n";
        std::cout << "Classic full    : " << t_classic_full << " s\n";
        std::cout << "Montgomery full : " << t_mont_full    << " s\n";
        std::cout << "Overhead vs classic: "
                  << ((t_mont_full / t_classic_full) - 1.0) * 100.0
                  << " %\n\n";
    }

    return 0;
}
