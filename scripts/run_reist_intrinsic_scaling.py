#!/usr/bin/env python3
"""Run the complete constant-modulus REIST intrinsic scaling matrix.

The runner intentionally uses only Python's standard library.  Each benchmark
process writes its fixed-name ``results_reist_intrinsics.csv`` into a separate
case directory.  The runner validates the schema-3 summaries before combining
them; timing values are never used as correctness criteria.
"""

from __future__ import annotations

import argparse
import collections
import csv
import dataclasses
import datetime as dt
import hashlib
import math
import os
import platform
import shlex
import subprocess
import sys
from pathlib import Path
from typing import Iterable, Mapping, Sequence


BENCHMARK_CSV = "results_reist_intrinsics.csv"
CONSOLIDATED_CSV = "SCALING_RESULTS.csv"
SUMMARY_MARKDOWN = "SCALING_SUMMARY.md"

# Fixed before running.  The non-powers of two exercise compiler strength
# reduction, while 256 and 65536 are deliberately hostile power-of-two
# controls.  The sizes span tiny calls, SIMD tails, and typical cache regimes.
DEFAULT_MODULI = (
    256,
    257,
    12_289,
    65_536,
    65_537,
    1_000_000,
    1_000_003,
    1_000_000_007,
    2_147_483_647,
)
DEFAULT_SIZES = (
    1,
    3,
    8,
    17,
    64,
    257,
    1_024,
    4_096,
    16_384,
    65_536,
    262_144,
    1_000_003,
    4_000_003,
)
DEFAULT_TARGET_UPDATES = 8_388_608
DEFAULT_TRIALS = 12

IMPLEMENTATIONS = (
    "compiler_const_percent",
    "reist_compiler_auto",
    "reist_automatic",
)

EXPECTED_ORDERS = (
    "compiler_const_percent>reist_compiler_auto>reist_automatic",
    "compiler_const_percent>reist_automatic>reist_compiler_auto",
    "reist_compiler_auto>compiler_const_percent>reist_automatic",
    "reist_compiler_auto>reist_automatic>compiler_const_percent",
    "reist_automatic>compiler_const_percent>reist_compiler_auto",
    "reist_automatic>reist_compiler_auto>compiler_const_percent",
)

RATIO_SPECS = (
    (
        "const_over_automatic",
        "speedup_const_over_automatic",
        "constant % / REIST automatic",
    ),
    (
        "const_over_compiler_auto",
        "speedup_const_over_compiler_auto",
        "constant % / REIST compiler_auto",
    ),
    (
        "compiler_auto_over_automatic",
        "speedup_compiler_auto_over_automatic",
        "REIST compiler_auto / REIST automatic",
    ),
)

REQUIRED_COLUMNS = {
    "schema",
    "modulus",
    "elements",
    "repetitions",
    "trials",
    "row_type",
    "implementation",
    "seconds",
    "seconds_q1",
    "seconds_q3",
    "seconds_iqr",
    "speedup_const_over_automatic",
    "speedup_const_over_automatic_q1",
    "speedup_const_over_automatic_q3",
    "speedup_const_over_automatic_iqr",
    "speedup_const_over_compiler_auto",
    "speedup_const_over_compiler_auto_q1",
    "speedup_const_over_compiler_auto_q3",
    "speedup_const_over_compiler_auto_iqr",
    "speedup_compiler_auto_over_automatic",
    "speedup_compiler_auto_over_automatic_q1",
    "speedup_compiler_auto_over_automatic_q3",
    "speedup_compiler_auto_over_automatic_iqr",
    "checksum",
    "validation",
}


class ValidationError(RuntimeError):
    """The benchmark did not produce a complete, valid schema-3 result."""


@dataclasses.dataclass(frozen=True)
class Distribution:
    median: float
    q1: float
    q3: float
    iqr: float


@dataclasses.dataclass(frozen=True)
class CaseResult:
    index: int
    modulus: int
    elements: int
    repetitions: int
    trials: int
    target_updates: int
    actual_updates: int
    status: str
    error: str
    case_directory: str
    benchmark_csv: str
    stdout_path: str
    stderr_path: str
    seconds: Mapping[str, Distribution]
    ratios: Mapping[str, Distribution]
    classifications: Mapping[str, str]
    checksum: str


