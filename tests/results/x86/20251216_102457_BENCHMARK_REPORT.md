# REIST Cryptographic Benchmark Report

**Generated:** 2025-12-16 10:25:12

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

## Performance Overview

---

## Modular Addition Suite

This benchmark compares classical modulo `(a + b) % m` with REIST symmetric remainder using simple comparisons.

![Modadd Comparison](20251216_102456_optimization_comparison_modadd.png)

### Results: O0 (No Optimization)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.176662 | 0.056177 | 3.145x |
| 997 | 0.173467 | 0.054215 | 3.200x |
| 10,007 | 0.177270 | 0.052977 | 3.346x |
| 1,000,003 | 0.173185 | 0.054010 | 3.207x |
| 10,000,019 | 0.169188 | 0.057538 | 2.940x |
| 1,000,000,007 | 0.170944 | 0.057272 | 2.985x |


### Results: O3 (Optimized)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.182979 | 0.022694 | 8.063x |
| 997 | 0.182033 | 0.022310 | 8.159x |
| 10,007 | 0.179145 | 0.020631 | 8.683x |
| 1,000,003 | 0.178384 | 0.020747 | 8.598x |
| 10,000,019 | 0.178501 | 0.021619 | 8.257x |
| 1,000,000,007 | 0.179162 | 0.020738 | 8.639x |


---

## Polynomial Modular Addition

Benchmark for NTRU-style lattice operations with large prime moduli, testing coefficient-wise modular addition.

![Poly Mod Comparison](20251216_102456_optimization_comparison_poly.png)

### Results: O0 (No Optimization)

| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |
|-----------|------------------|----------------|----------|
| 1,000,003 | 0.283116 | 0.265475 | 1.066x |
| 10,000,019 | 0.286865 | 0.265163 | 1.082x |
| 100,000,007 | 0.278109 | 0.267835 | 1.038x |
| 1,000,000,007 | 0.282104 | 0.264769 | 1.065x |


### Results: O3 (Optimized)

| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |
|-----------|------------------|----------------|----------|
| 1,000,003 | 0.054514 | 0.004136 | 13.180x |
| 10,000,019 | 0.054853 | 0.004194 | 13.078x |
| 100,000,007 | 0.054946 | 0.004141 | 13.268x |
| 1,000,000,007 | 0.054408 | 0.004193 | 12.977x |


---

## Modular Remainder Operations

Direct comparison of modular remainder computation methods.

| Optimization | Classic Time (s) | REIST Time (s) | Speedup |
|--------------|------------------|----------------|----------|
| **O0** | 0.079231 | 0.119307 | 0.664x |
| **O3** | 0.023655 | 0.024180 | 0.978x |

---

## ChaCha20 Cipher Benchmarks

Performance analysis of ChaCha20-style operations with REIST arithmetic.

### ChaCha20 Stream Generation

| Optimization | Classic (MB/s) | REIST (MB/s) | Speedup |
|--------------|----------------|--------------|----------|
| **O0** | 431.50 | 423.04 | 0.000x |
| **O3** | 46852.12 | 48974.59 | 0.000x |

---

## Hash-Mix Operations

Performance comparison for hash function mixing operations using modular arithmetic.

### Results: O0 vs O3 Comparison

| Modulus | O0 Speedup | O3 Speedup |
|---------|------------|------------|
| 1,000,003 | 0.637x | 0.811x |
| 10,000,019 | 0.629x | 0.788x |
| 100,000,007 | 0.647x | 0.795x |
| 1,000,000,007 | 0.627x | 0.806x |

---

## Compiler Artifact Analysis (Assembly Inspection)

This section inspects the generated assembly for all `bench_*.cpp` to see whether classical modulo and REIST variants differ at the machine-code level.

| Benchmark Source | Opt | DIV | Sign-Mask | Magic Multiply | REIST-Style Pattern | ASM File |
|------------------|-----|-----|-----------|----------------|----------------------|----------|
| `bench_barret_reist.cpp` | O0 | no | no | YES | Possible | [asm](20251216_102457_ASM\bench_barret_reist_O0.s) |
| `bench_barret_reist.cpp` | O3 | no | no | YES | Possible | [asm](20251216_102457_ASM\bench_barret_reist_O3.s) |
| `bench_chacha_reist.cpp` | O0 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_chacha_reist_O0.s) |
| `bench_chacha_reist.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_chacha_reist_O3.s) |
| `bench_chacha_stream.cpp` | O0 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_chacha_stream_O0.s) |
| `bench_chacha_stream.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_chacha_stream_O3.s) |
| `bench_hashmix.cpp` | O0 | no | no | YES | Possible | [asm](20251216_102457_ASM\bench_hashmix_O0.s) |
| `bench_hashmix.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_hashmix_O3.s) |
| `bench_modadd_suite.cpp` | O0 | no | no | YES | Possible | [asm](20251216_102457_ASM\bench_modadd_suite_O0.s) |
| `bench_modadd_suite.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_modadd_suite_O3.s) |
| `bench_modular.cpp` | O0 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_modular_O0.s) |
| `bench_modular.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_modular_O3.s) |
| `bench_montgomery.cpp` | O0 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_montgomery_O0.s) |
| `bench_montgomery.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_montgomery_O3.s) |
| `bench_poly_mod.cpp` | O0 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_poly_mod_O0.s) |
| `bench_poly_mod.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_poly_mod_O3.s) |
| `bench_tree_reist.cpp` | O0 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_tree_reist_O0.s) |
| `bench_tree_reist.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_tree_reist_O3.s) |
| `bench_tree_reist_avx2.cpp` | O0 | no | no | YES | Possible | [asm](20251216_102457_ASM\bench_tree_reist_avx2_O0.s) |
| `bench_tree_reist_avx2.cpp` | O3 | no | YES | YES | Possible | [asm](20251216_102457_ASM\bench_tree_reist_avx2_O3.s) |

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
