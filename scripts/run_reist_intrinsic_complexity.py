#!/usr/bin/env python3
"""Empirically characterize REIST intrinsic scaling with fixed repetitions.

This runner uses the schema-3 ``bench_reist_intrinsics`` executable.  Unlike
the throughput-oriented scaling runner, it keeps ``--repetitions`` fixed while
the element count grows, so the requested work per trial is proportional to
``N``.  It validates every raw benchmark CSV before producing a complete
matrix, log-log ordinary-least-squares fits, doubling ratios, and ns/update.

The reported slopes are empirical measurements of this benchmark and host.
They are deliberately not presented as a proof of a mathematical Big-O bound.
Only Python's standard library and the sibling schema-3 validation module are
used.
"""

from __future__ import annotations

import argparse
import csv
import dataclasses
import datetime as dt
import hashlib
import math
import os
import platform
import random
import statistics
import subprocess
import sys
from pathlib import Path
from typing import Mapping, Sequence

from run_reist_intrinsic_scaling import (
    BENCHMARK_CSV,
    DEFAULT_MODULI,
    IMPLEMENTATIONS,
    RATIO_SPECS,
    Distribution,
    ValidationError,
    command_text,
    parse_positive_list,
    positive_int,
    prepare_paths,
    read_case_csv,
    sha256_file,
)


CONSOLIDATED_CSV = "COMPLEXITY_RESULTS.csv"
REPORT_MARKDOWN = "COMPLEXITY_REPORT.md"
TAIL_POINT_COUNT = 5

# Powers of two make the local T(2N)/T(N) measurements unambiguous.  The
# largest case matches the already exercised memory scale while remaining
# reasonable on a development workstation.  Users can explicitly request a
# larger list if their host has sufficient memory.
DEFAULT_SIZES = (
    4_096,
    8_192,
    16_384,
    32_768,
    65_536,
    131_072,
    262_144,
    524_288,
    1_048_576,
    2_097_152,
    4_194_304,
)
DEFAULT_REPETITIONS = 4
DEFAULT_TRIALS = 12
DEFAULT_SEED = 6_502
DEFAULT_BOOTSTRAP_ITERATIONS = 2_000

EXPECTED_BENCHMARK = "reist_const_modulo_api_diagnostic"
EXPECTED_SCOPE = "prepared_steady_state_constexpr_percent_vs_reist"
EXPECTED_POLICY = "compiler_auto_and_automatic"

METADATA_FIELDS = (
    "benchmark",
    "comparison_scope",
    "architecture",
    "compiler",
    "cpp_standard",
    "compiler_baseline_backend",
    "reist_policy",
    "resolved_reist_backend",
)

RATE_FIELDS = (
    "completed_lane_chains_per_second",
    "updates_per_second",
    "ns_per_update",
)


@dataclasses.dataclass(frozen=True)
class CaseMetadata:
    benchmark: str
    comparison_scope: str
    architecture: str
    compiler: str
    cpp_standard: str
    compiler_baseline_backend: str
    reist_policy: str
    resolved_reist_backend: str


@dataclasses.dataclass(frozen=True)
class ComplexityCase:
    index: int
    modulus: int
    elements: int
    repetitions: int
    trials: int
    status: str
    error: str
    case_directory: str
    benchmark_csv: str
    stdout_path: str
    stderr_path: str
    seconds: Mapping[str, Distribution]
    trial_seconds: Mapping[str, tuple[float, ...]]
    ratios: Mapping[str, Distribution]
    checksum: str
    metadata: CaseMetadata | None


@dataclasses.dataclass(frozen=True)
class OlsFit:
    points: int
    slope: float
    intercept: float
    r_squared: float
    first_elements: int
    last_elements: int
    slope_ci_low: float
    slope_ci_high: float
    bootstrap_iterations: int


@dataclasses.dataclass(frozen=True)
class FitPair:
    all_points: OlsFit
    tail: OlsFit


def non_negative_int(text: str) -> int:
    try:
        value = int(text.replace("_", ""), 10)
    except ValueError as error:
        raise argparse.ArgumentTypeError("expected a non-negative integer") from error
    if value < 0:
        raise argparse.ArgumentTypeError("value must be non-negative")
    return value