def parse_positive_list(text: str) -> tuple[int, ...]:
    pieces = [piece.strip().replace("_", "") for piece in text.split(",")]
    if not pieces or any(not piece for piece in pieces):
        raise argparse.ArgumentTypeError(
            "expected a comma-separated list of positive integers"
        )
    try:
        values = tuple(int(piece, 10) for piece in pieces)
    except ValueError as error:
        raise argparse.ArgumentTypeError(
            "expected a comma-separated list of positive integers"
        ) from error
    if any(value <= 0 for value in values):
        raise argparse.ArgumentTypeError("all values must be positive")
    if len(set(values)) != len(values):
        raise argparse.ArgumentTypeError("duplicate values are not allowed")
    return values


def positive_int(text: str) -> int:
    try:
        value = int(text.replace("_", ""), 10)
    except ValueError as error:
        raise argparse.ArgumentTypeError("expected a positive integer") from error
    if value <= 0:
        raise argparse.ArgumentTypeError("value must be positive")
    return value


def parse_args(argv: Sequence[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Run and validate the full schema-3 REIST constant-modulus "
            "scaling matrix."
        )
    )
    parser.add_argument(
        "--binary",
        required=True,
        type=Path,
        help="optimized bench_reist_intrinsics executable",
    )
    parser.add_argument(
        "--result-dir",
        required=True,
        type=Path,
        help="new or empty directory for all scaling artifacts",
    )
    parser.add_argument(
        "--sizes",
        type=parse_positive_list,
        default=DEFAULT_SIZES,
        help=(
            "comma-separated element counts (default fixed cache/tail sweep: "
            + ",".join(str(value) for value in DEFAULT_SIZES)
            + ")"
        ),
    )
    parser.add_argument(
        "--moduli",
        type=parse_positive_list,
        default=DEFAULT_MODULI,
        help=(
            "comma-separated compile-time moduli (default full catalog: "
            + ",".join(str(value) for value in DEFAULT_MODULI)
            + ")"
        ),
    )
    parser.add_argument(
        "--target-updates",
        type=positive_int,
        default=DEFAULT_TARGET_UPDATES,
        help=(
            "minimum lane updates per implementation and trial; repetitions "
            f"are ceil(target/elements) (default: {DEFAULT_TARGET_UPDATES})"
        ),
    )
    parser.add_argument(
        "--trials",
        type=positive_int,
        default=DEFAULT_TRIALS,
        help=(
            "paired trials; must be a multiple of six "
            f"(default: {DEFAULT_TRIALS})"
        ),
    )
    args = parser.parse_args(argv)

    if args.trials < 6 or args.trials % 6 != 0:
        parser.error("--trials must be at least 6 and a multiple of 6")
    unsupported = [value for value in args.moduli if value not in DEFAULT_MODULI]
    if unsupported:
        parser.error(
            "--moduli contains values without compile-time kernels: "
            + ", ".join(str(value) for value in unsupported)
        )
    return args


def prepare_paths(binary_argument: Path, result_argument: Path) -> tuple[Path, Path]:
    binary = binary_argument.expanduser().resolve()
    if not binary.is_file():
        raise ValidationError(f"benchmark binary does not exist: {binary}")

    result_dir = result_argument.expanduser().resolve()
    if result_dir.exists():
        if not result_dir.is_dir():
            raise ValidationError(f"result path is not a directory: {result_dir}")
        if any(result_dir.iterdir()):
            raise ValidationError(
                f"result directory must be empty to prevent mixed runs: {result_dir}"
            )
    else:
        result_dir.mkdir(parents=True)
    return binary, result_dir


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        while True:
            block = handle.read(1024 * 1024)
            if not block:
                break
            digest.update(block)
    return digest.hexdigest()


def command_text(arguments: Sequence[str]) -> str:
    if os.name == "nt":
        return subprocess.list2cmdline(list(arguments))
    return shlex.join(arguments)


def require_int(row: Mapping[str, str], field: str, expected: int) -> None:
    text = row.get(field, "")
    try:
        value = int(text, 10)
    except ValueError as error:
        raise ValidationError(f"invalid integer in {field}: {text!r}") from error
    if value != expected:
        raise ValidationError(
            f"summary {field} is {value}, expected invoked value {expected}"
        )


def require_float(
    row: Mapping[str, str], field: str, *, allow_zero: bool = False
) -> float:
    text = row.get(field, "")
    try:
        value = float(text)
    except ValueError as error:
        raise ValidationError(f"invalid floating-point value in {field}: {text!r}") from error
    invalid_sign = value < 0.0 if allow_zero else value <= 0.0
    if not math.isfinite(value) or invalid_sign:
        requirement = "non-negative" if allow_zero else "positive"
        raise ValidationError(
            f"{field} must be finite and {requirement}, got {text!r}"
        )
    return value


