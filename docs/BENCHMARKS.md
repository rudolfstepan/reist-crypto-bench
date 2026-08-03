# REIST benchmark programs

This document describes what each benchmark can and cannot establish. The normative arithmetic convention is the canonical centered interval `[-B/2,B/2)` from the [2026 German paper](<REIST-Division - Eine implementierungsorientierte Formulierung zentrierter Restarithmetik.pdf>), DOI [10.5281/zenodo.21206471](https://doi.org/10.5281/zenodo.21206471). See [PAPER_CORRECTIONS_DE.md](PAPER_CORRECTIONS_DE.md) for the corrected odd-modulus boundaries.

## Interpretation rules

- REIST's target is a persistent additive modular state whose modulus remains stable for an accumulation phase.
- State and incoming increments must be centered before the one-correction loop.
- A full remainder of an unrelated value, modular multiplication, and ARX arithmetic are controls rather than target workloads.
- A benchmark of an isolated kernel is not an end-to-end cryptographic performance claim.
- Exact timings and speedups are valid only for the recorded source revision, compiler, flags, machine, and run conditions.

## `bench_modadd_suite`

Compares a persistent classic update

```text
r = (r + step) % B
```

with a centered state restored by at most one `+/-B` correction. This is the principal target workload. The suite covers several non-power-of-two moduli and writes timing data suitable for plotting.

```bash
./bench_modadd_suite
./bench_modadd_suite 20000000
```

Correctness tests must be kept separate from timing and include even moduli, odd moduli, `B=1`, negative inputs, and canonical midpoint cases. The published timing modulus set alone is not sufficient boundary coverage.

On AArch64, `bench_modadd_suite_neon` adds a four-independent-stream scalar/NEON comparison. It is an architecture-specific companion to `bench_modadd_suite`, not a speedup claim for one dependent serial chain.

## `bench_poly_mod`

Measures coefficient-wise modular addition over arrays. Independent coefficients expose the SIMD potential of signed compare/mask/add operations. The one-correction implementation is valid only when both input coefficient arrays use the documented centered representation.

This kernel is representative of additive layers that can occur in lattice-oriented pipelines. It does not benchmark a complete NTT or complete NTRU, Kyber, or Dilithium implementation; multiplication, reduction, data movement, and surrounding protocol work remain outside this measurement.

## `bench_modular`

Compares full remainder calculations for independent values. There is no persistent state whose interval can be maintained, so this is a neutral or negative control. It must not be described as showing that REIST generally removes division or accelerates arbitrary `%` expressions.

```bash
./bench_modular 257 5000000
```

## `bench_chacha_stream`

This is an RFC 8439 ChaCha20 block-function/ARX control with a published-vector preflight. ChaCha's native addition is modulo a power of two and does not need a reduction against a general modulus. The two timed paths deliberately perform identical ARX arithmetic; the program is not a complete stream-cipher implementation and is not evidence of a REIST speedup for ChaCha20.

Do not use these programs as cryptographic implementations.

## `bench_hashmix`

Exercises multiplication and diffusion with modular reduction. Such workloads do not match the persistent centered-addition invariant and can become slower. This benchmark documents the boundary of applicability rather than a positive REIST use case.

## `bench_montgomery`

This validated benchmark separates three different cases: persistent modular addition, dependent modular multiplication, and a full multiply/add cycle with Montgomery-domain conversions. `REIST centered` labels only the additive path. The `Centered % (not REIST)` multiplication row is a full-remainder reference and must not be reported as a REIST multiplication algorithm.

Montgomery remains a relevant baseline for multiplication chains. A result from the additive subtest does not imply an advantage for RSA, ECC, DSA, modular exponentiation, or any complete cryptographic scheme.

## `bench_barret_reist`

This validated comparison measures classic `%`, one-correction centered addition, and Barrett reciprocal reduction for a dependent additive state. On AVX2 hosts it also reports eight independent streams for both REIST and Barrett. The independent-stream SIMD rows have a different dependency structure from the one-stream rows and must not be compared as though they were the same workload.

Barrett handles a broader reduction step than the bounded centered-addition fast path. Its presence is a baseline, not evidence that either method universally replaces the other.

## `bench_reist_intrinsics` diagnostic

The diagnostic measures one repeated modular batch update through three paths:

| Timed path | Representation and implementation |
|---|---|
| `compiler_const_percent` | conventional non-negative residues and fully optimized C++ `%`, with `B` a compile-time template constant |
| `reist_compiler_auto` | centered residues and the plain C++ one-correction loop selected explicitly |
| `reist_automatic` | centered residues and the public default policy, including safe runtime dispatch to explicit AVX2/NEON when available |

The constant-`%` baseline is emitted in a portable, AVX2, or NEON translation
unit with the same ISA opportunity as the selected REIST implementation. It is
therefore a strong compiler baseline: constant propagation, reciprocal/magic
division lowering, masking for powers of two, unrolling, and
auto-vectorization remain available. The build disables interprocedural
optimization for the diagnostic, but does not hide the modulus from these
kernels or suppress ordinary optimization.

Every trial performs the same number of lane updates from equivalent prepared
state. The default 12 trials cycle through all six permutations of the three
timed paths twice, so each path occupies every timing/cache position equally.
The benchmark reports medians, Q1, Q3, and IQR for the three durations and
three quotients:

| Reported quotient | Meaning when greater than 1 |
|---|---|
| `constant % / REIST automatic` | REIST `automatic` was faster |
| `constant % / REIST compiler_auto` | REIST `compiler_auto` was faster |
| `REIST compiler_auto / automatic` | REIST `automatic` was faster |

There is no required speedup and no performance pass/fail threshold. A central
interval wholly above 1 is described as positive, wholly below 1 as negative,
and one crossing 1 as mixed. All points, including losses, power-of-two
controls, and short-array overheads, remain part of the output. Timing
differences are never correctness criteria.

The fixed compile-time modulus catalog is:

```text
256, 257, 12289, 65536, 65537,
1000000, 1000003, 1000000007, 2147483647 (INT32_MAX)
```

`256` and `65536` are deliberate power-of-two negative controls; an optimizing
compiler can reduce their `%` operation to a mask. Neighboring non-power-of-two
values prevent those favorable cases from being silently generalized. A
modulus outside this catalog is rejected rather than falling back to runtime
`%`.

`automatic` may dispatch to an optional AVX2 or AArch64 NEON backend when that
backend was built and is safe on the current CPU. Otherwise it uses the
portable C++ path. REIST is not defined by SIMD or NEON; those are optional
implementations. `compiler_auto` exposes whether the compiler can optimize the
centered C++ loop in the corresponding ISA translation unit. Generated
assembly must still be inspected before claiming which instructions a
particular compiler emitted.

An independent wide-integer oracle checks every timed result.  The preflight
also covers boundary values, odd and even moduli, `INT32_MAX`, and array tails.
The executable returns skip code 77 for an unoptimized build, because such a
build cannot provide a meaningful performance comparison; absence of an
explicit SIMD backend is not a reason to skip.

This is a prepared, steady-state, repeated modular-addition microbenchmark.
Input normalization, `prepare`, per-trial copies, result conversion, and
validation are outside the timed region. Consequently it does not measure the
end-to-end cost seen by an application that prepares frequently, converts
after every update, or performs too little work to amortize setup and dispatch.
It does not establish that REIST accelerates arbitrary `%` expressions, full
remainders of unrelated values, multiplication-dominated arithmetic, or an
end-to-end cryptographic application. The API is a normal C++ library with
optional ISA intrinsics; it does not add a compiler builtin and does not cause
the compiler to rewrite unrelated source-level `%` expressions.

Historical diagnostic results that used a runtime-`B` `%` denominator remain
provenance data only. They may describe that older comparison, but they are not
evidence that REIST beats fully optimized compile-time-constant `%`. The new
three-path schema-3 output is required for that narrower comparison. The
diagnostic remains excluded from the seven-program manifest runner and
generated paper reports.

One optimized case can be run directly:

```bash
./build/bench_reist_intrinsics --elements 1000003 --repetitions 256 --modulus 1000003 --trials 12
```

`--trials` must be at least six and a multiple of six. For the predeclared
size/modulus matrix, use the Python 3.10+ automatic runner:

```bash
python scripts/run_reist_intrinsic_scaling.py \
  --binary build/bench_reist_intrinsics \
  --result-dir build/intrinsic-scaling-full
```

The result directory must be new or empty. Defaults are all nine moduli, sizes
`1,3,8,17,64,257,1024,4096,16384,65536,262144,1000003,4000003`, at least
8,388,608 lane updates per implementation/trial, and 12 trials. Repetitions
are computed as `ceil(target_updates / elements)`. Optional `--sizes`, `--moduli`,
`--target-updates`, and `--trials` narrow or lengthen the run; `--moduli` still
accepts only the fixed compile-time catalog. The driver creates a directory per
case, validates every schema-3 CSV, retains failed cases, and writes
`SCALING_RESULTS.csv` plus `SCALING_SUMMARY.md`. Its classifications are
descriptive, not acceptance thresholds.

### Fixed-repetition complexity sweep

The throughput matrix above deliberately keeps `N × repetitions` nearly
constant and therefore cannot characterize growth in `N`. For an empirical
complexity sweep, keep repetitions fixed:

```bash
make intrinsic-complexity
```

or invoke `scripts/run_reist_intrinsic_complexity.py` directly with explicit
`--sizes`, `--moduli`, `--repetitions`, and a new `--result-dir`. The runner
randomizes case order deterministically, validates every schema-3 file, and
writes `COMPLEXITY_RESULTS.csv` plus `COMPLEXITY_REPORT.md`. The report contains
log-log OLS slopes with deterministic percentile-bootstrap intervals,
doubling ratios, local exponents, and ns/update. Optional `--affinity-cpu`
pins the runner before its benchmark children are created.

The loop structure gives `Θ(N × R)` time for each measured path on a
fixed-width word-RAM model, and thus `Θ(N)` when this runner holds `R` fixed.
A fixed SIMD width changes the constant factor, not the asymptotic class. The
benchmark's live array storage is also `Θ(N)` (approximately `48 × N` bytes in
the current driver at peak). Empirical slopes do not prove a complexity bound:
a finite fit that crosses cache levels may be above one even when the
large-memory doubling ratio approaches two and ns/update reaches a plateau.

