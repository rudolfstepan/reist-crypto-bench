# REIST Crypto Benchmark Suite

This repository provides a small but structured benchmark suite around the
REIST division / signed-remainder idea, focusing on:

- modular arithmetic performance
- cipher-like round function throughput

It is designed as a compact, Git-ready example that can be cited from papers
and extended with additional experiments.

## Structure

- `include/reist_mod.hpp`  
  Header-only helper functions for REIST-style signed remainder and modular add.

- `src/bench_modular.cpp`  
  Microbenchmark comparing classic remainder `T % B` with REIST signed remainder.

- `src/bench_modadd_suite.cpp`  
  Extended modular-add benchmark that sweeps several moduli and writes a CSV
  file with results (suitable for plotting).


- `src/bench_chacha_reist.cpp`  
  ChaCha20-like round function with a hook for REIST-style addition, used to
  measure cipher-like throughput.

- `tests/test_reist.cpp`  
  Simple invariants and consistency checks for the REIST remainder.

- `docs/reist-division.pdf`  
  Theoretical background (REIST Division paper, as provided).

- `docs/BENCHMARKS.md`  
  Additional explanation of the benchmark design and intended interpretation.

- `scripts/run_all.sh`  
  Convenience script to configure, build and run all benchmarks.

- `CMakeLists.txt`  
  Minimal CMake build configuration.

- `.gitignore`, `LICENSE`  
  Standard project housekeeping.

## Build

### Using CMake (recommended)

```bash
mkdir -p build
cd build
cmake ..
cmake --build . --config Release
```

This produces:

- `bench_modular`
- `bench_chacha_reist`

in the `build/` directory.

### Direct compile (example for GCC / Clang)

```bash
g++ -O3 -std=c++20 -Iinclude src/bench_modular.cpp -o bench_modular
g++ -O3 -std=c++20 -Iinclude src/bench_chacha_reist.cpp -o bench_chacha_reist
```

## Running the benchmarks

### Modular benchmark

```bash
./bench_modular              # default B=257, N=5,000,000
./bench_modular 997 10000000 # custom modulus and iterations
```

Output is similar to:

```text
Modular benchmark with B = 257, N = 5000000

--- Modular remainder ---
classic  : 0.123456 s
REIST    : 0.098765 s
Speedup  : 1.25x (classic / REIST)
```

Actual numbers depend on your CPU, compiler and optimization flags.

### Cipher-like benchmark

```bash
./bench_chacha_reist
```

Output is similar to:

```text
--- Modular Addition (32-bit) ---
std_add    : 0.012345 s
reist_add32: 0.011111 s
Speed ratio: 1.11x (std / REIST)

--- ChaCha20-like Cipher-Speed ---
Classic : 0.123456 s (520.0 MB/s)
REIST   : 0.111111 s (578.0 MB/s)
Speed ratio: 1.11x (classic / REIST)
```

Again, the exact numbers depend on your environment.

## Notes and Caveats

- On a standard CPU, we **simulate** the REIST behavior in software.
  The true benefit of the REIST approach is expected in a dedicated hardware
  implementation (e.g., custom ALU, FPGA) where division and complex modular
  logic can be reduced to signed addition and simple comparisons.

- The `bench_chacha_reist` program uses a *ChaCha20-like* round function solely
  as a realistic instruction mix and to approximate cipher-like throughput.
  It is **not** a new cipher and must **not** be used for real cryptographic
  purposes.

- For serious cryptographic evaluation (e.g., NIST test suites, side-channel
  analysis, hardware synthesis), this repository is intended as a starting
  point rather than a complete study.

## How to use this in a paper or repo

You can cite this repository as:

> "REIST Crypto Benchmark Suite (reference implementation and performance
> experiments)."

and link to the Git repository URL once published (e.g., GitHub).

You can then:

- add specific benchmark configurations used in your paper,
- check in result logs (e.g. `results/*.txt`),
- add plots generated from these runs in `docs/plots/`.