def validate_distribution(row: Mapping[str, str], prefix: str) -> Distribution:
    median = require_float(row, prefix)
    q1 = require_float(row, f"{prefix}_q1")
    q3 = require_float(row, f"{prefix}_q3")
    iqr = require_float(row, f"{prefix}_iqr", allow_zero=True)
    if q1 > median or median > q3:
        raise ValidationError(
            f"invalid quartile order for {prefix}: {q1}, {median}, {q3}"
        )
    expected_iqr = q3 - q1
    if not math.isclose(iqr, expected_iqr, rel_tol=1.0e-8, abs_tol=1.0e-12):
        raise ValidationError(
            f"{prefix}_iqr={iqr} does not equal q3-q1={expected_iqr}"
        )
    return Distribution(median=median, q1=q1, q3=q3, iqr=iqr)


def validate_seconds(row: Mapping[str, str]) -> Distribution:
    median = require_float(row, "seconds")
    q1 = require_float(row, "seconds_q1")
    q3 = require_float(row, "seconds_q3")
    iqr = require_float(row, "seconds_iqr", allow_zero=True)
    if q1 > median or median > q3:
        raise ValidationError(
            f"invalid seconds quartile order: {q1}, {median}, {q3}"
        )
    expected_iqr = q3 - q1
    if not math.isclose(iqr, expected_iqr, rel_tol=1.0e-8, abs_tol=1.0e-12):
        raise ValidationError(
            f"seconds_iqr={iqr} does not equal q3-q1={expected_iqr}"
        )
    return Distribution(median=median, q1=q1, q3=q3, iqr=iqr)


def distributions_equal(left: Distribution, right: Distribution) -> bool:
    return all(
        math.isclose(a, b, rel_tol=1.0e-12, abs_tol=1.0e-15)
        for a, b in zip(dataclasses.astuple(left), dataclasses.astuple(right))
    )


def summarize_samples(samples: Sequence[float]) -> Distribution:
    if not samples:
        raise ValidationError("cannot summarize an empty trial sample")
    ordered = sorted(samples)

    def quantile(fraction: float) -> float:
        position = fraction * (len(ordered) - 1)
        lower = math.floor(position)
        upper = min(lower + 1, len(ordered) - 1)
        weight = position - lower
        return ordered[lower] + ((ordered[upper] - ordered[lower]) * weight)

    median = quantile(0.5)
    q1 = quantile(0.25)
    q3 = quantile(0.75)
    return Distribution(median=median, q1=q1, q3=q3, iqr=q3 - q1)


def classify(distribution: Distribution) -> str:
    if distribution.q1 > 1.0:
        return "positive"
    if distribution.q3 < 1.0:
        return "negative"
    return "mixed"


