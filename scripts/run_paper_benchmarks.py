#!/usr/bin/env python3
"""Build, run and archive the balanced three-baseline paper experiment.

Only the Python standard library is required. Archives remain readable after
the build directory is removed. No timing ratio is an acceptance threshold.
"""

from __future__ import annotations

import argparse
import csv
import datetime as dt
import hashlib
import itertools
import json
import math
import os
import platform
import random
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
METHODS = ("percent", "bounded", "centered")
ORDERS = list(itertools.permutations(METHODS))
MODULI = (1, 256, 257, 12289, 1000003, 1000000007, 2147483647)
PATTERNS = ("positive", "negative", "alternating", "boundary", "uniform")
SOURCE_FILES = (
    "src/bench_paper_addition.cpp",
    "src/paper_addition.hpp",
    "CMakeLists.txt",
    "scripts/run_paper_benchmarks.py",
)


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def quantile(values: list[float], fraction: float) -> float:
    ordered = sorted(values)
    position = (len(ordered) - 1) * fraction
    lo = math.floor(position)
    hi = math.ceil(position)
    return ordered[lo] + (ordered[hi] - ordered[lo]) * (position - lo)


def validate(path: Path, case: dict, trials: int) -> list[dict]:
    with path.open(newline="", encoding="utf-8") as handle:
        rows = list(csv.DictReader(handle))
    if len(rows) != trials * 3:
        raise ValueError("incomplete trial matrix")
    counts = None
    updates = case["elements"] * case["repetitions"]
    for index, row in enumerate(rows):
        trial, position = divmod(index, 3)
        if (
            row["schema"] != "1"
            or row["validation"] != "passed"
            or int(row["trial"]) != trial
            or int(row["position"]) != position
            or row["method"] != ORDERS[trial % 6][position]
        ):
            raise ValueError("invalid validation status or trial order")
        for key, value in case.items():
            if row[key] != str(value):
                raise ValueError(f"case mismatch: {key}")
        seconds = float(row["seconds"])
        if not math.isfinite(seconds) or seconds < 0:
            raise ValueError("invalid elapsed time")
        current = tuple(int(row[key]) for key in ("upper", "lower", "bounded"))
        if any(value < 0 or value > updates for value in current):
            raise ValueError("invalid correction count")
        if current[0] + current[1] > updates or (
            counts is not None and counts != current
        ):
            raise ValueError("inconsistent correction counts")
        counts = current
    return rows


def summarize(rows: list[dict], case: dict, case_id: str) -> dict:
    result = {"case": case_id, **case}
    times = {}
    for method in METHODS:
        values = [float(row["seconds"]) for row in rows if row["method"] == method]
        times[method] = values
        for suffix, fraction in (("q1", 0.25), ("median", 0.5), ("q3", 0.75)):
            result[f"{method}_{suffix}"] = quantile(values, fraction)
    for numerator in ("percent", "bounded"):
        ratios = [a / b for a, b in zip(times[numerator], times["centered"]) if b > 0]
        for suffix, fraction in (("q1", 0.25), ("median", 0.5), ("q3", 0.75)):
            # Never substitute a clock tick for a zero duration or drop only
            # unfavorable trials: the entire ratio is unavailable in that case.
            result[f"{numerator}_over_centered_{suffix}"] = (
                quantile(ratios, fraction)
                if len(ratios) == len(times[numerator])
                else None
            )
    for key in ("upper", "lower", "bounded"):
        result[f"{key}_corrections"] = int(rows[0][key])
    result["short_trial"] = min(min(values) for values in times.values()) < 0.0001
    return result


def matrix(quick: bool, target: int) -> list[dict]:
    shapes = (
        ("serial", 4096),
        ("array", 17),
        ("array", 4096),
        ("array", 262144),
        ("polynomial", 1024),
    )
    moduli = MODULI if not quick else (1, 257, 2147483647)
    patterns = PATTERNS if not quick else ("boundary",)
    cases = []
    for modulus, pattern, binding in itertools.product(
        moduli, patterns, ("constant", "runtime")
    ):
        for shape, elements in (
            shapes if not quick else (("serial", 17), ("array", 17), ("polynomial", 17))
        ):
            cases.append(
                dict(
                    modulus=modulus,
                    elements=elements,
                    repetitions=max(1, math.ceil(target / elements)),
                    pattern=pattern,
                    workload=shape,
                    boundary="kernel",
                    binding=binding,
                )
            )
        for repetitions in ((1, 4, 16, 256) if not quick else (1,)):
            cases.append(
                dict(
                    modulus=modulus,
                    elements=65536 if not quick else 17,
                    repetitions=repetitions,
                    pattern=pattern,
                    workload="array",
                    boundary="end_to_end",
                    binding=binding,
                )
            )
    random.Random(20261114).shuffle(cases)
    return cases


