# REIST Benchmark Evaluation on ARMv8-A (NEON Optimized)

This document summarizes the performance evaluation of the REIST arithmetic reduction method on an **ARMv8-A (aarch64)** system with enabled **NEON SIMD** acceleration.  
All benchmarks were executed with adaptive timing (≥20 ms per measurement) to minimize jitter and ensure realistic runtime characteristics.

The results demonstrate the distinct performance profile of REIST across multiple workload classes:

- synthetic modular-add counters  
- polynomial modular arithmetic (NTRU/RLWE style)  
- full remainder operations  
- ARX-based workloads (ChaCha20)  
- hash-based mixers  
- ARM scalar vs ARM NEON SIMD execution  

The ARM NEON results are particularly significant, as they demonstrate that REIST maps extremely well onto SIMD architectures, whereas classical `%` modulo operations do not.

---

# 1. Modular Add Microbenchmark (Synthetic Counter)

Form:  
```
r = (r + step) % B
```

This workload is synthetic and heavily influenced by compiler optimizations.  
Nevertheless, it demonstrates pure ALU-bound behavior.

### Results (ARM)

| B | classic_mod | reist_sym | Speedup |
|---|-------------|------------|---------|
| 257 | 0.118233 s | 0.047403 s | **2.49×** |
| 997 | 0.117991 s | 0.047772 s | **2.47×** |
| 10 007 | 0.117943 s | 0.047424 s | **2.49×** |
| 1 000 003 | 0.117945 s | 0.046761 s | **2.52×** |
| 10 000 019 | 0.118009 s | 0.046442 s | **2.54×** |
| 1 000 000 007 | 0.117950 s | 0.046592 s | **2.53×** |

---

# 2. Polynomial Modular Addition (Cryptographic Workload)

Form:  
```
c[i] = (a[i] + b[i]) % q
```

### Results

| q | classic | REIST | Speedup |
|---|---------|--------|----------|
| 1 000 003 | 0.091301 s | 0.015130 s | **6.03×** |
| 10 000 019 | 0.091082 s | 0.015136 s | **6.02×** |
| 100 000 007 | 0.091191 s | 0.015112 s | **6.03×** |
| 1 000 000 007 | 0.091132 s | 0.015116 s | **6.03×** |

---

# 3. Modular Remainder Benchmark

### Results

| Mode | Time | Speedup |
|------|-------|---------|
| classic | 0.039699 s | — |
| REIST | 0.040463 s | **0.98×** |

---

# 4. ChaCha20-Style Benchmarks

### Results

| Test | classic | REIST | Speed Ratio |
|------|---------|-------|-------------|
| add32 | — | — | ~1.75× |
| ChaCha block | 0.067297 s | 0.067102 s | **1.00×** |
| ChaCha keystream | 0.069166 s | 0.069293 s | **1.00×** |

---

# 5. Hashmix Benchmark

### Results

| M | classic | REIST | speedup |
|---|---------|--------|----------|
| 1 000 003 | 0.5746 s | 0.6773 s | **0.85×** |
| 10 000 019 | 0.5437 s | 0.6469 s | **0.84×** |
| 100 000 007 | 0.5226 s | 0.6336 s | **0.82×** |
| 1 000 000 007 | 0.4970 s | 0.6120 s | **0.81×** |

---

# 6. ARMv8-A: Scalar vs NEON SIMD

### q = 1 000 003

| Mode | Time | reps |
|--------|--------|-------|
| classic scalar | 0.039969 s | 10240 |
| REIST scalar | 0.037346 s | 163840 |
| REIST NEON | 0.020100 s | 81920 |

Speedups:

- REIST scalar vs classic: **1.07×**
- REIST NEON vs classic: **1.99×**
- NEON vs REIST scalar: **1.86×**

---

# 7. Summary

| Workload | REIST Advantage | Notes |
|----------|----------------|--------|
| Modular Add (synthetic) | **2.5×** | ALU-bound microbenchmark |
| Polynomial Add (NTRU-style) | **6×** | real cryptographic workload |
| Full remainder | = | not target of REIST |
| ChaCha / ARX | = | no modulo operations |
| Hashmix | <1× | not REIST-style workflow |
| ARM NEON | **2×** | REIST is efficiently vectorizable |

