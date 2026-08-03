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

## Simple developer API

Application code does not need to implement or even expose the centered-range
mathematics.  `reist_intrinsics.hpp` binds values to a validated modulus,
normalizes application input once, and converts results back to the familiar
non-negative remainder:

```cpp
#include <cstdint>

#include "reist_intrinsics.hpp"

reist::modulus_i32 mod(1'000'003);
const std::int32_t sum = mod.add(17, 29).remainder(); // [0, B)

auto state = mod.value(0);
const auto step = mod.value(3);

state = mod.add(state, step);
const std::int32_t result = state.remainder(); // always in [0, B)
```

The same interface owns and prepares arrays, then selects its implementation
automatically:

```cpp
auto states = mod.prepare(input_values);
const auto increments = mod.prepare(input_increments);

mod.add_inplace(states, increments); // automatic backend selection
const auto results = mod.residues(states);
```

The default `automatic` policy uses an optional AVX2 or AArch64 NEON backend
when it was built and is safe on the running CPU; otherwise the same API uses
the portable C++ implementation.  REIST is the centered modular-arithmetic
method, not a SIMD instruction.  `compiler_auto` and `explicit_simd` are
policy overrides for tests, assembly inspection, and backend diagnostics;
ordinary consumers should keep `automatic`.  With CMake, applications using
this repository through `add_subdirectory` link the API as
`target_link_libraries(my_app PRIVATE reist::intrinsics)`.

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

`bench_reist_intrinsics` is a separate developer-API diagnostic. Its main
baseline is fully optimized C++ `%` with `B` fixed as a compile-time template
constant. The baseline is compiled in a portable, AVX2, or NEON translation
unit matching the ISA opportunity of the corresponding REIST path; it is not
an intentionally opaque runtime divisor. Three paths perform the same repeated
modular array update:

- compiler-optimized constant `%` over conventional residues;
- REIST `compiler_auto`, the plain C++ centered-correction loop;
- REIST `automatic`, which may select the explicit AVX2/NEON implementation.

The three reported quotients are `constant % / REIST automatic`,
`constant % / REIST compiler_auto`, and `REIST compiler_auto / automatic`. In
every case a value above 1 means that the method named after `/` was faster.
The default 12 trials cover all six execution orders twice; medians, quartiles,
and IQR are reported. No timing ratio is a pass threshold, and unfavorable or
mixed points are retained.

Input normalization and preparation, per-trial copies, output conversion, and
validation are outside the timed region. This makes it a prepared steady-state
kernel comparison, not an end-to-end API or application measurement. The
fixed timed modulus catalog is `256`, `257`, `12289`, `65536`, `65537`,
`1000000`, `1000003`, `1000000007`, and `INT32_MAX`; powers of two `256` and
`65536` are deliberate negative controls where optimized `%` should be very
strong. The result is not a universal modulo speedup or an eighth
manifest-backed paper benchmark. The API is a C++ library, not a new compiler
builtin. In particular, older results whose comparison baseline used runtime
`%` cannot establish an advantage over the new constant, fully optimized `%`
baseline.

For a fixed, automatic size sweep over tiny calls, SIMD tails, and cache-scale
arrays, run the Python 3.10+ standard-library-only matrix driver after building
the Release diagnostic:

```bash
python scripts/run_reist_intrinsic_scaling.py --binary build/bench_reist_intrinsics --result-dir build/intrinsic-scaling-full
```

On a multi-config Windows build, use
`build/Release/bench_reist_intrinsics.exe`. The result directory must be new or
empty. The default matrix contains all nine moduli and 13 sizes (`1` through
`4000003`), uses at least 8,388,608 lane updates per implementation and trial,
and runs 12 trials per point. It writes per-case stdout/stderr and schema-3 CSV,
plus `SCALING_RESULTS.csv` and `SCALING_SUMMARY.md`. A smaller diagnostic sweep
can be requested without changing the fixed kernel catalog:

```bash
python scripts/run_reist_intrinsic_scaling.py --binary build/bench_reist_intrinsics --result-dir build/intrinsic-scaling-check --sizes 17,257,4096 --moduli 256,257,1000003 --target-updates 1048576 --trials 12
```

