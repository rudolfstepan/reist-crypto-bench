# REIST Division benchmark suite

This repository evaluates the implementation pattern described in Rudolf Stepan's 2026 paper on REIST Division: keep an additive modular state in a centered residue interval and restore that interval after every update with at most one `+/-B` correction.

REIST is not a new ring, a general-purpose division algorithm, or a cryptographic primitive. Its intended fast path is narrower: repeated modular addition or subtraction with a positive modulus that remains stable for an accumulation phase and with centered inputs. Montgomery and Barrett reduction remain the appropriate tools for multiplication-dominated modular arithmetic.

## Paper and FPGA provenance links

- [German paper: *REIST-Division - Eine implementierungsorientierte Formulierung zentrierter Restarithmetik*](<docs/REIST-Division - Eine implementierungsorientierte Formulierung zentrierter Restarithmetik.pdf>)
- DOI: [10.5281/zenodo.21206471](https://doi.org/10.5281/zenodo.21206471)
- [Implementation note and paper errata](docs/PAPER_CORRECTIONS_DE.md)
- [Historical English paper](docs/reist-division.pdf)

The actively maintained FPGA implementation lives in [`rudolfstepan/6502-sbc-fpga`](https://github.com/rudolfstepan/6502-sbc-fpga). The immutable published provenance snapshot cited here is pinned to commit [`dfe49fb15bebca66214de3c9d0eb7d333d980d13`](https://github.com/rudolfstepan/6502-sbc-fpga/commit/dfe49fb15bebca66214de3c9d0eb7d333d980d13):

- [REIST RTL](https://github.com/rudolfstepan/6502-sbc-fpga/tree/dfe49fb15bebca66214de3c9d0eb7d333d980d13/rtl/reist)
- [core testbench](https://github.com/rudolfstepan/6502-sbc-fpga/blob/dfe49fb15bebca66214de3c9d0eb7d333d980d13/sim/tb/tb_reist_core.vhd)
- [benchmark testbench](https://github.com/rudolfstepan/6502-sbc-fpga/blob/dfe49fb15bebca66214de3c9d0eb7d333d980d13/sim/tb/tb_reist_bench.vhd)
- [Tang Primer 20K Gowin projects, constraints, and generated IP](https://github.com/rudolfstepan/6502-sbc-fpga/tree/dfe49fb15bebca66214de3c9d0eb7d333d980d13/boards/tang_primer_20k/reist)

That historical pin identifies the published files, but it is not a clean checkout-and-build recipe: its Gowin projects still contain machine-local absolute `D:/` paths and it does not contain the later `build_reist.tcl` workflow. The active repository URL above is therefore the source for ongoing FPGA work. A new buildable pin must only be published after the relative-path Gowin projects and scripts have themselves been committed and pushed.

## Canonical convention

For integers `T` and `B > 0`, the canonical decomposition is

```text
T = q*B + r,     -B/2 <= r < B/2.
```

For even `B`, the midpoint is represented as `-B/2`, not `+B/2`. For odd `B`, the integer representatives are `-(B-1)/2 ... +(B-1)/2`. A safe one-step canonical correction is:

```cpp
half = B / 2;           // floor(B/2)
lo   = -half;
hi   = B - half;        // ceil(B/2)
s    = r + x;           // r and x must already be centered

if (s >= hi)      s -= B;
else if (s < lo)  s += B;
```

The PDF's CPU Listings 2-4 retain the former mirrored boundary checks and are incorrect for odd moduli. The FPGA listing uses the correct `floor/ceil` boundaries. See [the implementation note](docs/PAPER_CORRECTIONS_DE.md) before treating the listings as reference code.

## What is measured

The manifest runner has seven primary report inputs. The table also lists the
separately reported ARM-only NEON companion; together they provide positive,
neutral, and negative controls:

| Benchmark | Purpose | Expected interpretation |
|---|---|---|
| `bench_modadd_suite` | persistent modular accumulator | target workload for one-correction REIST updates |
| `bench_modadd_suite_neon` (ARM only) | four independent modular accumulators | architecture-specific scalar/NEON companion to the same workload |
| `bench_poly_mod` | coefficient-wise modular addition | data-parallel target workload when inputs are centered |
| `bench_modular` | independent full remainders | neutral/negative control; no persistent state to exploit |
| `bench_chacha_stream` | ARX-style operations | control; no general-modulus reduction to remove |
| `bench_hashmix` | multiplication and diffusion | negative control; REIST can add overhead |
| `bench_montgomery` | comparison with Montgomery arithmetic | separates additive from multiplication-dominated use cases |
| `bench_barret_reist` | Barrett, classic `%`, and centered addition | compares dependent addition and independent SIMD-stream baselines without conflating them |

Cryptographic algorithms are used as demanding sources of arithmetic kernels. Results from isolated additions must not be presented as end-to-end speedups for NTRU, Kyber, Dilithium, RSA, ECC, ChaCha20, or any other complete scheme.

## Build and test

### CMake

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DREIST_WARNINGS_AS_ERRORS=ON
cmake --build build --parallel
ctest --test-dir build --output-on-failure
```

### Make benchmark workflow

The runner requires Python 3.10 or newer; plotting/report generation additionally requires Matplotlib (`python -m pip install matplotlib`).

```bash
make validated # build the seven primary O0/O3/SIMD programs (+ NEON on ARM)
make diagnostics # build the repaired Tree/NTT/ARM diagnostic targets
make all       # build both groups and run unit tests
make smoke     # quick O3 correctness-preflight run
make run       # full O0/O3/SIMD benchmark runs with manifests
make report    # generate the Markdown report from recorded results
```

The Make profiles use the following complete x86 flag sets (Clang spells the
O0 vectorizer disable as `-fno-vectorize -fno-slp-vectorize`):

| Profile | Exact flags |
|---|---|
| O0 | `-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O0 -g -fno-tree-vectorize -MMD -MP` |
| O3 | `-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -march=native -MMD -MP` |
| SIMD | `-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -march=native -mavx2 -MMD -MP` |

On AArch64 the SIMD code-generation suffix is `-O3 -DNDEBUG -march=armv8-a+simd`; the complete recorded command also includes the common prefix and `-MMD -MP`.

Benchmark output and schema-2 run manifests are written below `tests/results/x86/` or `tests/results/arm/`. Every Make-built timed binary has a compile-time `.build.json` sidecar containing its binary hash, compiler/version, exact command and flags, profile, and source/header hashes. The runner revalidates that sidecar and stops at the first missing, stale, or failing program, so a partial or differently built run is not silently reported as complete. Make deliberately rebuilds timed binaries when a run target is invoked, preventing a changed `CXX` or flag variable from inheriting a stale sidecar.

Use `make list` to print the compiler, architecture, flags, and selected sources before comparing runs. Timing results are machine-, compiler-, and flag-specific; exact speedup values are not correctness criteria.

The repaired Tree/NTT/ARM programs are available as CMake targets under `REIST_BUILD_DIAGNOSTICS` (enabled by default), as `make diagnostics`, and as CTest tests labelled `diagnostic`. They are correctness-checked diagnostics, but remain excluded from the seven-program manifest runner and from paper reports. Likewise, the tracked root-level `results_modadd_suite_neon.csv` and manifestless 2025 files under `tests/results/` are provenance-only legacy data, not current/reportable measurements.

To separate the CTest groups explicitly:

```bash
cmake -S . -B build -DREIST_BUILD_DIAGNOSTICS=ON
cmake --build build --parallel
ctest --test-dir build -L 'correctness|smoke' --output-on-failure
ctest --test-dir build -L diagnostic --output-on-failure
```

The reporter accepts only schema-2 complete O0/O3/SIMD sets with one shared `session_id`, host, commit, compiler identity, build system, and working-tree `state_sha256`. At report generation it revalidates the unchanged current repository state, still-present timed binaries and build sidecars, resolves `stdout`, `stderr`, `artifact_directory`, and CSV paths relative to each successful runner manifest, and verifies their recorded SHA-256 values. The embedded sidecar remains an archival integrity record, but regenerating a fully verified report requires the matching binary and sidecar in the recorded repository path; the results directory is not a self-contained binary archive. A dirty worktree is rejected by default; `--allow-dirty` creates a prominently marked **NON-REPORTABLE DIRTY WORKTREE** report. Quick runs likewise require explicit `--allow-quick`; manifestless legacy data require `--legacy` and are marked unverified.

## Compiler artifact inspection

The report generator and standalone checker inspect named benchmark kernels rather than classifying an entire assembly file from any incidental instruction:

```bash
tools/check_compiler_artifacts.sh src/bench_modadd_suite.cpp
tools/check_compiler_artifacts.sh src/bench_poly_mod.cpp
```

Optional environment variables:

```bash
ARTIFACT_KERNELS='^(classic_modadd_runtime_kernel|reist_modadd_runtime_kernel)$' \
ARTIFACT_CXXFLAGS='-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -march=native' \
tools/check_compiler_artifacts.sh src/bench_modadd_suite.cpp
```

Each run records the compiler version, exact analysis command, flags, source hash, architecture, and analyzed function in `compiler_reports/manifest.tsv`. Pattern matches are evidence about that emitted kernel only:

- x86 `div`/`idiv` variants and AArch64 `sdiv`/`udiv` are hardware-division instructions;
- a multiply plus a shift is reported only as a strength-reduction candidate, not proof of modulo lowering;
- a centered-correction candidate requires a REIST-named kernel plus compare, conditional selection, and add/sub operations;
- source-level branchlessness is not by itself a constant-time or side-channel claim.

The report generator records a JSON build manifest beside generated assembly. It records both the Makefile profile and the exact source-assembly command, including any compiler-specific spelling used to disable vectorization.

## Correctness requirements

Implementations and tests should enforce:

- `B > 0`;
- exact canonical range and even-modulus tie behavior;
- centered state and centered input before the one-correction loop;
- re-centering when the modulus changes;
- equivalence to a non-negative modulo reference for negative as well as positive inputs;
- sufficiently wide intermediates or explicit overflow guards;
- identical selected convention across scalar, SIMD, and FPGA implementations.

Consumers that require residues in `[0,B)` must convert the centered result at the API boundary. A branchless correction is implementable, but constant-time behavior depends on the compiler and target and is not claimed by the paper.

## Documentation

- [Benchmark descriptions](docs/BENCHMARKS.md)
- [Historical, non-reportable Apple M2 Pro diagnostic](docs/M2_PRO_BENCHMARK.md)
- [German implementation note / errata](docs/PAPER_CORRECTIONS_DE.md)
- Timestamped raw data and generated reports under `tests/results/`

## Citation

```bibtex
@article{stepan2026reist,
  title  = {REIST-Division: Eine implementierungsorientierte Formulierung zentrierter Restarithmetik: Theorie, Architekturanalyse und empirische Evaluation auf ARMv8-A, x86-64 und FPGA},
  author = {Rudolf Stepan},
  year   = {2026},
  doi    = {10.5281/zenodo.21206471},
  url    = {https://doi.org/10.5281/zenodo.21206471}
}
```

## License

See [LICENSE](LICENSE).
