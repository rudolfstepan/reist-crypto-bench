# REIST intrinsic x86 diagnostic archive — 2026-08-03

This index describes the final constant-modulo scaling and fixed-repetition
complexity runs committed with the REIST developer API. Both archives contain
the complete requested matrix; no case was selected or discarded using its
timing result. These are validated developer diagnostics, not additional
manifest-backed paper benchmarks and not end-to-end cryptographic results.

## Shared executable and host

- Binary SHA-256:
  `06f94f22d648415a984129662cbe043ef56cd60a72db13f29c5d035532a5d4be`
- Compiler: GCC 15.2.0 (MSYS2), C++20
- Build: CMake 4.2.3, Ninja 1.13.2, `Release`, warnings as errors
- Main and portable constant-`%` translation units: `-O3 -DNDEBUG`
- AVX2 constant-`%` and REIST backend translation units: additionally
  `-mavx2`
- Explicit SIMD dispatch: enabled; resolved backend: AVX2
- OS: Windows 11 Enterprise, build 26200
- CPU: Intel Core i9-14900K, 24 cores / 32 logical processors
- Reported caches: 32 MiB L2 total, 36 MiB L3
- Physical memory: 63.7 GiB

The executable itself is not committed. Its hash is recorded in both reports,
and it still matched during the final post-run audit. The benchmark sources,
build configuration, validators, and runners are part of the same commit as
these results.

## Constant-`%` versus REIST scaling matrix

- [Summary](20260803_130613_320928_REIST_INTRINSIC_SCALING/SCALING_SUMMARY.md)
- [Consolidated CSV](20260803_130613_320928_REIST_INTRINSIC_SCALING/SCALING_RESULTS.csv)
- Complete matrix: 117/117 cases
- Sizes: 13 points from 1 through 4,000,003 elements
- Moduli: all nine compile-time kernels, including two power-of-two controls
- Work: at least 33,554,432 lane updates per implementation and trial
- Trials: 12, balanced over all six three-way execution orders

The complete-matrix geometric mean of paired medians was 1.2576x for
compiler-optimized constant `%` divided by REIST `automatic`. This aggregate
is descriptive only: 76 cases were positive, 16 mixed, and 25 negative by the
predeclared Q1/Q3 classification. In particular, the power-of-two controls and
small-call overheads are retained and often favor compiler-optimized `%`.

## Fixed-repetition complexity matrix

- [Report](20260803_135345_977433_REIST_INTRINSIC_COMPLEXITY/COMPLEXITY_REPORT.md)
- [Consolidated CSV](20260803_135345_977433_REIST_INTRINSIC_COMPLEXITY/COMPLEXITY_RESULTS.csv)
- Complete matrix: 52/52 cases
- Sizes: powers of two from 16,384 through 67,108,864 elements
- Moduli: 256, 12,289, 1,000,003, and 2,147,483,647
- Fixed repetitions: 16 for every size
- Trials: 12; deterministic case shuffle and affinity to logical CPU 2
- Slope bootstrap: 2,000 resamples per fit

The source-level loops give `Theta(N * R)` time and `Theta(N)` live array
storage on a fixed-width word-RAM model. With fixed `R`, the expected growth is
therefore `Theta(N)` for all three implementations; fixed-width SIMD changes a
constant factor, not the asymptotic class.

The all-size empirical exponents were 1.148–1.214 and the reported last-five
fits 1.062–1.119. The last-five interval crosses the host's cache-to-DRAM
transition: the timed destination-plus-rhs stream grows from approximately
32 MiB to 64 MiB between `N=2^22` and `N=2^23`, while L3 is 36 MiB. At the
largest exact doubling, the measured ratios were 1.923–2.053, local exponents
0.944–1.038, and costs 0.258–0.318 ns/update. This large-memory plateau is
consistent with linear scaling; a finite empirical fit is not itself a proof
of a complexity bound.

At `N=2^26`, constant `%` divided by REIST `automatic` was 0.868x for the
power-of-two control `B=256`, and 1.024x, 1.035x, and 1.033x for the three
non-power-of-two moduli. These are hardware- and workload-dependent constant
factors, not different Big-O classes.

## Reproduction commands

The recorded CMake configuration used the following effective settings. A
fresh output directory must be chosen for every rerun:

```bash
cmake -S . -B build/intrinsic-release -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_CXX_COMPILER=C:/msys64/mingw64/bin/c++.exe \
  -DREIST_WARNINGS_AS_ERRORS=ON \
  -DREIST_ENABLE_EXPLICIT_SIMD=ON
cmake --build build/intrinsic-release --target bench_reist_intrinsics

python scripts/run_reist_intrinsic_scaling.py \
  --binary build/intrinsic-release/bench_reist_intrinsics.exe \
  --result-dir build/intrinsic-scaling-full \
  --target-updates 33554432 \
  --trials 12

python scripts/run_reist_intrinsic_complexity.py \
  --binary build/intrinsic-release/bench_reist_intrinsics.exe \
  --result-dir build/intrinsic-complexity-large \
  --sizes 16384,32768,65536,131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432,67108864 \
  --moduli 256,12289,1000003,2147483647 \
  --repetitions 16 \
  --trials 12 \
  --bootstrap-iterations 2000 \
  --seed 6502 \
  --affinity-cpu 2
```

On single-config Unix-like builds the executable normally has no `.exe`
suffix. Multi-config generators place it below the selected configuration
directory. The effective per-translation-unit optimization flags for this
archive separated the portable baseline from the AVX2 translation units as
listed above.

## Archive integrity and scope

Every case directory contains `command.txt`, `stdout.txt`, `stderr.txt`, and
`results_reist_intrinsics.csv`. All raw CSVs were revalidated against their
invocation parameters, balanced trials, checksums, rates, and recomputed
summary distributions before commit. The consolidated CSV path columns retain
the original absolute build-directory paths as execution provenance; use the
relative links in the Markdown reports to navigate the committed archive.

Preparation, allocation, per-trial copies, result conversion, and validation
are outside the timed region. Accordingly, neither archive establishes a
universal modulo speedup or an end-to-end speedup for a cryptographic system.