def parse_args(argv: Sequence[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Run a fixed-repetition schema-3 REIST complexity sweep and "
            "report empirical log-log fits."
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
        help="new or empty directory for all complexity artifacts",
    )
    parser.add_argument(
        "--sizes",
        type=parse_positive_list,
        default=DEFAULT_SIZES,
        help=(
            "strictly increasing comma-separated element counts (default: "
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
        "--repetitions",
        type=positive_int,
        default=DEFAULT_REPETITIONS,
        help=(
            "fixed repetitions for every size; never rescaled with N "
            f"(default: {DEFAULT_REPETITIONS})"
        ),
    )
    parser.add_argument(
        "--trials",
        type=positive_int,
        default=DEFAULT_TRIALS,
        help=(
            "paired trials; at least six and a multiple of six "
            f"(default: {DEFAULT_TRIALS})"
        ),
    )
    parser.add_argument(
        "--seed",
        type=non_negative_int,
        default=DEFAULT_SEED,
        help=(
            "deterministic case-order and bootstrap seed "
            f"(default: {DEFAULT_SEED})"
        ),
    )
    parser.add_argument(
        "--bootstrap-iterations",
        type=positive_int,
        default=DEFAULT_BOOTSTRAP_ITERATIONS,
        help=(
            "deterministic percentile-bootstrap samples per slope "
            f"(default: {DEFAULT_BOOTSTRAP_ITERATIONS})"
        ),
    )
    parser.add_argument(
        "--affinity-cpu",
        type=non_negative_int,
        default=None,
        metavar="N",
        help=(
            "optionally pin this runner to logical CPU N before starting "
            "benchmarks; child processes inherit the affinity"
        ),
    )
    args = parser.parse_args(argv)

    if args.trials < 6 or args.trials % 6 != 0:
        parser.error("--trials must be at least 6 and a multiple of 6")
    if len(args.sizes) < 2:
        parser.error("--sizes must contain at least two values for an OLS fit")
    if any(left >= right for left, right in zip(args.sizes, args.sizes[1:])):
        parser.error("--sizes must be strictly increasing")
    unsupported = [value for value in args.moduli if value not in DEFAULT_MODULI]
    if unsupported:
        parser.error(
            "--moduli contains values without compile-time kernels: "
            + ", ".join(str(value) for value in unsupported)
        )
    return args


def utc_now() -> str:
    return dt.datetime.now(dt.timezone.utc).isoformat(timespec="seconds")


def set_process_affinity(cpu: int) -> None:
    logical_count = os.cpu_count()
    if logical_count is not None and cpu >= logical_count:
        raise ValidationError(
            f"--affinity-cpu {cpu} is outside the detected 0..{logical_count - 1} range"
        )

    if sys.platform.startswith("linux") and hasattr(os, "sched_setaffinity"):
        try:
            os.sched_setaffinity(0, {cpu})
        except OSError as error:
            raise ValidationError(
                f"could not set Linux process affinity to CPU {cpu}: {error}"
            ) from error
        return

    if os.name == "nt":
        # ctypes is part of the standard library.  Setting the current process
        # before spawning makes normal Windows child processes inherit the mask.
        import ctypes
        from ctypes import wintypes

        pointer_bits = ctypes.sizeof(ctypes.c_void_p) * 8
        if cpu >= pointer_bits:
            raise ValidationError(
                f"CPU {cpu} cannot be represented by this {pointer_bits}-bit affinity mask"
            )
        kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
        kernel32.GetCurrentProcess.restype = wintypes.HANDLE
        kernel32.SetProcessAffinityMask.argtypes = [
            wintypes.HANDLE,
            ctypes.c_size_t,
        ]
        kernel32.SetProcessAffinityMask.restype = wintypes.BOOL
        process = kernel32.GetCurrentProcess()
        if not kernel32.SetProcessAffinityMask(process, ctypes.c_size_t(1 << cpu)):
            error_code = ctypes.get_last_error()
            raise ValidationError(
                f"could not set Windows process affinity to CPU {cpu}: "
                f"Win32 error {error_code}"
            )
        return

    raise ValidationError(
        "--affinity-cpu is unsupported on this platform; omit it to run unpinned"
    )


def parse_finite_positive(row: Mapping[str, str], field: str) -> float:
    text = row.get(field, "")
    try:
        value = float(text)
    except ValueError as error:
        raise ValidationError(f"invalid floating-point value in {field}: {text!r}") from error
    if not math.isfinite(value) or value <= 0.0:
        raise ValidationError(f"{field} must be finite and positive, got {text!r}")
    return value


def close_enough(actual: float, expected: float) -> bool:
    return math.isclose(actual, expected, rel_tol=2.0e-12, abs_tol=1.0e-15)


def validate_metadata_and_rates(
    path: Path,
    *,
    modulus: int,
    elements: int,
    repetitions: int,
    trials: int,
) -> tuple[CaseMetadata, dict[str, tuple[float, ...]]]:
    """Validate fields not interpreted by the shared schema-3 validator."""

    with path.open("r", encoding="utf-8", newline="") as handle:
        reader = csv.DictReader(handle)
        if reader.fieldnames is None:
            raise ValidationError("benchmark CSV has no header")
        required = set(METADATA_FIELDS).union(RATE_FIELDS, {"timestamp_utc"})
        missing = required.difference(reader.fieldnames)
        if missing:
            raise ValidationError(
                "schema-3 CSV is missing metadata/rate columns: "
                + ", ".join(sorted(missing))
            )
        rows = list(reader)
    if not rows:
        raise ValidationError("benchmark CSV contains no rows")

    metadata_values: dict[str, str] = {}
    for field in METADATA_FIELDS:
        values = {row.get(field, "") for row in rows}
        if "" in values or len(values) != 1:
            raise ValidationError(
                f"metadata field {field} must be non-empty and constant: {sorted(values)!r}"
            )
        metadata_values[field] = values.pop()

    if metadata_values["benchmark"] != EXPECTED_BENCHMARK:
        raise ValidationError(
            f"unexpected benchmark {metadata_values['benchmark']!r}"
        )
    if metadata_values["comparison_scope"] != EXPECTED_SCOPE:
        raise ValidationError(
            f"unexpected comparison scope {metadata_values['comparison_scope']!r}"
        )
    if metadata_values["reist_policy"] != EXPECTED_POLICY:
        raise ValidationError(
            f"unexpected REIST policy {metadata_values['reist_policy']!r}"
        )
    if any(not row.get("timestamp_utc", "") for row in rows):
        raise ValidationError("timestamp_utc must be non-empty in every row")

    summary_rows = [row for row in rows if row.get("row_type") == "summary"]
    if any(
        row.get("trial") != "0"
        or row.get("execution_order") != "balanced_all_six_permutations"
        for row in summary_rows
    ):
        raise ValidationError("summary row marker or execution-order marker is invalid")

    expected_updates = elements * repetitions
    for row_number, row in enumerate(rows, start=2):
        seconds = parse_finite_positive(row, "seconds")
        chains_per_second = parse_finite_positive(
            row, "completed_lane_chains_per_second"
        )
        updates_per_second = parse_finite_positive(row, "updates_per_second")
        ns_per_update = parse_finite_positive(row, "ns_per_update")
        expected_chains = elements / seconds
        expected_rate = expected_updates / seconds
        expected_ns = seconds * 1.0e9 / expected_updates
        if not close_enough(chains_per_second, expected_chains):
            raise ValidationError(
                f"row {row_number} completed_lane_chains_per_second disagrees with seconds"
            )
        if not close_enough(updates_per_second, expected_rate):
            raise ValidationError(
                f"row {row_number} updates_per_second disagrees with seconds"
            )
        if not close_enough(ns_per_update, expected_ns):
            raise ValidationError(
                f"row {row_number} ns_per_update disagrees with seconds"
            )

    trial_seconds: dict[str, tuple[float, ...]] = {}
    for implementation in IMPLEMENTATIONS:
        implementation_trials: list[tuple[int, float]] = []
        for row in rows:
            if (
                row.get("row_type") == "trial"
                and row.get("implementation") == implementation
            ):
                try:
                    trial_number = int(row.get("trial", ""), 10)
                except ValueError as error:
                    raise ValidationError(
                        f"invalid trial number for {implementation}: {row.get('trial')!r}"
                    ) from error
                implementation_trials.append(
                    (trial_number, parse_finite_positive(row, "seconds"))
                )
        implementation_trials.sort()
        if [number for number, _seconds in implementation_trials] != list(
            range(1, trials + 1)
        ):
            raise ValidationError(
                f"raw trial timing sequence is incomplete for {implementation}"
            )
        trial_seconds[implementation] = tuple(
            seconds for _number, seconds in implementation_trials
        )

    return CaseMetadata(**metadata_values), trial_seconds


def failed_case(
    *,
    index: int,
    modulus: int,
    elements: int,
    repetitions: int,
    trials: int,
    case_directory: Path,
    stdout_path: Path,
    stderr_path: Path,
    error: str,
) -> ComplexityCase:
    return ComplexityCase(
        index=index,
        modulus=modulus,
        elements=elements,
        repetitions=repetitions,
        trials=trials,
        status="error",
        error=error,
        case_directory=str(case_directory),
        benchmark_csv=str(case_directory / BENCHMARK_CSV),
        stdout_path=str(stdout_path),
        stderr_path=str(stderr_path),
        seconds={},
        trial_seconds={},
        ratios={},
        checksum="",
        metadata=None,
    )


def run_case(
    *,
    binary: Path,
    result_dir: Path,
    index: int,
    modulus: int,
    elements: int,
    repetitions: int,
    trials: int,
) -> ComplexityCase:
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
        return failed_case(
            index=index,
            modulus=modulus,
            elements=elements,
            repetitions=repetitions,
            trials=trials,
            case_directory=case_directory,
            stdout_path=stdout_path,
            stderr_path=stderr_path,
            error=f"could not execute benchmark: {error}",
        )

    if completed.returncode != 0:
        return failed_case(
            index=index,
            modulus=modulus,
            elements=elements,
            repetitions=repetitions,
            trials=trials,
            case_directory=case_directory,
            stdout_path=stdout_path,
            stderr_path=stderr_path,
            error=f"benchmark exited with code {completed.returncode}",
        )

    benchmark_csv = case_directory / BENCHMARK_CSV
    try:
        seconds, ratios, _classifications, checksum = read_case_csv(
            benchmark_csv, modulus, elements, repetitions, trials
        )
        metadata, trial_seconds = validate_metadata_and_rates(
            benchmark_csv,
            modulus=modulus,
            elements=elements,
            repetitions=repetitions,
            trials=trials,
        )
    except (OSError, csv.Error, ValidationError) as error:
        return failed_case(
            index=index,
            modulus=modulus,
            elements=elements,
            repetitions=repetitions,
            trials=trials,
            case_directory=case_directory,
            stdout_path=stdout_path,
            stderr_path=stderr_path,
            error=f"CSV validation failed: {error}",
        )

    return ComplexityCase(
        index=index,
        modulus=modulus,
        elements=elements,
        repetitions=repetitions,
        trials=trials,
        status="pass",
        error="",
        case_directory=str(case_directory),
        benchmark_csv=str(benchmark_csv),
        stdout_path=str(stdout_path),
        stderr_path=str(stderr_path),
        seconds=seconds,
        trial_seconds=trial_seconds,
        ratios=ratios,
        checksum=checksum,
        metadata=metadata,
    )


def ols_log_log(points: Sequence[tuple[int, float]]) -> OlsFit:
    if len(points) < 2:
        raise ValidationError("at least two points are required for OLS")
    xs = [math.log(elements) for elements, _seconds in points]
    ys = [math.log(seconds) for _elements, seconds in points]
    x_mean = math.fsum(xs) / len(xs)
    y_mean = math.fsum(ys) / len(ys)
    sxx = math.fsum((x_value - x_mean) ** 2 for x_value in xs)
    if sxx <= 0.0:
        raise ValidationError("OLS requires at least two distinct element counts")
    sxy = math.fsum(
        (x_value - x_mean) * (y_value - y_mean)
        for x_value, y_value in zip(xs, ys)
    )
    slope = sxy / sxx
    intercept = y_mean - slope * x_mean
    predictions = [intercept + slope * x_value for x_value in xs]
    residual_sum = math.fsum(
        (y_value - prediction) ** 2
        for y_value, prediction in zip(ys, predictions)
    )
    total_sum = math.fsum((y_value - y_mean) ** 2 for y_value in ys)
    if total_sum == 0.0:
        r_squared = 1.0 if residual_sum == 0.0 else 0.0
    else:
        r_squared = 1.0 - residual_sum / total_sum
    return OlsFit(
        points=len(points),
        slope=slope,
        intercept=intercept,
        r_squared=r_squared,
        first_elements=points[0][0],
        last_elements=points[-1][0],
        slope_ci_low=math.nan,
        slope_ci_high=math.nan,
        bootstrap_iterations=0,
    )


def percentile(sorted_values: Sequence[float], probability: float) -> float:
    if not sorted_values:
        raise ValidationError("cannot calculate a percentile of an empty sample")
    position = probability * (len(sorted_values) - 1)
    lower = math.floor(position)
    upper = math.ceil(position)
    if lower == upper:
        return sorted_values[lower]
    fraction = position - lower
    return (
        sorted_values[lower] * (1.0 - fraction)
        + sorted_values[upper] * fraction
    )


def derived_seed(
    seed: int, modulus: int, implementation: str, scope: str
) -> int:
    material = f"{seed}|{modulus}|{implementation}|{scope}".encode("utf-8")
    return int.from_bytes(hashlib.sha256(material).digest()[:16], "big")


def bootstrap_fit(
    cases: Sequence[ComplexityCase],
    implementation: str,
    iterations: int,
    rng_seed: int,
) -> OlsFit:
    base_points = [
        (case.elements, case.seconds[implementation].median) for case in cases
    ]
    base = ols_log_log(base_points)
    rng = random.Random(rng_seed)
    slopes: list[float] = []
    for _iteration in range(iterations):
        sampled_points: list[tuple[int, float]] = []
        for case in cases:
            values = case.trial_seconds[implementation]
            sampled = [values[rng.randrange(len(values))] for _ in values]
            sampled_points.append((case.elements, statistics.median(sampled)))
        slopes.append(ols_log_log(sampled_points).slope)
    slopes.sort()
    return dataclasses.replace(
        base,
        slope_ci_low=percentile(slopes, 0.025),
        slope_ci_high=percentile(slopes, 0.975),
        bootstrap_iterations=iterations,
    )


def build_fits(
    results: Sequence[ComplexityCase],
    moduli: Sequence[int],
    sizes: Sequence[int],
    seed: int,
    bootstrap_iterations: int,
) -> dict[tuple[int, str], FitPair]:
    by_case = {(result.modulus, result.elements): result for result in results}
    tail_sizes = tuple(sizes[-min(TAIL_POINT_COUNT, len(sizes)):])
    fits: dict[tuple[int, str], FitPair] = {}
    for modulus in moduli:
        for implementation in IMPLEMENTATIONS:
            cases = [by_case[(modulus, elements)] for elements in sizes]
            tail_cases = [case for case in cases if case.elements in tail_sizes]
            fits[(modulus, implementation)] = FitPair(
                all_points=bootstrap_fit(
                    cases,
                    implementation,
                    bootstrap_iterations,
                    derived_seed(seed, modulus, implementation, "all"),
                ),
                tail=bootstrap_fit(
                    tail_cases,
                    implementation,
                    bootstrap_iterations,
                    derived_seed(seed, modulus, implementation, "tail"),
                ),
            )
    return fits


def doubling_metrics(
    result: ComplexityCase,
    implementation: str,
    by_case: Mapping[tuple[int, int], ComplexityCase],
) -> tuple[int | None, float | None, float | None]:
    if result.status != "pass" or implementation not in result.seconds:
        return None, None, None
    if result.elements % 2 != 0:
        return None, None, None
    previous_elements = result.elements // 2
    previous = by_case.get((result.modulus, previous_elements))
    if previous is None or previous.status != "pass":
        return None, None, None
    ratio = (
        result.seconds[implementation].median
        / previous.seconds[implementation].median
    )
    return previous_elements, ratio, math.log2(ratio)


def optional_number(value: float | int | None) -> str:
    if value is None:
        return ""
    if isinstance(value, int):
        return str(value)
    return format(value, ".17g")


def distribution_value(
    source: Mapping[str, Distribution], key: str, field: str
) -> str:
    distribution = source.get(key)
    return "" if distribution is None else format(getattr(distribution, field), ".17g")


def consolidated_fields() -> list[str]:
    fields = [
        "runner_schema",
        "case_index",
        "status",
        "error",
        "modulus",
        "elements",
        "repetitions_fixed",
        "trials",
        "schedule_seed",
        "affinity_cpu",
        "implementation",
        "median_seconds",
        "seconds_q1",
        "seconds_q3",
        "seconds_iqr",
        "median_ns_per_update",
        "ns_per_update_q1",
        "ns_per_update_q3",
        "doubling_from_elements",
        "doubling_time_ratio",
        "doubling_local_exponent_log2",
        "ols_all_points",
        "ols_all_slope",
        "ols_all_slope_ci95_low",
        "ols_all_slope_ci95_high",
        "ols_bootstrap_iterations",
        "ols_all_intercept_ln_seconds",
        "ols_all_r_squared",
        "ols_tail_points",
        "ols_tail_first_elements",
        "ols_tail_last_elements",
        "ols_tail_slope",
        "ols_tail_slope_ci95_low",
        "ols_tail_slope_ci95_high",
        "ols_tail_intercept_ln_seconds",
        "ols_tail_r_squared",
    ]
    for short_name, _prefix, _description in RATIO_SPECS:
        fields.extend(
            [
                f"speedup_{short_name}_median",
                f"speedup_{short_name}_q1",
                f"speedup_{short_name}_q3",
                f"speedup_{short_name}_iqr",
            ]
        )
    fields.extend(
        [
            *METADATA_FIELDS,
            "checksum",
            "case_directory",
            "benchmark_csv",
            "stdout_path",
            "stderr_path",
        ]
    )
    return fields


def consolidated_row(
    result: ComplexityCase,
    implementation: str,
    fits: Mapping[tuple[int, str], FitPair],
    by_case: Mapping[tuple[int, int], ComplexityCase],
    seed: int,
    affinity_cpu: int | None,
) -> dict[str, object]:
    distribution = result.seconds.get(implementation)
    updates = result.elements * result.repetitions
    previous_elements, doubling_ratio, local_exponent = doubling_metrics(
        result, implementation, by_case
    )
    fit_pair = fits.get((result.modulus, implementation))
    row: dict[str, object] = {
        "runner_schema": 1,
        "case_index": result.index,
        "status": result.status,
        "error": result.error,
        "modulus": result.modulus,
        "elements": result.elements,
        "repetitions_fixed": result.repetitions,
        "trials": result.trials,
        "schedule_seed": seed,
        "affinity_cpu": optional_number(affinity_cpu),
        "implementation": implementation,
        "median_seconds": "" if distribution is None else format(distribution.median, ".17g"),
        "seconds_q1": "" if distribution is None else format(distribution.q1, ".17g"),
        "seconds_q3": "" if distribution is None else format(distribution.q3, ".17g"),
        "seconds_iqr": "" if distribution is None else format(distribution.iqr, ".17g"),
        "median_ns_per_update": "" if distribution is None else format(distribution.median * 1.0e9 / updates, ".17g"),
        "ns_per_update_q1": "" if distribution is None else format(distribution.q1 * 1.0e9 / updates, ".17g"),
        "ns_per_update_q3": "" if distribution is None else format(distribution.q3 * 1.0e9 / updates, ".17g"),
        "doubling_from_elements": optional_number(previous_elements),
        "doubling_time_ratio": optional_number(doubling_ratio),
        "doubling_local_exponent_log2": optional_number(local_exponent),
        "ols_all_points": "" if fit_pair is None else fit_pair.all_points.points,
        "ols_all_slope": "" if fit_pair is None else format(fit_pair.all_points.slope, ".17g"),
        "ols_all_slope_ci95_low": "" if fit_pair is None else format(fit_pair.all_points.slope_ci_low, ".17g"),
        "ols_all_slope_ci95_high": "" if fit_pair is None else format(fit_pair.all_points.slope_ci_high, ".17g"),
        "ols_bootstrap_iterations": "" if fit_pair is None else fit_pair.all_points.bootstrap_iterations,
        "ols_all_intercept_ln_seconds": "" if fit_pair is None else format(fit_pair.all_points.intercept, ".17g"),
        "ols_all_r_squared": "" if fit_pair is None else format(fit_pair.all_points.r_squared, ".17g"),
        "ols_tail_points": "" if fit_pair is None else fit_pair.tail.points,
        "ols_tail_first_elements": "" if fit_pair is None else fit_pair.tail.first_elements,
        "ols_tail_last_elements": "" if fit_pair is None else fit_pair.tail.last_elements,
        "ols_tail_slope": "" if fit_pair is None else format(fit_pair.tail.slope, ".17g"),
        "ols_tail_slope_ci95_low": "" if fit_pair is None else format(fit_pair.tail.slope_ci_low, ".17g"),
        "ols_tail_slope_ci95_high": "" if fit_pair is None else format(fit_pair.tail.slope_ci_high, ".17g"),
        "ols_tail_intercept_ln_seconds": "" if fit_pair is None else format(fit_pair.tail.intercept, ".17g"),
        "ols_tail_r_squared": "" if fit_pair is None else format(fit_pair.tail.r_squared, ".17g"),
        "checksum": result.checksum,
        "case_directory": result.case_directory,
        "benchmark_csv": result.benchmark_csv,
        "stdout_path": result.stdout_path,
        "stderr_path": result.stderr_path,
    }
    for short_name, _prefix, _description in RATIO_SPECS:
        for field in ("median", "q1", "q3", "iqr"):
            row[f"speedup_{short_name}_{field}"] = distribution_value(
                result.ratios, short_name, field
            )
    for field in METADATA_FIELDS:
        row[field] = "" if result.metadata is None else getattr(result.metadata, field)
    return row


def write_consolidated_csv(
    path: Path,
    results: Sequence[ComplexityCase],
    fits: Mapping[tuple[int, str], FitPair],
    seed: int,
    affinity_cpu: int | None,
) -> None:
    fields = consolidated_fields()
    by_case = {(result.modulus, result.elements): result for result in results}
    with path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields, extrasaction="raise")
        writer.writeheader()
        for result in sorted(results, key=lambda item: (item.modulus, item.elements)):
            for implementation in IMPLEMENTATIONS:
                writer.writerow(
                    consolidated_row(
                        result,
                        implementation,
                        fits,
                        by_case,
                        seed,
                        affinity_cpu,
                    )
                )


def relative_link(target: str, parent: Path) -> str:
    try:
        return Path(os.path.relpath(target, parent)).as_posix()
    except ValueError:
        return target


def markdown_escape(text: object) -> str:
    return str(text).replace("|", "\\|").replace("\n", " ")


def format_time(distribution: Distribution) -> str:
    return (
        f"{distribution.median:.6g} "
        f"[{distribution.q1:.6g}, {distribution.q3:.6g}]"
    )


def write_report(
    path: Path,
    *,
    results: Sequence[ComplexityCase],
    fits: Mapping[tuple[int, str], FitPair],
    binary: Path,
    binary_sha256: str,
    sizes: Sequence[int],
    moduli: Sequence[int],
    repetitions: int,
    trials: int,
    seed: int,
    bootstrap_iterations: int,
    affinity_cpu: int | None,
    started_utc: str,
    finished_utc: str,
    run_metadata_consistent: bool,
    binary_unchanged: bool,
) -> None:
    results = sorted(results, key=lambda item: (item.modulus, item.elements))
    successful = [result for result in results if result.status == "pass"]
    failed = [result for result in results if result.status != "pass"]
    tail_sizes = sizes[-min(TAIL_POINT_COUNT, len(sizes)):]
    lines = [
        "# REIST intrinsic empirical complexity report",
        "",
        "This report characterizes the measured benchmark; it is **not a "
        "mathematical proof of a Big-O or Θ bound**. Compiler transformations, "
        "timer overhead, cache boundaries, memory bandwidth, frequency scaling, "
        "and the selected host can affect the fitted exponent.",
        "",
        f"- Started UTC: `{started_utc}`",
        f"- Finished UTC: `{finished_utc}`",
        f"- Binary: `{binary}`",
        f"- Binary SHA-256: `{binary_sha256}`",
        f"- Host: `{platform.platform()}` / `{platform.machine()}`",
        f"- Python: `{platform.python_version()}`",
        f"- Sizes ({len(sizes)}): `{', '.join(str(value) for value in sizes)}`",
        f"- Moduli ({len(moduli)}): `{', '.join(str(value) for value in moduli)}`",
        f"- Fixed repetitions for every size: `{repetitions}`",
        f"- Trials: `{trials}`; all six execution orders are equally represented",
        f"- Deterministic shuffled case-order seed: `{seed}`",
        f"- Slope bootstrap iterations: `{bootstrap_iterations}` per fit",
        f"- Process affinity: `{'unrestricted' if affinity_cpu is None else f'logical CPU {affinity_cpu}'}`",
        f"- Validated cases: **{len(successful)}/{len(results)}**",
        f"- Run metadata consistent across cases: **{'yes' if run_metadata_consistent else 'no'}**",
        f"- Binary hash still matches after run: **{'yes' if binary_unchanged else 'no'}**",
        "",
        "## Method",
        "",
        "For each implementation and modulus, OLS fits `ln(T) = a + p ln(N)`. "
        "The slope `p` is an empirical exponent and R² describes only how well "
        "that log-log line fits these measured points. The all-point fit uses "
        "every requested size; the large-tail fit uses the last "
        f"{len(tail_sizes)} sizes: `{', '.join(str(value) for value in tail_sizes)}`.",
        "Cases were executed in a deterministic pseudo-random order to spread "
        "time-dependent host effects; the tables and consolidated CSV are "
        "sorted logically by modulus and N.",
        "",
        "The 95% slope intervals are deterministic nonparametric percentile "
        "bootstraps: trial times are resampled with replacement independently "
        "at each N, their median is recomputed, and the slope is refitted. They "
        "describe this trial sample only and are not confidence bounds for a "
        "mathematical complexity class.",
        "",
        "`T(2N)/T(N)` and `log2(T(2N)/T(N))` are reported only where both exact "
        "doubling sizes were requested. With fixed repetitions, an ideally "
        "linear measured kernel would tend toward ratio 2 and local exponent 1; "
        "this is a diagnostic expectation, not a pass condition.",
        "",
        "## Structural complexity",
        "",
        "Each timed path performs R passes over N fixed-width elements (or "
        "over fixed-width SIMD blocks plus a bounded tail). On the usual "
        "fixed-width word-RAM model this gives `Theta(N * R)` time and "
        "`Theta(N)` live array storage. Because this runner keeps R fixed, "
        "the expected N-scaling is `Theta(N)`. A fixed SIMD width can change "
        "the constant factor but not that asymptotic class.",
        "",
        "This conclusion comes from the measured kernel's loop structure; "
        "the fitted exponent below is finite-range corroborating evidence, "
        "not its mathematical basis. In particular, a fit spanning a cache "
        "or memory-bandwidth transition can temporarily produce `p > 1`.",
        "",
        "## Log-log OLS fits",
        "",
    ]

    complete = (
        not failed
        and run_metadata_consistent
        and binary_unchanged
        and len(fits) == len(moduli) * len(IMPLEMENTATIONS)
    )
    by_case = {(result.modulus, result.elements): result for result in results}
    if not complete:
        lines.extend(
            [
                "Fits are withheld because the requested matrix is incomplete "
                "or run metadata changed between cases. No successful subset is "
                "silently substituted.",
                "",
            ]
        )
    else:
        lines.extend(
            [
                "| B | Implementation | All N | All slope p [95% bootstrap] | All R² | Tail N | Tail slope p [95% bootstrap] | Tail R² |",
                "|---:|---|---:|---:|---:|---:|---:|---:|",
            ]
        )
        for modulus in moduli:
            for implementation in IMPLEMENTATIONS:
                pair = fits[(modulus, implementation)]
                lines.append(
                    f"| {modulus} | `{implementation}` | {pair.all_points.points} | "
                    f"{pair.all_points.slope:.6f} [{pair.all_points.slope_ci_low:.6f}, {pair.all_points.slope_ci_high:.6f}] | "
                    f"{pair.all_points.r_squared:.6f} | {pair.tail.points} | "
                    f"{pair.tail.slope:.6f} [{pair.tail.slope_ci_low:.6f}, {pair.tail.slope_ci_high:.6f}] | "
                    f"{pair.tail.r_squared:.6f} |"
                )

        all_slopes = [pair.all_points.slope for pair in fits.values()]
        tail_slopes = [pair.tail.slope for pair in fits.values()]
        largest_elements = max(sizes)
        largest_cases = [
            by_case[(modulus, largest_elements)] for modulus in moduli
        ]
        largest_ratios: list[float] = []
        largest_exponents: list[float] = []
        largest_ns_per_update: list[float] = []
        for result in largest_cases:
            for implementation in IMPLEMENTATIONS:
                _previous, ratio, local_exponent = doubling_metrics(
                    result, implementation, by_case
                )
                if ratio is not None and local_exponent is not None:
                    largest_ratios.append(ratio)
                    largest_exponents.append(local_exponent)
                largest_ns_per_update.append(
                    result.seconds[implementation].median
                    * 1.0e9
                    / (result.elements * result.repetitions)
                )
        lines.extend(
            [
                "",
                "### Finite-range numerical summary",
                "",
                f"Across all complete implementation/modulus pairs, the "
                f"all-size slopes range from {min(all_slopes):.6f} to "
                f"{max(all_slopes):.6f}; the reported large-tail slopes range "
                f"from {min(tail_slopes):.6f} to {max(tail_slopes):.6f}.",
            ]
        )
        if largest_ratios:
            lines.append(
                f"At the final exact doubling to N={largest_elements}, the "
                f"doubling ratios range from {min(largest_ratios):.6f} to "
                f"{max(largest_ratios):.6f}, the corresponding local "
                f"exponents from {min(largest_exponents):.6f} to "
                f"{max(largest_exponents):.6f}, and median ns/update from "
                f"{min(largest_ns_per_update):.6f} to "
                f"{max(largest_ns_per_update):.6f}."
            )
        lines.extend(
            [
                "These are descriptive ranges over this host and run, not "
                "acceptance thresholds or a replacement for the complete "
                "per-point table.",
                "",
            ]
        )

    lines.extend(
        [
            "",
            "## Complete measured points",
            "",
            "Times are median `[Q1, Q3]`; ns/update is derived from the median "
            "time and `N × fixed repetitions`. No timing value determines "
            "whether a case passes validation.",
            "",
            "| # | B | N | Implementation | Seconds median [Q1,Q3] | ns/update | T(2N)/T(N) | Local p | Raw CSV |",
            "|---:|---:|---:|---|---:|---:|---:|---:|---|",
        ]
    )
    for result in results:
        if result.status != "pass":
            for implementation in IMPLEMENTATIONS:
                lines.append(
                    f"| {result.index} | {result.modulus} | {result.elements} | "
                    f"`{implementation}` | ERROR | ERROR | — | — | — |"
                )
            continue
        csv_link = relative_link(result.benchmark_csv, path.parent)
        for implementation in IMPLEMENTATIONS:
            distribution = result.seconds[implementation]
            ns_per_update = (
                distribution.median * 1.0e9
                / (result.elements * result.repetitions)
            )
            _previous, ratio, local_exponent = doubling_metrics(
                result, implementation, by_case
            )
            ratio_text = "—" if ratio is None else f"{ratio:.6f}"
            exponent_text = "—" if local_exponent is None else f"{local_exponent:.6f}"
            lines.append(
                f"| {result.index} | {result.modulus} | {result.elements} | "
                f"`{implementation}` | {format_time(distribution)} | "
                f"{ns_per_update:.6f} | {ratio_text} | {exponent_text} | "
                f"[CSV]({csv_link}) |"
            )

    lines.extend(
        [
            "",
            "## Pairwise REIST comparisons",
            "",
            "These ratios are included for context but do not enter the "
            "complexity fit.",
            "",
            "| # | B | N | Constant/automatic | Constant/compiler_auto | Compiler_auto/automatic |",
            "|---:|---:|---:|---:|---:|---:|",
        ]
    )
    for result in results:
        if result.status != "pass":
            lines.append(
                f"| {result.index} | {result.modulus} | {result.elements} | ERROR | ERROR | ERROR |"
            )
            continue
        lines.append(
            f"| {result.index} | {result.modulus} | {result.elements} | "
            f"{result.ratios['const_over_automatic'].median:.6f} | "
            f"{result.ratios['const_over_compiler_auto'].median:.6f} | "
            f"{result.ratios['compiler_auto_over_automatic'].median:.6f} |"
        )

    if failed or not run_metadata_consistent or not binary_unchanged:
        lines.extend(
            [
                "",
                "## Invalid or inconsistent run",
                "",
            ]
        )
        if not run_metadata_consistent:
            lines.append(
                "The architecture/compiler/backend metadata was not identical "
                "for every successful case. The run is therefore not treated "
                "as one comparable measurement series."
            )
            lines.append("")
        if not binary_unchanged:
            lines.append(
                "The benchmark executable hash no longer matches after the sweep. Fits are "
                "withheld because the cases may not come from one binary."
            )
            lines.append("")
        if failed:
            lines.extend(
                [
                    "| # | B | N | Error | stdout | stderr |",
                    "|---:|---:|---:|---|---|---|",
                ]
            )
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
            "## Interpretation boundary",
            "",
            "The benchmark measures prepared, repeated modular addition. It "
            "does not include input preparation and is not an end-to-end "
            "cryptographic workload. A slope near one with a high R² is evidence "
            "consistent with linear scaling over the measured interval; it does "
            "not establish behavior for arbitrary N, other machines, other "
            "compilers, or other algorithms.",
            "",
        ]
    )
    path.write_text("\n".join(lines), encoding="utf-8")


