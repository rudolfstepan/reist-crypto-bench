# Historical benchmark archive

The pre-existing 2025 text, CSV, assembly, image, and report files in this
directory are retained only for provenance. They predate the canonical
`[-B/2, B/2)` correction, mandatory correctness preflights, equal-work SIMD
comparisons, and run manifests. They are **not reportable measurements** and
must not be used to substantiate the paper.

New paper-report runs must be created through the Make run targets and
`scripts/run_benchmarks.py`. A usable run has a schema-2 `*_MANIFEST.json`
recording the exact timed command, host, repository state, binary SHA-256,
exit code, and SHA-256 values for stdout, stderr, and generated CSV artifacts.
For every reportable binary it also embeds a verified compile-time sidecar:
compiler/version, exact build command and flags, Make profile, binary hash,
and source/header hashes. Declared metadata without a sidecar is accepted only
for explicitly non-reportable quick/smoke pipeline checks.
The plotting and reporting tools reject failed, stale, hash-mismatched, and
quick/smoke runs by default. The report generator also rejects a dirty
worktree unless `--allow-dirty` is explicit; that escape hatch stamps the
result `NON-REPORTABLE DIRTY WORKTREE`.

## Schema-3 intrinsic diagnostics

The timestamped `REIST_INTRINSIC_SCALING` and
`REIST_INTRINSIC_COMPLEXITY` directories are a separate, complete diagnostic
archive for the developer API. They compare compiler-optimized
compile-time-constant `%`, REIST `compiler_auto`, and REIST `automatic`.
They are deliberately excluded from the seven-program paper report and are
not an eighth manifest-backed paper benchmark.

Each archived schema-3 run contains its generated Markdown report,
consolidated CSV, and every per-case command, stdout, stderr, and raw CSV.
The Markdown links are relative and remain valid after archiving. The
consolidated CSV retains the original absolute execution paths as provenance;
those path fields are not expected to resolve on another checkout. Correctness
and timing data reside in the archived per-case files themselves.

The two final x86 runs and their shared build provenance are indexed in
[`x86/20260803_REIST_INTRINSIC_BENCHMARKS.md`](x86/20260803_REIST_INTRINSIC_BENCHMARKS.md).
