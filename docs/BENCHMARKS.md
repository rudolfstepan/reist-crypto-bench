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

The detector recognizes:

- x86 `div`/`idiv` with byte, word, long, or quad suffixes;
- AArch64 `sdiv` and `udiv`;
- exact sign-propagation shifts by 31 or 63 bits;
- multiply-plus-shift sequences as candidates for invariant-divisor strength reduction;
- compare plus conditional selection plus add/sub only inside REIST-named functions as centered-correction candidates.

A candidate is not a proof of compiler intent, and absence of a named kernel can mean that it was inlined or optimized away. The report records such cases as unavailable instead of inferring properties from the rest of the assembly file.
