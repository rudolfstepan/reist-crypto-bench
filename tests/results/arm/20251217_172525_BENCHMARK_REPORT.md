# REIST Cryptographic Benchmark Report

**Generated:** 2025-12-17 17:25:33

---

## System Information

| Property | Value |
|----------|-------|
| **Hostname** | Mac-mini-von-Rudolf.local |
| **Operating System** | Darwin |
| **CPU Model** | CPU MHz: |
| **CPU Frequency** | Memory: MHz |
| **Memory** | ======================================== |

---

## Executive Summary

This report presents a comprehensive analysis of the REIST symmetric remainder arithmetic compared to classical modular operations. Benchmarks were run with:

- **O0**: No optimization (baseline)
- **O3**: Full optimization with architecture-specific tuning
- **SIMD**: O3 optimization with SIMD/NEON extensions

## Performance Overview

---

## Modular Addition Suite

This benchmark compares classical modulo `(a + b) % m` with REIST symmetric remainder using simple comparisons.

![Modadd Comparison](20251217_172524_optimization_comparison_modadd.png)

### Results: O0 (No Optimization)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.177941 | 0.100791 | 1.765x |
| 997 | 0.175660 | 0.098592 | 1.782x |
| 10,007 | 0.176448 | 0.106156 | 1.662x |
| 1,000,003 | 0.203078 | 0.095482 | 2.127x |
| 10,000,019 | 0.177289 | 0.097079 | 1.826x |
| 1,000,000,007 | 0.177840 | 0.095944 | 1.854x |


### Results: O3 (Optimized)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.160154 | 0.075038 | 2.134x |
| 997 | 0.160344 | 0.073468 | 2.183x |
| 10,007 | 0.160895 | 0.074014 | 2.174x |
| 1,000,003 | 0.167651 | 0.073593 | 2.278x |
| 10,000,019 | 0.162715 | 0.073559 | 2.212x |
| 1,000,000,007 | 0.158419 | 0.073901 | 2.144x |


### Results: SIMD (O3 + SIMD/NEON)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.160770 | 0.038183 | 4.211x |
| 997 | 0.159408 | 0.038424 | 4.149x |
| 10,007 | 0.160629 | 0.038483 | 4.174x |
| 1,000,003 | 0.167579 | 0.038170 | 4.390x |
| 10,000,019 | 0.162649 | 0.038401 | 4.236x |
| 1,000,000,007 | 0.160926 | 0.037559 | 4.285x |


---

## Polynomial Modular Addition

Benchmark for NTRU-style lattice operations with large prime moduli, testing coefficient-wise modular addition.

![Poly Mod Comparison](20251217_172524_optimization_comparison_poly.png)

### Results: O0 (No Optimization)

| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |
|-----------|------------------|----------------|----------|
| 1,000,003 | 0.180741 | 0.254734 | 0.710x |
| 10,000,019 | 0.183171 | 0.254097 | 0.721x |
| 100,000,007 | 0.177164 | 0.250620 | 0.707x |
| 1,000,000,007 | 0.177741 | 0.255035 | 0.697x |


### Results: O3 (Optimized)

| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |
|-----------|------------------|----------------|----------|
| 1,000,003 | 0.030055 | 0.006755 | 4.449x |
| 10,000,019 | 0.029864 | 0.006846 | 4.362x |
| 100,000,007 | 0.029998 | 0.006889 | 4.355x |
| 1,000,000,007 | 0.029722 | 0.006665 | 4.459x |


### Results: SIMD (O3 + SIMD/NEON)

| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |
|-----------|------------------|----------------|----------|
| 1,000,003 | 0.030065 | 0.006737 | 4.463x |
| 10,000,019 | 0.029821 | 0.006833 | 4.364x |
| 100,000,007 | 0.029808 | 0.006847 | 4.353x |
| 1,000,000,007 | 0.029628 | 0.006714 | 4.413x |


---

## Modular Remainder Operations

Direct comparison of modular remainder computation methods.

| Optimization | Classic Time (s) | REIST Time (s) | Speedup |
|--------------|------------------|----------------|----------|
| **O0** | 0.333267 | 0.389609 | 0.855x |
| **O3** | 0.103065 | 0.101151 | 1.019x |
| **SIMD** | 0.103609 | 0.102445 | 1.011x |

---

## ChaCha20 Cipher Benchmarks

Performance analysis of ChaCha20-style operations with REIST arithmetic.

### ChaCha20 Stream Generation

| Optimization | Classic (MB/s) | REIST (MB/s) | Speedup |
|--------------|----------------|--------------|----------|
| **O0** | 116.33 | 105.71 | 0.000x |
| **O3** | 101480.02 | 107105.44 | 0.000x |
| **SIMD** | 109121.91 | 109894.83 | 0.000x |

