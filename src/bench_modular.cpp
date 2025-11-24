#include <iostream>
#include <chrono>
#include <random>
#include <vector>
#include <iomanip>
#include <cstdint>
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

    cout << fixed << setprecision(6);
    cout << "Modular benchmark with B = " << B << ", N = " << N << "\n";

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