def read_case_csv(
    path: Path,
    modulus: int,
    elements: int,
    repetitions: int,
    trials: int,
) -> tuple[
    dict[str, Distribution],
    dict[str, Distribution],
    dict[str, str],
    str,
]:
    if not path.is_file():
        raise ValidationError(f"benchmark CSV was not created: {path}")
    with path.open("r", encoding="utf-8", newline="") as handle:
        reader = csv.DictReader(handle)
        if reader.fieldnames is None:
            raise ValidationError("benchmark CSV has no header")
        if len(set(reader.fieldnames)) != len(reader.fieldnames):
            raise ValidationError("benchmark CSV contains duplicate column names")
        missing = REQUIRED_COLUMNS.difference(reader.fieldnames)
        if missing:
            raise ValidationError(
                "schema-3 CSV is missing required columns: "
                + ", ".join(sorted(missing))
            )
        rows = list(reader)
    if not rows:
        raise ValidationError("benchmark CSV contains no data rows")
    for row_number, row in enumerate(rows, start=2):
        if None in row or any(value is None for value in row.values()):
            raise ValidationError(
                f"benchmark CSV row {row_number} has too many or too few fields"
            )
    if any(row.get("schema") != "3" for row in rows):
        schemas = sorted({str(row.get("schema", "")) for row in rows})
        raise ValidationError(f"benchmark CSV must contain only schema 3, got {schemas}")

    unexpected_row_types = {
        row.get("row_type", "") for row in rows
    }.difference({"trial", "summary"})
    if unexpected_row_types:
        raise ValidationError(
            "unexpected row types: "
            + ", ".join(repr(value) for value in sorted(unexpected_row_types))
        )
    for row in rows:
        require_int(row, "modulus", modulus)
        require_int(row, "elements", elements)
        require_int(row, "repetitions", repetitions)
        require_int(row, "trials", trials)

    trial_rows = [row for row in rows if row.get("row_type") == "trial"]
    if len(trial_rows) != trials * len(IMPLEMENTATIONS):
        raise ValidationError(
            f"expected {trials * len(IMPLEMENTATIONS)} trial rows, "
            f"found {len(trial_rows)}"
        )
    by_trial: dict[int, list[Mapping[str, str]]] = {}
    for row in trial_rows:
        try:
            trial_number = int(row.get("trial", ""), 10)
        except ValueError as error:
            raise ValidationError(
                f"invalid trial number: {row.get('trial')!r}"
            ) from error
        if trial_number < 1 or trial_number > trials:
            raise ValidationError(f"trial number out of range: {trial_number}")
        by_trial.setdefault(trial_number, []).append(row)
    if set(by_trial) != set(range(1, trials + 1)):
        raise ValidationError("trial numbering is incomplete")

    order_counts: collections.Counter[str] = collections.Counter()
    all_trial_checksums: set[str] = set()
    trial_seconds = {
        implementation: [] for implementation in IMPLEMENTATIONS
    }
    trial_ratios = {
        csv_prefix: [] for _short_name, csv_prefix, _description in RATIO_SPECS
    }
    for trial_number in range(1, trials + 1):
        group = by_trial[trial_number]
        implementations = [row.get("implementation", "") for row in group]
        if len(group) != len(IMPLEMENTATIONS) or set(implementations) != set(
            IMPLEMENTATIONS
        ):
            raise ValidationError(
                f"trial {trial_number} does not contain each implementation once"
            )
        orders = {row.get("execution_order", "") for row in group}
        if len(orders) != 1:
            raise ValidationError(
                f"trial {trial_number} has inconsistent execution orders"
            )
        order = orders.pop()
        if order not in EXPECTED_ORDERS:
            raise ValidationError(
                f"trial {trial_number} has unknown execution order {order!r}"
            )
        order_counts[order] += 1

        checksums = {row.get("checksum", "") for row in group}
        if "" in checksums or len(checksums) != 1:
            raise ValidationError(
                f"trial {trial_number} checksums are empty or disagree"
            )
        all_trial_checksums.update(checksums)
        if any(row.get("validation") != "pass" for row in group):
            raise ValidationError(f"trial {trial_number} did not pass validation")

        implementation_rows = {
            row["implementation"]: row for row in group
        }
        seconds = {
            implementation: require_float(
                implementation_rows[implementation], "seconds"
            )
            for implementation in IMPLEMENTATIONS
        }
        for implementation, value in seconds.items():
            trial_seconds[implementation].append(value)
        ratio_values = {
            prefix: require_float(group[0], prefix)
            for _short_name, prefix, _description in RATIO_SPECS
        }
        expected_ratios = {
            "speedup_const_over_automatic": (
                seconds["compiler_const_percent"]
                / seconds["reist_automatic"]
            ),
            "speedup_const_over_compiler_auto": (
                seconds["compiler_const_percent"]
                / seconds["reist_compiler_auto"]
            ),
            "speedup_compiler_auto_over_automatic": (
                seconds["reist_compiler_auto"]
                / seconds["reist_automatic"]
            ),
        }
        for prefix, expected in expected_ratios.items():
            for row in group[1:]:
                repeated = require_float(row, prefix)
                if not math.isclose(
                    repeated, ratio_values[prefix], rel_tol=1.0e-12,
                    abs_tol=1.0e-15,
                ):
                    raise ValidationError(
                        f"trial {trial_number} shared ratio {prefix} differs"
                    )
            if not math.isclose(
                ratio_values[prefix], expected, rel_tol=1.0e-12,
                abs_tol=1.0e-15,
            ):
                raise ValidationError(
                    f"trial {trial_number} ratio {prefix} does not match timings"
                )
            trial_ratios[prefix].append(ratio_values[prefix])
    expected_order_count = trials // len(EXPECTED_ORDERS)
    if any(
        order_counts[order] != expected_order_count for order in EXPECTED_ORDERS
    ):
        raise ValidationError(
            "the six execution orders are not represented equally"
        )
    if len(all_trial_checksums) != 1:
        raise ValidationError("checksums differ between trials")

    summaries = [row for row in rows if row.get("row_type") == "summary"]
    if len(summaries) != len(IMPLEMENTATIONS):
        raise ValidationError(
            f"expected exactly three summary rows, found {len(summaries)}"
        )
    by_implementation: dict[str, Mapping[str, str]] = {}
    for row in summaries:
        implementation = row.get("implementation", "")
        if implementation not in IMPLEMENTATIONS:
            raise ValidationError(
                f"unexpected summary implementation: {implementation!r}"
            )
        if implementation in by_implementation:
            raise ValidationError(f"duplicate summary for {implementation}")
        by_implementation[implementation] = row
        if row.get("validation") != "pass":
            raise ValidationError(
                f"summary validation for {implementation} is not 'pass': "
                f"{row.get('validation')!r}"
            )
    if set(by_implementation) != set(IMPLEMENTATIONS):
        missing_implementations = set(IMPLEMENTATIONS).difference(by_implementation)
        raise ValidationError(
            "missing summary implementations: "
            + ", ".join(sorted(missing_implementations))
        )

    seconds = {
        implementation: validate_seconds(by_implementation[implementation])
        for implementation in IMPLEMENTATIONS
    }
    for implementation, distribution in seconds.items():
        recomputed = summarize_samples(trial_seconds[implementation])
        if not distributions_equal(distribution, recomputed):
            raise ValidationError(
                f"summary timing distribution for {implementation} does not "
                "match the trial rows"
            )
    reference = by_implementation[IMPLEMENTATIONS[0]]
    ratios: dict[str, Distribution] = {}
    classifications: dict[str, str] = {}
    for short_name, csv_prefix, _description in RATIO_SPECS:
        distribution = validate_distribution(reference, csv_prefix)
        for implementation in IMPLEMENTATIONS[1:]:
            repeated = validate_distribution(
                by_implementation[implementation], csv_prefix
            )
            if not distributions_equal(distribution, repeated):
                raise ValidationError(
                    f"shared ratio {csv_prefix} differs across summary rows"
                )
        recomputed = summarize_samples(trial_ratios[csv_prefix])
        if not distributions_equal(distribution, recomputed):
            raise ValidationError(
                f"summary ratio distribution {csv_prefix} does not match "
                "the trial rows"
            )
        ratios[short_name] = distribution
        classifications[short_name] = classify(distribution)

    checksums = {row.get("checksum", "") for row in summaries}
    if "" in checksums or len(checksums) != 1:
        raise ValidationError(
            "summary checksums must be non-empty and identical across implementations"
        )
    checksum = checksums.pop()
    if checksum not in all_trial_checksums:
        raise ValidationError("summary checksum does not match timed trials")
    return seconds, ratios, classifications, checksum