The final 2026-08-03 x86 runs are preserved as complete schema-3 diagnostic
trees, including all raw case files:

- [archive and provenance index](../tests/results/x86/20260803_REIST_INTRINSIC_BENCHMARKS.md);
- [117-case constant-`%`/REIST scaling matrix](../tests/results/x86/20260803_130613_320928_REIST_INTRINSIC_SCALING/SCALING_SUMMARY.md);
- [52-case fixed-repetition complexity matrix](../tests/results/x86/20260803_135345_977433_REIST_INTRINSIC_COMPLEXITY/COMPLEXITY_REPORT.md).

These archives are not inputs to the paper-report generator. A future archive
must preserve the entire timestamped result directory so the relative report
links continue to resolve to raw CSV, stdout, stderr, and command files.

## Diagnostic source artifacts

The repaired Tree/NTT programs and standalone ARM diagnostics are buildable through CMake option `REIST_BUILD_DIAGNOSTICS`, `make diagnostics`, and CTest label `diagnostic`. They have correctness preflights, but are deliberately excluded from the seven primary manifest-runner programs and from generated paper reports. Their timings are diagnostic output, not paper evidence. The tracked root-level `results_modadd_suite_neon.csv` and all manifestless 2025 result files are retained only for provenance and must not supply current report numbers.

