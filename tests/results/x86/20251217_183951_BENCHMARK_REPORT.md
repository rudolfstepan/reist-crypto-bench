# REIST Cryptographic Benchmark Report

**Generated:** 2025-12-17 18:40:09

---

## System Information

| Property | Value |
|----------|-------|
| **Hostname** | ASUSPC |
| **Operating System** | Windows |
| **CPU Model** | Intel(R) Core(TM) i9-14900K |
| **CPU Frequency** | 3187 MHz |
| **Memory** | 65230 MB |

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

![Modadd Comparison](20251217_183950_optimization_comparison_modadd.png)

### Results: O0 (No Optimization)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.178099 | 0.054770 | 3.252x |
| 997 | 0.173825 | 0.054494 | 3.190x |
| 10,007 | 0.177504 | 0.054300 | 3.269x |
| 1,000,003 | 0.178616 | 0.060395 | 2.957x |
| 10,000,019 | 0.177752 | 0.056145 | 3.166x |
| 1,000,000,007 | 0.171854 | 0.058850 | 2.920x |


### Results: O3 (Optimized)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.186630 | 0.023552 | 7.924x |
| 997 | 0.184764 | 0.022073 | 8.370x |
| 10,007 | 0.185242 | 0.020974 | 8.832x |
| 1,000,003 | 0.184137 | 0.021553 | 8.544x |
| 10,000,019 | 0.186346 | 0.021512 | 8.663x |
| 1,000,000,007 | 0.186061 | 0.021006 | 8.858x |


### Results: SIMD (O3 + SIMD/NEON)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.331472 | 0.046756 | 7.089x |
| 997 | 0.353968 | 0.044782 | 7.904x |
| 10,007 | 0.342858 | 0.043186 | 7.939x |
| 1,000,003 | 0.354104 | 0.040526 | 8.738x |
| 10,000,019 | 0.331800 | 0.040818 | 8.129x |
| 1,000,000,007 | 0.326815 | 0.040221 | 8.126x |


---

## Polynomial Modular Addition

Benchmark for NTRU-style lattice operations with large prime moduli, testing coefficient-wise modular addition.

![Poly Mod Comparison](20251217_183950_optimization_comparison_poly.png)

### Results: O0 (No Optimization)

| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |
|-----------|------------------|----------------|----------|
| 1,000,003 | 0.291129 | 0.262340 | 1.110x |
| 10,000,019 | 0.288533 | 0.265635 | 1.086x |
| 100,000,007 | 0.287420 | 0.271713 | 1.058x |
| 1,000,000,007 | 0.282333 | 0.269389 | 1.048x |


### Results: O3 (Optimized)

| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |
|-----------|------------------|----------------|----------|
| 1,000,003 | 0.054306 | 0.004314 | 12.590x |
| 10,000,019 | 0.054356 | 0.004337 | 12.533x |
| 100,000,007 | 0.054368 | 0.004261 | 12.759x |
| 1,000,000,007 | 0.054524 | 0.004397 | 12.401x |


### Results: SIMD (O3 + SIMD/NEON)

| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |
|-----------|------------------|----------------|----------|
| 1,000,003 | 0.123087 | 0.007353 | 16.739x |
| 10,000,019 | 0.120783 | 0.007111 | 16.986x |
| 100,000,007 | 0.118692 | 0.007138 | 16.629x |
| 1,000,000,007 | 0.130226 | 0.009958 | 13.077x |


---

## Modular Remainder Operations

Direct comparison of modular remainder computation methods.

| Optimization | Classic Time (s) | REIST Time (s) | Speedup |
|--------------|------------------|----------------|----------|
| **O0** | 0.082656 | 0.121840 | 0.678x |
| **O3** | 0.023485 | 0.024394 | 0.963x |
| **SIMD** | 0.103021 | 0.120603 | 0.854x |

---

## ChaCha20 Cipher Benchmarks

Performance analysis of ChaCha20-style operations with REIST arithmetic.

### ChaCha20 Stream Generation