def report(results: list[dict], output: Path, manifest: dict) -> None:
    lines = [
        "# REIST paper benchmark v2",
        "",
        f"UTC: {manifest['started_utc']}. Host: {manifest['host']['platform']}.",
        "",
        f"Complete cases: {len(results)}; trials per method: {manifest['trials']}.",
        "",
        "Ratios are paired trial ratios, numerator / centered. Above one favors centered.",
        "Q1/Q3 describe dispersion, not confidence intervals or significance.",
        "All cases, including losses and short trials, are retained. B=1 is a degenerate control.",
        "No ARM/FPGA or end-to-end cryptographic speedup is inferred.",
        "",
        "Kernel timing excludes preparation and output conversion. End-to-end timing includes",
        "normalization of signed inputs, allocations and conversion to non-negative output;",
        "input generation, validation and final deallocation are outside both boundaries.",
        "",
        "All three kernels are portable C++ with the same ISA flags; vectorization is compiler-controlled.",
        "Serial workloads are dependent; array lanes are independent; polynomial output is overwritten each pass.",
        "",
        "Build commands, source snapshots, compiler identity, binary hash and every artifact hash are in MANIFEST.json.",
        "This archive supersedes neither historical measurements nor their source revisions.",
        "",
        "| Case | B | Shape / N / R | Pattern | Boundary / binding | % / centered Q1–median–Q3 | bounded / centered Q1–median–Q3 |",
        "|---|---:|---|---|---|---|---|",
    ]
    for row in results:

        def interval(prefix: str) -> str:
            values = [
                row[f"{prefix}_over_centered_{part}"] for part in ("q1", "median", "q3")
            ]
            return (
                " / ".join(f"{value:.3f}" for value in values)
                if all(value is not None for value in values)
                else "unresolved (clock)"
            )

        marker = " *" if row["short_trial"] else ""
        lines.append(
            f"| [{row['case']}](cases/{row['case']}/paper_trials.csv){marker} | {row['modulus']} | "
            f"{row['workload']} / {row['elements']} / {row['repetitions']} | {row['pattern']} | "
            f"{row['boundary']} / {row['binding']} | {interval('percent')} | {interval('bounded')} |"
        )
    lines += [
        "",
        "* A trial was shorter than 100 microseconds: interpret small differences cautiously.",
        "",
    ]
    (output / "REPORT.md").write_text("\n".join(lines), encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--build-dir", type=Path, default=ROOT / "build/paper-release")
    parser.add_argument("--result-dir", type=Path, required=True)
    parser.add_argument("--trials", type=int, default=12)
    parser.add_argument("--target-updates", type=int, default=8_388_608)
    parser.add_argument("--quick", action="store_true")
    parser.add_argument(
        "--native", action="store_true", help="enable -march=native for all three paths"
    )
    parser.add_argument("--affinity-cpu", type=int)
    args = parser.parse_args()
    if (
        args.trials < 6
        or args.trials % 6
        or args.trials > 1200
        or args.target_updates <= 0
    ):
        parser.error("invalid trial count or update target")
    output = args.result_dir.resolve()
    if output.exists() and any(output.iterdir()):
        parser.error("result directory must be new or empty")
    output.mkdir(parents=True, exist_ok=True)
    build = args.build_dir.resolve()
    manifest = dict(
        schema=1,
        status="running",
        quick=args.quick,
        trials=args.trials,
        target_updates=args.target_updates,
        started_utc=dt.datetime.now(dt.timezone.utc).isoformat(),
        host=dict(
            platform=platform.platform(),
            machine=platform.machine(),
            processor=platform.processor(),
            affinity_cpu=args.affinity_cpu,
        ),
        commands=[],
        cases=[],
        sources={},
    )
    try:
        if args.affinity_cpu is not None:
            if hasattr(os, "sched_setaffinity"):
                os.sched_setaffinity(0, {args.affinity_cpu})
            elif os.name == "nt":
                import ctypes

                kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
                kernel32.GetCurrentProcess.restype = ctypes.c_void_p
                kernel32.SetProcessAffinityMask.argtypes = [
                    ctypes.c_void_p,
                    ctypes.c_size_t,
                ]
                if not kernel32.SetProcessAffinityMask(
                    kernel32.GetCurrentProcess(), 1 << args.affinity_cpu
                ):
                    raise OSError(ctypes.get_last_error(), "could not set CPU affinity")
            else:
                raise ValueError("CPU affinity is unavailable on this platform")
        for name in SOURCE_FILES:
            source = ROOT / name
            destination = output / "source" / name
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.write_bytes(source.read_bytes())
            manifest["sources"][name] = digest(source)
        manifest["git_head"] = subprocess.check_output(
            ["git", "rev-parse", "HEAD"], cwd=ROOT, text=True
        ).strip()
        manifest["git_status"] = subprocess.check_output(
            ["git", "status", "--porcelain"], cwd=ROOT, text=True
        )
        for label, command in (
            (
                "configure",
                [
                    "cmake",
                    "-S",
                    str(ROOT),
                    "-B",
                    str(build),
                    "-G",
                    "Ninja",
                    "-DCMAKE_BUILD_TYPE=Release",
                    "-DREIST_WARNINGS_AS_ERRORS=ON",
                    "-DCMAKE_CXX_FLAGS=" + ("-march=native" if args.native else ""),
                ],
            ),
            (
                "build",
                [
                    "cmake",
                    "--build",
                    str(build),
                    "--target",
                    "bench_paper_addition",
                    "--clean-first",
                ],
            ),
        ):
            manifest["commands"].append(command)
            completed = subprocess.run(
                command, cwd=ROOT, text=True, capture_output=True, timeout=600
            )
            (output / f"{label}.txt").write_text(
                completed.stdout + completed.stderr, encoding="utf-8"
            )
            completed.check_returncode()
        for filename in ("compile_commands.json", "CMakeCache.txt"):
            (output / filename).write_bytes((build / filename).read_bytes())
        binary = build / (
            "bench_paper_addition.exe" if os.name == "nt" else "bench_paper_addition"
        )
        manifest["binary_sha256"] = digest(binary)
        compiler_record = next(
            row
            for row in json.loads((build / "compile_commands.json").read_text())
            if row["file"].endswith("bench_paper_addition.cpp")
        )
        manifest["compile_command"] = compiler_record
        # CMake's cache stores the exact compiler executable, including spaces.
        cache = (build / "CMakeCache.txt").read_text()
        compiler = next(
            line.split("=", 1)[1]
            for line in cache.splitlines()
            if line.startswith("CMAKE_CXX_COMPILER:FILEPATH=")
        )
        manifest["compiler_version"] = subprocess.check_output(
            [compiler, "--version"], text=True
        )
        cases = matrix(args.quick, 1024 if args.quick else args.target_updates)
        manifest["planned_cases"] = cases
        results = []
        for index, case in enumerate(cases):
            case_id = f"{index:04d}"
            directory = output / "cases" / case_id
            directory.mkdir(parents=True)
            command = [str(binary), "--trials", str(args.trials)]
            for key, value in case.items():
                command += ["--" + key, str(value)]
            record = dict(id=case_id, command=command, parameters=case)
            manifest["cases"].append(record)
            completed = subprocess.run(
                command, cwd=directory, capture_output=True, text=True, timeout=600
            )
            record["returncode"] = completed.returncode
            (directory / "stdout.txt").write_text(completed.stdout, encoding="utf-8")
            (directory / "stderr.txt").write_text(completed.stderr, encoding="utf-8")
            completed.check_returncode()
            rows = validate(directory / "paper_trials.csv", case, args.trials)
            results.append(summarize(rows, case, case_id))
            if index % 20 == 0:
                print(f"Validated {index + 1}/{len(cases)} cases", flush=True)
        if any(
            digest(ROOT / name) != value for name, value in manifest["sources"].items()
        ):
            raise ValueError("source changed during measurement")
        if digest(binary) != manifest["binary_sha256"]:
            raise ValueError("binary changed during measurement")
        with (output / "SUMMARY.csv").open("w", newline="", encoding="utf-8") as handle:
            writer = csv.DictWriter(handle, fieldnames=list(results[0]))
            writer.writeheader()
            writer.writerows(results)
        report(results, output, manifest)
        manifest["status"] = "passed"
    except (OSError, ValueError, subprocess.SubprocessError, KeyError) as error:
        manifest["status"] = "failed"
        manifest["error"] = str(error)
        print(str(error), file=sys.stderr)
    finally:
        manifest["finished_utc"] = dt.datetime.now(dt.timezone.utc).isoformat()
        manifest["artifacts"] = {
            path.relative_to(output).as_posix(): digest(path)
            for path in sorted(output.rglob("*"))
            if path.is_file()
        }
        (output / "MANIFEST.json").write_text(
            json.dumps(manifest, indent=2) + "\n", encoding="utf-8"
        )
    return 0 if manifest["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