The report generator uses successful schema-2 runner manifests as its source of truth. O0, O3, and SIMD must share one `session_id`, host, commit, compiler identity, build system, and working-tree `state_sha256`; independently newest runs are never mixed. Each reportable timed binary is bound to a compile-time sidecar containing its binary hash, compiler/version, exact command/flags, profile, and source/header hashes. The generator revalidates those inputs, resolves recorded paths relative to the manifest directory, verifies stdout/stderr and CSV SHA-256 values, rejects incomplete/failed runs, and rejects quick runs unless `--allow-quick` is explicit. Dirty runs are rejected unless `--allow-dirty` is explicit, in which case the report is prominently non-reportable. `--legacy` is an unverified provenance-only escape hatch.

## Optimization levels

The Make workflow records three configurations:

| Label | Purpose | Typical x86 flags |
|---|---|---|
| O0 | unoptimized diagnostic | `-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O0 -g -fno-tree-vectorize -MMD -MP` |
| O3 | optimized native build | `-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -march=native -MMD -MP` |
| SIMD (x86) | explicit/vector-enabled build | `-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -march=native -mavx2 -MMD -MP` |

The ARM SIMD profile uses `-march=armv8-a+simd`; `make list` prints the selected flags and sources. Generated assembly manifests record the benchmark profile and exact analysis command, including compiler-specific flag translations.

## Compiler-artifact evidence

Whole-file instruction counts are misleading because benchmark drivers contain parsing, timing, I/O, allocation, and unrelated kernels. Artifact analysis therefore reports named functions individually.

For the constant compiler baseline, inspect the stable C-linkage kernels in
the matching translation units, for example:

```bash
ARTIFACT_KERNELS='^compiler_const_percent_[[:digit:]]+_portable$' \
tools/check_compiler_artifacts.sh src/bench_reist_intrinsics_const_portable.cpp

ARTIFACT_KERNELS='^compiler_const_percent_[[:digit:]]+_avx2$' \
ARTIFACT_CXXFLAGS='-Isrc -Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -mavx2' \
tools/check_compiler_artifacts.sh src/bench_reist_intrinsics_const_avx2.cpp
```

The portable and AVX2 files instantiate the same constant-modulus template;
their per-TU ISA flags are the intended independent variable.

The detector recognizes:

- x86 `div`/`idiv` with byte, word, long, or quad suffixes;
- AArch64 `sdiv` and `udiv`;
- exact sign-propagation shifts by 31 or 63 bits;
- multiply-plus-shift sequences as candidates for invariant-divisor strength reduction;
- compare plus conditional selection plus add/sub only inside REIST-named functions as centered-correction candidates.

A candidate is not a proof of compiler intent, and absence of a named kernel can mean that it was inlined or optimized away. The report records such cases as unavailable instead of inferring properties from the rest of the assembly file.