def main(argv: Sequence[str] | None = None) -> int:
    args = parse_args(sys.argv[1:] if argv is None else argv)
    try:
        binary, result_dir = prepare_paths(args.binary, args.result_dir)
        binary_sha256 = sha256_file(binary)
        if args.affinity_cpu is not None:
            set_process_affinity(args.affinity_cpu)
    except (OSError, ValidationError) as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 2

    started_utc = utc_now()
    results: list[ComplexityCase] = []
    schedule = [
        (modulus, elements)
        for modulus in args.moduli
        for elements in args.sizes
    ]
    random.Random(args.seed).shuffle(schedule)
    total = len(schedule)
    for index, (modulus, elements) in enumerate(schedule, start=1):
        print(
            f"[{index}/{total}] B={modulus}, N={elements}, "
            f"fixed repetitions={args.repetitions}",
            flush=True,
        )
        result = run_case(
            binary=binary,
            result_dir=result_dir,
            index=index,
            modulus=modulus,
            elements=elements,
            repetitions=args.repetitions,
            trials=args.trials,
        )
        results.append(result)
        if result.status != "pass":
            print(f"  ERROR: {result.error}", file=sys.stderr, flush=True)

    successful = [result for result in results if result.status == "pass"]
    signatures = {
        dataclasses.astuple(result.metadata)
        for result in successful
        if result.metadata is not None
    }
    run_metadata_consistent = bool(successful) and len(signatures) == 1
    try:
        binary_unchanged = sha256_file(binary) == binary_sha256
    except OSError as error:
        print(f"ERROR: could not re-hash benchmark binary: {error}", file=sys.stderr)
        binary_unchanged = False
    if not binary_unchanged:
        print("ERROR: benchmark binary hash changed by the end of the sweep", file=sys.stderr)
    complete = (
        len(successful) == len(results)
        and run_metadata_consistent
        and binary_unchanged
    )

    fits: dict[tuple[int, str], FitPair] = {}
    if complete:
        try:
            fits = build_fits(
                results,
                args.moduli,
                args.sizes,
                args.seed,
                args.bootstrap_iterations,
            )
        except ValidationError as error:
            print(f"ERROR: could not compute OLS fits: {error}", file=sys.stderr)
            complete = False

    finished_utc = utc_now()
    csv_path = result_dir / CONSOLIDATED_CSV
    report_path = result_dir / REPORT_MARKDOWN
    try:
        write_consolidated_csv(
            csv_path,
            results,
            fits,
            args.seed,
            args.affinity_cpu,
        )
        write_report(
            report_path,
            results=results,
            fits=fits,
            binary=binary,
            binary_sha256=binary_sha256,
            sizes=args.sizes,
            moduli=args.moduli,
            repetitions=args.repetitions,
            trials=args.trials,
            seed=args.seed,
            bootstrap_iterations=args.bootstrap_iterations,
            affinity_cpu=args.affinity_cpu,
            started_utc=started_utc,
            finished_utc=finished_utc,
            run_metadata_consistent=run_metadata_consistent,
            binary_unchanged=binary_unchanged,
        )
    except OSError as error:
        print(f"ERROR: could not write complexity artifacts: {error}", file=sys.stderr)
        return 2

    print(f"Complete CSV: {csv_path}")
    print(f"Complexity report: {report_path}")
    if not complete:
        failed_count = len(results) - len(successful)
        print(
            f"ERROR: incomplete complexity matrix ({failed_count} invalid cases; "
            f"metadata consistent={run_metadata_consistent}; "
            f"binary unchanged={binary_unchanged})",
            file=sys.stderr,
        )
        return 1
    print(
        f"Complete fixed-repetition matrix validated: {len(results)} cases; "
        f"{len(fits)} implementation/modulus fit pairs"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
