# Historical Apple M2 Pro scaling diagnostic (not reportable)

This document preserves one old multicore NEON diagnostic run on an Apple Mac mini M2 Pro. It predates the repaired NEON-MT path and the current manifest/hash workflow. Because source revision, compiler version, and raw output are missing, these values are **historical provenance only: they are not reportable measurements and not evidence for the [2026 German REIST paper](<REIST-Division - Eine implementierungsorientierte Formulierung zentrierter Restarithmetik.pdf>)**, DOI [10.5281/zenodo.21206471](https://doi.org/10.5281/zenodo.21206471).

## System and build

- Machine: Apple Mac mini, 16 GB unified memory
- SoC: Apple M2 Pro
- Threads: 10
- Architecture: AArch64
- SIMD: NEON / ASIMD
- Operating system: macOS
- Compiler: `clang++`
- Recorded flags: `-O3 -mcpu=apple-m2 -march=armv8.5-a`
- Total iterations: 100,000,000, distributed across thread-local workloads

Any new diagnostic run needs a successful runner/build manifest, source revision, compiler version and flags, raw output, and clearly equal work. The table below lacks that chain of evidence and must not be copied into a current benchmark report.

## Results

| Diagnostic kernel | Scalar | NEON | Ratio (scalar / NEON) |
|---|---:|---:|---:|
| Pure addition | 19.881 ms | 6.100 ms | 3.26x |
| Barrett approximation, `B=13` | 41.222 ms | 8.332 ms | 4.95x |
| Full reduction plus centering | 80.768 ms | 24.242 ms | 3.33x |
| Memory-bandwidth control | 5.870 ms | 1.682 ms | 3.49x |

The first, second, and fourth rows are controls; they are not all REIST kernels. It would therefore be incorrect to summarize this table as a universal "3-5x REIST speedup." The old log reported 3.33x for its centered-reduction row, but that number is not reproducibly tied to the repaired source and is not reportable.

## Interpretation

- The branchless centered-reduction shape can map to NEON lanes and combine with thread-level parallelism.
- The memory control shows that part of the observed ratio belongs to the platform and workload organization, not solely to arithmetic.
- The Barrett row confirms that another regular arithmetic-dense kernel can scale at least as well; it is not evidence that REIST replaces Barrett reduction.
- These measurements do not establish performance on other ARMv8-A systems, other compilers, or memory-bound application code.
- They do not imply speedups for full NTTs, complete lattice schemes, RSA/ECC, hashes, or stream ciphers.

## Scope

The relevant REIST fast path is a persistent centered additive state with a positive, phasenweise stable modulus and already centered inputs. Montgomery or Barrett reduction remains appropriate for multiplication-dominated paths. Full unrelated remainder calculations and ARX code provide no comparable state invariant.

The canonical interval and the correction to the paper's CPU listings are documented in [PAPER_CORRECTIONS_DE.md](PAPER_CORRECTIONS_DE.md).