def empty_result(
    index: int,
    modulus: int,
    elements: int,
    repetitions: int,
    trials: int,
    target_updates: int,
    case_directory: Path,
    stdout_path: Path,
    stderr_path: Path,
    error: str,
) -> CaseResult:
    return CaseResult(
        index=index,
        modulus=modulus,
        elements=elements,
        repetitions=repetitions,
        trials=trials,
        target_updates=target_updates,
        actual_updates=elements * repetitions,
        status="error",
        error=error,
        case_directory=str(case_directory),
        benchmark_csv=str(case_directory / BENCHMARK_CSV),
        stdout_path=str(stdout_path),
        stderr_path=str(stderr_path),
        seconds={},
        ratios={},
        classifications={},
        checksum="",
    )


def run_case(
    binary: Path,
    result_dir: Path,
    index: int,
    modulus: int,
    elements: int,
    target_updates: int,
    trials: int,
) -> CaseResult:
    repetitions = max(1, (target_updates + elements - 1) // elements)
    case_directory = result_dir / f"B{modulus}_N{elements}"
    case_directory.mkdir()
    stdout_path = case_directory / "stdout.txt"
    stderr_path = case_directory / "stderr.txt"
    arguments = [
        str(binary),
        "--elements",
        str(elements),
        "--repetitions",
        str(repetitions),
        "--modulus",
        str(modulus),
        "--trials",
        str(trials),
    ]
    (case_directory / "command.txt").write_text(
        command_text(arguments) + "\n", encoding="utf-8"
    )
    try:
        completed = subprocess.run(
            arguments,
            cwd=case_directory,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=False,
        )
        stdout_path.write_text(completed.stdout, encoding="utf-8")
        stderr_path.write_text(completed.stderr, encoding="utf-8")
    except OSError as error:
        stdout_path.write_text("", encoding="utf-8")
        stderr_path.write_text(str(error) + "\n", encoding="utf-8")
        return empty_result(
            index, modulus, elements, repetitions, trials, target_updates,
            case_directory, stdout_path, stderr_path,
            f"could not execute benchmark: {error}",
        )

    if completed.returncode != 0:
        return empty_result(
            index, modulus, elements, repetitions, trials, target_updates,
            case_directory, stdout_path, stderr_path,
            f"benchmark exited with code {completed.returncode}",
        )

    benchmark_csv = case_directory / BENCHMARK_CSV
    try:
        seconds, ratios, classifications, checksum = read_case_csv(
            benchmark_csv, modulus, elements, repetitions, trials
        )
    except (OSError, csv.Error, ValidationError) as error:
        return empty_result(
            index, modulus, elements, repetitions, trials, target_updates,
            case_directory, stdout_path, stderr_path,
            f"CSV validation failed: {error}",
        )

    return CaseResult(
        index=index,
        modulus=modulus,
        elements=elements,
        repetitions=repetitions,
        trials=trials,
        target_updates=target_updates,
        actual_updates=elements * repetitions,
        status="pass",
        error="",
        case_directory=str(case_directory),
        benchmark_csv=str(benchmark_csv),
        stdout_path=str(stdout_path),
        stderr_path=str(stderr_path),
        seconds=seconds,
        ratios=ratios,
        classifications=classifications,
        checksum=checksum,
    )


def optional_distribution(
    result: CaseResult, source: Mapping[str, Distribution], key: str, field: str
) -> str:
    distribution = source.get(key)
    if distribution is None:
        return ""
    return format(getattr(distribution, field), ".17g")


def consolidated_fieldnames() -> list[str]:
    names = [
        "runner_schema",
        "case_index",
        "status",
        "error",
        "modulus",
        "elements",
        "repetitions",
        "trials",
        "target_updates",
        "actual_updates",
    ]
    for implementation in IMPLEMENTATIONS:
        for suffix in ("median_seconds", "seconds_q1", "seconds_q3", "seconds_iqr"):
            names.append(f"{implementation}_{suffix}")
    for short_name, _csv_prefix, _description in RATIO_SPECS:
        for suffix in ("median", "q1", "q3", "iqr"):
            names.append(f"speedup_{short_name}_{suffix}")
        names.append(f"classification_{short_name}")
    names.extend(
        [
            "checksum",
            "case_directory",
            "benchmark_csv",
            "stdout_path",
            "stderr_path",
        ]
    )
    return names


def result_row(result: CaseResult) -> dict[str, object]:
    row: dict[str, object] = {
        "runner_schema": 1,
        "case_index": result.index,
        "status": result.status,
        "error": result.error,
        "modulus": result.modulus,
        "elements": result.elements,
        "repetitions": result.repetitions,
        "trials": result.trials,
        "target_updates": result.target_updates,
        "actual_updates": result.actual_updates,
    }
    for implementation in IMPLEMENTATIONS:
        row[f"{implementation}_median_seconds"] = optional_distribution(
            result, result.seconds, implementation, "median"
        )
        row[f"{implementation}_seconds_q1"] = optional_distribution(
            result, result.seconds, implementation, "q1"
        )
        row[f"{implementation}_seconds_q3"] = optional_distribution(
            result, result.seconds, implementation, "q3"
        )
        row[f"{implementation}_seconds_iqr"] = optional_distribution(
            result, result.seconds, implementation, "iqr"
        )
    for short_name, _csv_prefix, _description in RATIO_SPECS:
        for suffix in ("median", "q1", "q3", "iqr"):
            row[f"speedup_{short_name}_{suffix}"] = optional_distribution(
                result, result.ratios, short_name, suffix
            )
        row[f"classification_{short_name}"] = result.classifications.get(
            short_name, ""
        )
    row.update(
        {
            "checksum": result.checksum,
            "case_directory": result.case_directory,
            "benchmark_csv": result.benchmark_csv,
            "stdout_path": result.stdout_path,
            "stderr_path": result.stderr_path,
        }
    )
    return row


def write_consolidated_csv(path: Path, results: Iterable[CaseResult]) -> None:
    fieldnames = consolidated_fieldnames()
    with path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames, extrasaction="raise")
        writer.writeheader()
        for result in results:
            writer.writerow(result_row(result))


