# Technical clarifications following the early REIST discussion

This document supersedes the provisional 2025 community-feedback appendix. The current reference is the [2026 German paper](<REIST-Division - Eine implementierungsorientierte Formulierung zentrierter Restarithmetik.pdf>), DOI [10.5281/zenodo.21206471](https://doi.org/10.5281/zenodo.21206471). See [PAPER_CORRECTIONS_DE.md](PAPER_CORRECTIONS_DE.md) for the corrected CPU-listing boundaries.

## Compiler optimization

For a compile-time constant divisor, a compiler can lower `%` to a multiply/shift sequence. The classic baseline must therefore not be described categorically as a hardware division. With a runtime divisor, x86 `div`/`idiv` or AArch64 `sdiv`/`udiv` may remain.

The REIST one-correction loop contains no remainder operation when state and inputs are already centered and the modulus remains stable for the accumulation phase. Initial centering of an unrelated value can still require a full remainder calculation.

## SIMD

Common NEON and AVX2 instruction sets have no general integer vector division, while signed comparisons, masks, additions, and subtractions are lane-wise operations. This makes the centered additive kernel vectorizable. It does not prove an advantage for complete algorithms or memory-bound loops.

## Algebraic classification

REIST uses the classical least-absolute representatives of residue classes; it does not define a new ring. The implementation-relevant choice is to maintain a centered representative as persistent state instead of fully reducing an unrelated value after every operation.

A balanced-modulo normalization and REIST can produce the same representative system. The performance opportunity comes from the loop invariant, not a distinct modular algebra.

## Scope

The intended workloads are addition-dominated modular counters, accumulators, and centered add/sub layers. The project does not claim:

- generally division-free integer arithmetic;
- replacement of Montgomery or Barrett reduction;
- speedups for complete RSA, ECC, NTT, or post-quantum schemes;
- benefits for ChaCha/ARX code or diffusion-heavy hash mixing;
- automatic constant-time or side-channel properties.

Benchmark reports must identify compiler, flags, source revision, hardware, and the particular kernel analyzed. The repository's artifact checker therefore performs kernel-specific classification and records a build manifest.
