# REIST Crypto Benchmark Suite

A comprehensive benchmark suite evaluating the performance advantages of  
**REIST modular arithmetic** compared to classical `%`-based modular reduction.

REIST (Remainder Equalized Integer Symmetric Transform) replaces expensive CPU
division/modulo operations with pure signed addition and simple comparisons.
This yields significantly faster modular-addition performance on CPUs and even
larger gains in hardware (FPGA/ASIC), where division units are costly.

---

## Summary of Results

The extended modular-add benchmark (`bench_modadd_suite`) shows a consistent  
**3× speed boost** for REIST across a wide range of moduli — from small primes  
to cryptographic-scale moduli like 1,000,000,007.

### Benchmark Results (your machine)

| Modulus B | classic_mod | reist_sym | Speedup |
|-----------|-------------|-----------|---------|
| 257 | 0.225638 s | 0.072086 s | **3.13×** |
| 997 | 0.210846 s | 0.068990 s | **3.06×** |
| 10 007 | 0.210352 s | 0.067665 s | **3.11×** |
| 1 000 003 | 0.209938 s | 0.067785 s | **3.10×** |
| 10 000 019 | 0.210265 s | 0.068041 s | **3.09×** |
| 1 000 000 007 | 0.215023 s | 0.069249 s | **3.10×** |

---

## Repository Structure

```
reist-crypto-bench/
│
├── include/
│   └── reist_mod.hpp
│
├── src/
│   ├── bench_modular.cpp
│   ├── bench_modadd_suite.cpp
│   └── bench_chacha_reist.cpp
│
├── tests/
│   └── test_reist.cpp
│
├── docs/
│   ├── reist-division.pdf
│   └── BENCHMARKS.md
│
├── scripts/
│   └── run_all.sh
│
├── CMakeLists.txt
├── .gitignore
├── LICENSE
└── README.md
```

---

## Build Instructions

### Using CMake

```
mkdir -p build
cd build
cmake ..
cmake --build . --config Release
```

### Manual (GCC/Clang)

```
g++ -O3 -std=c++20 -Iinclude src/bench_modadd_suite.cpp -o bench_modadd_suite
```

---

## Running Benchmarks

### Extended benchmark suite

```
./bench_modadd_suite
```

### Modular remainder benchmark

```
./bench_modular
```

### ChaCha20-like demo

```
./bench_chacha_reist
```

---

## CSV Output

`bench_modadd_suite` writes:

```
results_modadd_suite.csv
```

Format:

```
modulus,N,scenario,seconds,ops_per_sec
```

---

## Scientific Interpretation

- `%` uses slow multi-cycle CPU divider units  
- REIST uses:
  - integer add  
  - integer compare  
  - conditional ±B correction  

This avoids division and pipeline stalls, yielding significant performance gains.

---

## License

Released under the **MIT License**.

---

## Citation

```
R. Stepan. REIST Crypto Benchmark Suite, 2025.
```