def geometric_mean(values: Iterable[float]) -> float | None:
    materialized = list(values)
    if not materialized:
        return None
    return math.exp(math.fsum(math.log(value) for value in materialized) / len(materialized))


def markdown_escape(value: object) -> str:
    return str(value).replace("|", "\\|").replace("\n", " ")


def relative_link(target: str, summary_dir: Path) -> str:
    try:
        relative = os.path.relpath(target, summary_dir)
    except ValueError:
        relative = target
    return Path(relative).as_posix()


def format_seconds(value: float) -> str:
    return f"{value:.6g}"


def format_ratio(distribution: Distribution) -> str:
    return f"{distribution.median:.4f} [{distribution.q1:.4f}, {distribution.q3:.4f}]"


def write_summary(
    path: Path,
    results: Sequence[CaseResult],
    binary: Path,
    binary_sha256: str,
    sizes: Sequence[int],
    moduli: Sequence[int],
    target_updates: int,
    trials: int,
    started_utc: str,
    finished_utc: str,
    matrix_scope: str,
    binary_unchanged: bool,
) -> None:
    successful = [result for result in results if result.status == "pass"]
    failed = [result for result in results if result.status != "pass"]
    lines = [
        "# REIST intrinsic scaling summary",
        "",
        f"- Matrix scope: **{matrix_scope}**",
        f"- Started UTC: `{started_utc}`",
        f"- Finished UTC: `{finished_utc}`",
        f"- Binary: `{binary}`",
        f"- Binary SHA-256: `{binary_sha256}`",
        f"- Host: `{platform.platform()}` / `{platform.machine()}`",
        f"- Python: `{platform.python_version()}`",
        f"- Sizes ({len(sizes)}): `{', '.join(str(value) for value in sizes)}`",
        f"- Moduli ({len(moduli)}): `{', '.join(str(value) for value in moduli)}`",
        f"- Target updates: `{target_updates}` per implementation and trial",
        f"- Trials: `{trials}`; all six three-way execution orders occur equally often",
        f"- Completed cases: **{len(successful)}/{len(results)}**",
        f"- Binary hash still matches after run: **{'yes' if binary_unchanged else 'no'}**",
        "",
        "Repetitions are fixed mechanically as "
        "`max(1, ceil(target_updates / elements))`. No case is selected or "
        "discarded using its timing result. Input preparation, copies, and "
        "validation follow the benchmark's prepared steady-state scope.",
        "",
        "Classification is descriptive, never a pass threshold: **positive** "
        "means Q1 > 1, **negative** means Q3 < 1, and **mixed** covers every "
        "other interval.",
        "",
        "## Complete-matrix aggregates",
        "",
        (
            "All requested cases validated; the aggregates below cover the "
            "complete matrix."
            if not failed and binary_unchanged
            else "The requested matrix is incomplete. Aggregate ratios are "
            "withheld rather than calculated from a successful subset, or "
            "the benchmark binary changed before the final hash check."
        ),
        "",
        "| Comparison | Geometric mean of paired medians | Positive | Mixed | Negative |",
        "|---|---:|---:|---:|---:|",
    ]
    aggregate_results = successful if not failed and binary_unchanged else []
    for short_name, _csv_prefix, description in RATIO_SPECS:
        mean = geometric_mean(
            result.ratios[short_name].median for result in aggregate_results
        )
        counts = {
            label: sum(
                result.classifications[short_name] == label
                for result in aggregate_results
            )
            for label in ("positive", "mixed", "negative")
        }
        mean_text = "n/a" if mean is None else f"{mean:.4f}x"
        lines.append(
            f"| {description} | {mean_text} | {counts['positive']} | "
            f"{counts['mixed']} | {counts['negative']} |"
        )

    lines.extend(
        [
            "",
            "## Full requested matrix",
            "",
            "The primary classification applies to compiler-optimized constant "
            "`%` divided by public REIST `automatic`.",
            "",
            "| # | B | Elements | Reps | Constant `%` s | REIST compiler s | "
            "REIST automatic s | Const/automatic median [Q1,Q3] | Class | "
            "Const/compiler | Compiler/automatic | Raw CSV |",
            "|---:|---:|---:|---:|---:|---:|---:|---:|---|---:|---:|---|",
        ]
    )
    for result in results:
        if result.status != "pass":
            lines.append(
                f"| {result.index} | {result.modulus} | {result.elements} | "
                f"{result.repetitions} | ERROR | ERROR | ERROR | ERROR | "
                f"error | ERROR | ERROR | — |"
            )
            continue
        primary = result.ratios["const_over_automatic"]
        const_compiler = result.ratios["const_over_compiler_auto"]
        compiler_auto = result.ratios["compiler_auto_over_automatic"]
        csv_link = relative_link(result.benchmark_csv, path.parent)
        lines.append(
            f"| {result.index} | {result.modulus} | {result.elements} | "
            f"{result.repetitions} | "
            f"{format_seconds(result.seconds['compiler_const_percent'].median)} | "
            f"{format_seconds(result.seconds['reist_compiler_auto'].median)} | "
            f"{format_seconds(result.seconds['reist_automatic'].median)} | "
            f"{format_ratio(primary)} | "
            f"{result.classifications['const_over_automatic']} | "
            f"{const_compiler.median:.4f}x | {compiler_auto.median:.4f}x | "
            f"[CSV]({csv_link}) |"
        )

    if failed or not binary_unchanged:
        lines.extend(
            [
                "",
                "## Failed or invalid cases",
                "",
                "These cases remain part of the requested matrix. Their absence "
                "prevents a complete result and makes the runner exit non-zero.",
                "",
                "| # | B | Elements | Error | stdout | stderr |",
                "|---:|---:|---:|---|---|---|",
            ]
        )
        if not binary_unchanged:
            lines.append(
                "The benchmark executable hash no longer matches after the "
                "sweep, so the matrix is not treated as one binary's result."
            )
            lines.append("")
        for result in failed:
            stdout_link = relative_link(result.stdout_path, path.parent)
            stderr_link = relative_link(result.stderr_path, path.parent)
            lines.append(
                f"| {result.index} | {result.modulus} | {result.elements} | "
                f"{markdown_escape(result.error)} | [stdout]({stdout_link}) | "
                f"[stderr]({stderr_link}) |"
            )

    lines.extend(
        [
            "",
            "## Scope",
            "",
            "This is a prepared, repeated modular-addition microbenchmark. It "
            "does not establish a universal modulo, cryptographic, or end-to-end "
            "application speedup. Power-of-two controls and small calls are "
            "intentionally retained even when they favor compiler-optimized `%`.",
            "",
        ]
    )
    path.write_text("\n".join(lines), encoding="utf-8")