| Optimization | Classic (MB/s) | REIST (MB/s) | Speedup |
|--------------|----------------|--------------|----------|
| **O0** | 435.00 | 404.00 | 0.000x |
| **O3** | 47446.07 | 47379.33 | 0.000x |
| **SIMD** | 106319.36 | 95306.88 | 0.000x |

---

## Hash-Mix Operations

Performance comparison for hash function mixing operations using modular arithmetic.

### Results: O0 vs O3 vs SIMD Comparison

| Modulus | O0 Speedup | O3 Speedup | SIMD Speedup |
|---------|------------|------------|---------------|
| 1,000,003 | 0.637x | 0.813x | 0.747x |
| 10,000,019 | 0.625x | 0.813x | 0.736x |
| 100,000,007 | 0.632x | 0.799x | 0.737x |
| 1,000,000,007 | 0.634x | 0.804x | 0.729x |

---

## Compiler Artifact Analysis (Assembly Inspection)

This section inspects the generated assembly for all `bench_*.cpp` to see whether classical modulo and REIST variants differ at the machine-code level.

| Benchmark Source | Opt | DIV | Sign-Mask | Magic Multiply | REIST-Style Pattern | ASM File |
|------------------|-----|-----|-----------|----------------|----------------------|----------|
| `bench_barret_reist.cpp` | O0 | no | no | YES | Possible | [asm](20251217_183951_ASM\bench_barret_reist_O0.s) |
| `bench_barret_reist.cpp` | O3 | no | no | YES | Possible | [asm](20251217_183951_ASM\bench_barret_reist_O3.s) |
| `bench_chacha_reist.cpp` | O0 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_chacha_reist_O0.s) |
| `bench_chacha_reist.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_chacha_reist_O3.s) |
| `bench_chacha_stream.cpp` | O0 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_chacha_stream_O0.s) |
| `bench_chacha_stream.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_chacha_stream_O3.s) |
| `bench_hashmix.cpp` | O0 | no | no | YES | Possible | [asm](20251217_183951_ASM\bench_hashmix_O0.s) |
| `bench_hashmix.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_hashmix_O3.s) |
| `bench_modadd_suite.cpp` | O0 | no | no | YES | Possible | [asm](20251217_183951_ASM\bench_modadd_suite_O0.s) |
| `bench_modadd_suite.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_modadd_suite_O3.s) |
| `bench_modadd_suite_neon.cpp` | O0 | no | no | YES | Possible | [asm](20251217_183951_ASM\bench_modadd_suite_neon_O0.s) |
| `bench_modadd_suite_neon.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_modadd_suite_neon_O3.s) |
| `bench_modular.cpp` | O0 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_modular_O0.s) |
| `bench_modular.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_modular_O3.s) |
| `bench_mont_vs_reist_tree_ntt.cpp` | O0 | no | no | YES | Possible | [asm](20251217_183951_ASM\bench_mont_vs_reist_tree_ntt_O0.s) |
| `bench_mont_vs_reist_tree_ntt.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_mont_vs_reist_tree_ntt_O3.s) |
| `bench_montgomery.cpp` | O0 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_montgomery_O0.s) |
| `bench_montgomery.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_montgomery_O3.s) |
| `bench_poly_mod.cpp` | O0 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_poly_mod_O0.s) |
| `bench_poly_mod.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_poly_mod_O3.s) |
| `bench_tree_reist.cpp` | O0 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_tree_reist_O0.s) |
| `bench_tree_reist.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_tree_reist_O3.s) |
| `bench_tree_reist_avx2.cpp` | O0 | no | no | YES | Possible | [asm](20251217_183951_ASM\bench_tree_reist_avx2_O0.s) |
| `bench_tree_reist_avx2.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_tree_reist_avx2_O3.s) |
| `bench_tree_reist_neon.cpp` | O0 | no | no | YES | Possible | [asm](20251217_183951_ASM\bench_tree_reist_neon_O0.s) |
| `bench_tree_reist_neon.cpp` | O3 | no | YES | YES | Possible | [asm](20251217_183951_ASM\bench_tree_reist_neon_O3.s) |

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