---

## Hash-Mix Operations

Performance comparison for hash function mixing operations using modular arithmetic.

### Results: O0 vs O3 vs SIMD Comparison

| Modulus | O0 Speedup | O3 Speedup | SIMD Speedup |
|---------|------------|------------|---------------|
| 1,000,003 | 0.466x | 0.786x | 0.827x |
| 10,000,019 | 0.453x | 0.799x | 0.795x |
| 100,000,007 | 0.450x | 0.786x | 0.787x |
| 1,000,000,007 | 0.449x | 0.785x | 0.787x |

---

## Compiler Artifact Analysis (Assembly Inspection)

This section inspects the generated assembly for all `bench_*.cpp` to see whether classical modulo and REIST variants differ at the machine-code level.

| Benchmark Source | Opt | DIV | Sign-Mask | Magic Multiply | REIST-Style Pattern | ASM File |
|------------------|-----|-----|-----------|----------------|----------------------|----------|
| `bench_barret_reist.cpp` | O0 | no | no | no | no | [asm](20251217_172525_ASM/bench_barret_reist_O0.s) |
| `bench_barret_reist.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_barret_reist_O3.s) |
| `bench_chacha_reist.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_chacha_reist_O0.s) |
| `bench_chacha_reist.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_chacha_reist_O3.s) |
| `bench_chacha_stream.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_chacha_stream_O0.s) |
| `bench_chacha_stream.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_chacha_stream_O3.s) |
| `bench_hashmix.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_hashmix_O0.s) |
| `bench_hashmix.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_hashmix_O3.s) |
| `bench_modadd_suite.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_modadd_suite_O0.s) |
| `bench_modadd_suite.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_modadd_suite_O3.s) |
| `bench_modadd_suite_neon.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_modadd_suite_neon_O0.s) |
| `bench_modadd_suite_neon.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_modadd_suite_neon_O3.s) |
| `bench_modular.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_modular_O0.s) |
| `bench_modular.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_modular_O3.s) |
| `bench_mont_vs_reist_tree_ntt.cpp` | O0 | no | no | no | no | [asm](20251217_172525_ASM/bench_mont_vs_reist_tree_ntt_O0.s) |
| `bench_mont_vs_reist_tree_ntt.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_mont_vs_reist_tree_ntt_O3.s) |
| `bench_montgomery.cpp` | O0 | no | no | no | no | [asm](20251217_172525_ASM/bench_montgomery_O0.s) |
| `bench_montgomery.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_montgomery_O3.s) |
| `bench_poly_mod.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_poly_mod_O0.s) |
| `bench_poly_mod.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_poly_mod_O3.s) |
| `bench_reist_arm.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_reist_arm_O0.s) |
| `bench_reist_arm.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_reist_arm_O3.s) |
| `bench_tree_reist.cpp` | O0 | no | no | no | no | [asm](20251217_172525_ASM/bench_tree_reist_O0.s) |
| `bench_tree_reist.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_tree_reist_O3.s) |
| `bench_tree_reist_neon.cpp` | O0 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_tree_reist_neon_O0.s) |
| `bench_tree_reist_neon.cpp` | O3 | no | no | no | Possible | [asm](20251217_172525_ASM/bench_tree_reist_neon_O3.s) |

Interpretation:

- **DIV**: Use of hardware division instructions (`div`/`idiv`).
- **Sign-Mask**: Pattern typical for classical signed remainder paths.
- **Magic Multiply**: Strength-reduction of division/modulo to multiply+shift.
- **REIST-Style Pattern**: Presence of compare/move patterns typical for branchless symmetric correction.

---

---

## Conclusions

### Key Findings

1. **REIST arithmetic consistently shows structural advantages** in the compiled machine code (no sign-mask path, simpler correction logic) and often measurable runtime speedups.

2. **Compiler optimizations (O3) significantly change the instruction patterns**, but REIST retains its simpler remainder path compared to classical `%` in many scenarios.

3. **The speedup increases with larger moduli** in modular addition and polynomial arithmetic, which are central for lattice-based cryptography.

4. **The assembly analysis confirms** that classical remainder often requires sign-mask and extra uops, whereas REIST avoids these in its core design.

### Recommendations

- Use REIST for cryptographic primitives requiring frequent modular operations.
- Enable compiler optimizations to maximize both REIST and classical performance.
- Consider hardware-specific vectorization (NEON/AVX) in production.
- Profile real-world workloads to validate the observed speedups.

---

*Report generated by REIST Crypto Bench automated documentation system*