def utc_now() -> str:
    return dt.datetime.now(dt.timezone.utc).isoformat(timespec="seconds")


def main(argv: Sequence[str] | None = None) -> int:
    args = parse_args(sys.argv[1:] if argv is None else argv)
    try:
        binary, result_dir = prepare_paths(args.binary, args.result_dir)
        binary_sha256 = sha256_file(binary)
    except (OSError, ValidationError) as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 2

    default_dimensions = (
        tuple(args.sizes) == DEFAULT_SIZES
        and tuple(args.moduli) == DEFAULT_MODULI
    )
    if (
        default_dimensions
        and args.target_updates == DEFAULT_TARGET_UPDATES
        and args.trials == DEFAULT_TRIALS
    ):
        matrix_scope = "predeclared default matrix"
    elif default_dimensions:
        matrix_scope = (
            "predeclared default size/modulus matrix with explicit work or "
            "trial settings"
        )
    else:
        matrix_scope = "user-selected matrix (all requested cases retained)"
    started_utc = utc_now()
    results: list[CaseResult] = []
    total = len(args.moduli) * len(args.sizes)
    index = 0
    for modulus in args.moduli:
        for elements in args.sizes:
            index += 1
            repetitions = max(
                1, (args.target_updates + elements - 1) // elements
            )
            print(
                f"[{index}/{total}] B={modulus}, N={elements}, "
                f"repetitions={repetitions}",
                flush=True,
            )
            result = run_case(
                binary=binary,
                result_dir=result_dir,
                index=index,
                modulus=modulus,
                elements=elements,
                target_updates=args.target_updates,
                trials=args.trials,
            )
            results.append(result)
            if result.status != "pass":
                print(f"  ERROR: {result.error}", file=sys.stderr, flush=True)

    try:
        binary_unchanged = sha256_file(binary) == binary_sha256
    except OSError as error:
        print(f"ERROR: could not re-hash benchmark binary: {error}", file=sys.stderr)
        binary_unchanged = False
    if not binary_unchanged:
        print("ERROR: benchmark binary hash changed by the end of the sweep", file=sys.stderr)

    finished_utc = utc_now()
    consolidated_path = result_dir / CONSOLIDATED_CSV
    summary_path = result_dir / SUMMARY_MARKDOWN
    try:
        write_consolidated_csv(consolidated_path, results)
        write_summary(
            path=summary_path,
            results=results,
            binary=binary,
            binary_sha256=binary_sha256,
            sizes=args.sizes,
            moduli=args.moduli,
            target_updates=args.target_updates,
            trials=args.trials,
            started_utc=started_utc,
            finished_utc=finished_utc,
            matrix_scope=matrix_scope,
            binary_unchanged=binary_unchanged,
        )
    except OSError as error:
        print(f"ERROR: could not write consolidated artifacts: {error}", file=sys.stderr)
        return 2

    failures = sum(result.status != "pass" for result in results)
    print(f"Consolidated CSV: {consolidated_path}")
    print(f"Summary: {summary_path}")
    if failures or not binary_unchanged:
        print(
            f"ERROR: {failures} of {len(results)} requested cases failed or "
            "produced invalid schema-3 results; "
            f"binary unchanged={binary_unchanged}",
            file=sys.stderr,
        )
        return 1
    print(f"Complete matrix validated: {len(results)} cases")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