`--trials` must be at least six and a multiple of six. The runner records every
requested point, including losses and failures; it does not apply a performance
acceptance threshold.

For growth in `N`, use the separate fixed-repetition runner. The throughput
sweep above adjusts repetitions and is not a valid Big-O experiment:

```bash
python scripts/run_reist_intrinsic_complexity.py --binary build/bench_reist_intrinsics --result-dir build/intrinsic-complexity --sizes 16384,32768,65536,131072,262144,524288,1048576,2097152,4194304 --moduli 256,12289,1000003,2147483647 --repetitions 16 --trials 12
```

It writes validated per-case artifacts, `COMPLEXITY_RESULTS.csv`, and
`COMPLEXITY_REPORT.md` with log-log fits, bootstrap intervals, doubling ratios,
local exponents, and ns/update. Structurally, all measured paths execute
`Θ(N × R)` fixed-width operations and therefore `Θ(N)` work when `R` is held
constant; SIMD changes only the constant factor. See the
[benchmark documentation](docs/BENCHMARKS.md) for the measurement boundary and
cache-effect interpretation.

The complete validated x86 evidence from 2026-08-03 is archived with every raw
case file: [archive index](tests/results/x86/20260803_REIST_INTRINSIC_BENCHMARKS.md),
[117-case scaling summary](tests/results/x86/20260803_130613_320928_REIST_INTRINSIC_SCALING/SCALING_SUMMARY.md),
and [52-case complexity report](tests/results/x86/20260803_135345_977433_REIST_INTRINSIC_COMPLEXITY/COMPLEXITY_REPORT.md).
These schema-3 results are developer diagnostics, not an additional
manifest-backed paper benchmark. When preserving a new intrinsic run, copy its
entire timestamped result directory—report, consolidated CSV, and every case
directory—under the matching architecture in `tests/results/`.

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
make diagnostics # build Tree/NTT/ARM and intrinsic diagnostic targets
make intrinsic-scaling # run the complete constant-%/REIST diagnostic matrix
make intrinsic-complexity # run the fixed-repetition empirical N-scaling matrix
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

The primary `make run` workflow writes benchmark output and schema-2 manifests
below `tests/results/x86/` or `tests/results/arm/`. Every Make-built primary
timed binary has a compile-time `.build.json` sidecar containing its binary
hash, compiler/version, exact command and flags, profile, and source/header
hashes. The runner revalidates that sidecar and stops at the first missing,
stale, or failing program, so a partial or differently built run is not
silently reported as complete. Make deliberately rebuilds timed binaries when
a primary run target is invoked, preventing a changed `CXX` or flag variable
from inheriting a stale sidecar. The intrinsic targets instead write schema-3
diagnostics to timestamped directories below `build/` by default; only
complete, explicitly archived diagnostic runs belong under `tests/results/`.

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
ARTIFACT_KERNELS='^compiler_const_percent_[[:digit:]]+_portable$' \
tools/check_compiler_artifacts.sh src/bench_reist_intrinsics_const_portable.cpp
ARTIFACT_KERNELS='^compiler_const_percent_[[:digit:]]+_avx2$' \
ARTIFACT_CXXFLAGS='-Isrc -Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -mavx2' \
tools/check_compiler_artifacts.sh src/bench_reist_intrinsics_const_avx2.cpp
ARTIFACT_CXXFLAGS='-Iinclude -std=c++20 -O3 -mavx2 -DREIST_HAVE_AVX2_BACKEND=1' \
tools/check_compiler_artifacts.sh src/reist_intrinsics_avx2.cpp
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
- confirming SIMD in an optional intrinsic backend requires packed integer add and compare instructions in the inspected named kernel;
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

Low-level kernels that require residues in `[0,B)` must convert the centered result at their API boundary; the public intrinsic API already does this through `remainder()` and `residues()`. A branchless correction is implementable, but constant-time behavior depends on the compiler and target and is not claimed by the paper.

## Documentation

- [Einfache REIST-API (Deutsch)](docs/INTRINSIC_API_DE.md)
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
