#!/usr/bin/env python3
"""Plot only benchmark data tied to a successful runner manifest.

The old script selected files by timestamp glob and could accidentally mix
different builds or consume a stale CSV.  This version resolves CSV artifacts
through ``run_benchmarks.py`` manifests and verifies their SHA-256 hashes first.
"""

from __future__ import annotations

import argparse
import csv
import datetime as dt
import hashlib
import json
import pathlib
import platform
import sys
from dataclasses import dataclass

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

from generate_benchmark_report import (
    load_run_manifest as load_verified_manifest,
    calculate_repository_state,
)


REPOSITORY_ROOT = pathlib.Path(__file__).resolve().parents[1]

@dataclass
class DataSet:
    label: str
    manifest: pathlib.Path
    quick: bool
    dirty: bool = False
    build_verified: bool = True
    modadd: tuple[list[int], list[float]] | None = None
    poly: tuple[list[int], list[float]] | None = None


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def load_modadd(path: pathlib.Path) -> tuple[list[int], list[float]]:
    with path.open(newline="", encoding="utf-8") as handle:
        rows = list(csv.DictReader(handle))

    points: list[tuple[int, float]] = []
    keys = sorted({(int(row["modulus"]), row.get("mode", "")) for row in rows})
    for modulus, mode in keys:
        selected = [
            row for row in rows
            if int(row["modulus"]) == modulus and row.get("mode", "") == mode
        ]
        classic = next(
            (row for row in selected if row["scenario"] == "classic_mod"), None
        )
        reist = next(
            (row for row in selected if row["scenario"] == "reist_sym"), None
        )
        if classic is None or reist is None:
            continue
        classic_seconds = float(classic["seconds"])
        reist_seconds = float(reist["seconds"])
        if classic_seconds <= 0.0 or reist_seconds <= 0.0:
            raise ValueError(f"non-positive timing in {path}")
        points.append((modulus, classic_seconds / reist_seconds))

    if not points:
        raise ValueError(f"no paired classic/REIST rows in {path}")
    return ([point[0] for point in points], [point[1] for point in points])


def load_poly(path: pathlib.Path) -> tuple[list[int], list[float]]:
    with path.open(newline="", encoding="utf-8") as handle:
        rows = list(csv.DictReader(handle))
    points = [(int(row["q"]), float(row["speedup"])) for row in rows]
    if not points or any(speedup <= 0.0 for _, speedup in points):
        raise ValueError(f"invalid polynomial timing rows in {path}")
    points.sort()
    return ([point[0] for point in points], [point[1] for point in points])


def load_manifest(path: pathlib.Path, allow_quick: bool) -> DataSet:
    bundle = load_verified_manifest(path, allow_quick=allow_quick)
    document = bundle["data"]
    current_status, current_state_hash = calculate_repository_state(path.parent)
    repository = document.get("repository", {})
    if (current_status != repository.get("status")
            or current_state_hash != repository.get("state_sha256")):
        raise ValueError(f"repository state changed after runner manifest {path}")
    quick = bool(document.get("quick"))

    build = document.get("build")
    data = DataSet(
        str(document.get("label", path.stem)),
        path,
        quick,
        bool(document.get("repository", {}).get("status")),
        bool(build["verified"]),
    )
    for records in bundle["artifacts"].values():
        for artifact_record in records:
            artifact = artifact_record["path"]
            if artifact.name == "results_modadd_suite.csv":
                data.modadd = load_modadd(artifact)
            elif artifact.name == "results_poly_mod.csv":
                data.poly = load_poly(artifact)

    return data


def discover_manifests(
    result_dir: pathlib.Path,
    explicit: list[pathlib.Path],
    prefix: str | None,
) -> list[pathlib.Path]:
    candidates = explicit or list(result_dir.glob("*_MANIFEST.json"))
    if prefix:
        candidates = [path for path in candidates if path.name.startswith(prefix)]
    if not candidates:
        raise ValueError(f"no runner manifests found in {result_dir}")

    records: list[tuple[pathlib.Path, dict[str, object]]] = []
    for path in candidates:
        document = json.loads(path.read_text(encoding="utf-8"))
        session_id = document.get("session_id")
        if not isinstance(session_id, str) or not session_id:
            if explicit:
                raise ValueError(f"manifest has no session_id: {path}")
            continue
        records.append((path, document))
    if not records:
        raise ValueError("no session-bound runner manifests found")

    sessions = {str(document["session_id"]) for _, document in records}
    if explicit and len(sessions) != 1:
        raise ValueError("explicit manifests belong to different sessions")
    if not explicit:
        newest_session = max(
            sessions,
            key=lambda session: max(
                path.stat().st_mtime_ns
                for path, document in records
                if document["session_id"] == session
            ),
        )
        records = [
            (path, document) for path, document in records
            if document["session_id"] == newest_session
        ]

    by_label: dict[str, tuple[pathlib.Path, dict[str, object]]] = {}
    for path, document in records:
        label = str(document.get("label", path.stem))
        if label not in {"O0", "O3", "SIMD"}:
            if explicit:
                raise ValueError(f"unexpected profile label in {path}: {label}")
            continue
        if label in by_label:
            raise ValueError(f"selected session contains duplicate {label} manifests")
        by_label[label] = (path, document)

    missing = sorted({"O0", "O3", "SIMD"} - set(by_label))
    if missing:
        raise ValueError(
            "selected session is incomplete; missing profiles: " + ", ".join(missing)
        )

    selected = list(by_label.values())
    identity = {
        (
            document.get("repository", {}).get("commit"),
            document.get("repository", {}).get("state_sha256"),
            document.get("host", {}).get("platform"),
            document.get("host", {}).get("machine"),
            document.get("host", {}).get("processor"),
            document.get("build", {}).get("system"),
            document.get("build", {}).get("compiler", {}).get("executable"),
            document.get("build", {}).get("compiler", {}).get("version"),
            document.get("runner_sha256"),
        )
        for _, document in selected
    }
    if len(identity) != 1:
        raise ValueError("selected manifests differ in source state or host")
    return sorted((path for path, _ in selected), key=lambda item: item.name)


def legacy_data(result_dir: pathlib.Path) -> list[DataSet]:
    """Explicit escape hatch for old, unverified flat CSV collections."""
    modadd_files = sorted(
        result_dir.rglob("*results_modadd_suite.csv"),
        key=lambda path: path.stat().st_mtime_ns,
    )
    poly_files = sorted(
        result_dir.rglob("*results_poly_mod.csv"),
        key=lambda path: path.stat().st_mtime_ns,
    )
    data = DataSet("UNVERIFIED-LEGACY", result_dir, False)
    if modadd_files:
        data.modadd = load_modadd(modadd_files[-1])
    if poly_files:
        data.poly = load_poly(poly_files[-1])
    if data.modadd is None and data.poly is None:
        raise ValueError(f"no legacy CSV data found in {result_dir}")
    return [data]


def plot(
    datasets: list[DataSet],
    kind: str,
    output: pathlib.Path,
) -> bool:
    available = [data for data in datasets if getattr(data, kind) is not None]
    if not available:
        return False

    fig, axis = plt.subplots(figsize=(10, 6))
    markers = ["o", "s", "^", "D", "v", "P"]
    for index, data in enumerate(available):
        x_values, speedups = getattr(data, kind)
        qualifiers = []
        if data.quick:
            qualifiers.append("quick")
        if data.dirty:
            qualifiers.append("dirty")
        if not data.build_verified:
            qualifiers.append("declared build")
        label = data.label + (f" ({', '.join(qualifiers)})" if qualifiers else "")
        axis.plot(
            x_values,
            speedups,
            marker=markers[index % len(markers)],
            linewidth=2,
            label=label,
        )

    noun = "Modular addition" if kind == "modadd" else "Polynomial addition"
    if any(data.label == "UNVERIFIED-LEGACY" for data in available):
        qualifier = "UNVERIFIED LEGACY DATA (not reportable)"
    elif any(data.quick or data.dirty or not data.build_verified
             for data in available):
        reasons = []
        if any(data.quick for data in available):
            reasons.append("QUICK/SMOKE")
        if any(data.dirty for data in available):
            reasons.append("DIRTY WORKTREE")
        if any(not data.build_verified for data in available):
            reasons.append("DECLARED BUILD")
        qualifier = " + ".join(reasons) + " DATA (not reportable)"
    else:
        qualifier = "validated optimization comparison"
    axis.set_xlabel("Modulus B" if kind == "modadd" else "Modulus q")
    axis.set_ylabel("Speedup (classic / canonical REIST)")
    axis.set_title(f"{noun}: {qualifier}")
    axis.set_xscale("log")
    axis.grid(True, alpha=0.3)
    axis.legend()
    fig.tight_layout()
    fig.savefig(output, dpi=300, bbox_inches="tight")
    plt.close(fig)
    print(f"Saved {output}")
    return True


def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Plot hash-verified REIST runner artifacts"
    )
    parser.add_argument("--result-dir", type=pathlib.Path)
    parser.add_argument("--manifest", action="append", type=pathlib.Path, default=[])
    parser.add_argument("--prefix")
    parser.add_argument("--output-prefix")
    parser.add_argument("--allow-quick", action="store_true")
    parser.add_argument(
        "--legacy",
        action="store_true",
        help="explicitly plot newest historical CSVs without claiming validation",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_arguments()
    machine = platform.machine().lower()
    family = "arm" if machine in {"aarch64", "arm64"} or machine.startswith("arm") else "x86"
    result_dir = (args.result_dir or
                  REPOSITORY_ROOT / "tests" / "results" / family)

    try:
        if args.legacy:
            datasets = legacy_data(result_dir)
        else:
            manifests = discover_manifests(result_dir, args.manifest, args.prefix)
            datasets = [load_manifest(path, args.allow_quick) for path in manifests]

        prefix = args.output_prefix or dt.datetime.now().strftime("%Y%m%d_%H%M%S")
        result_dir.mkdir(parents=True, exist_ok=True)
        modadd_output = result_dir / f"{prefix}_optimization_comparison_modadd.png"
        poly_output = result_dir / f"{prefix}_optimization_comparison_poly.png"
        produced = plot(datasets, "modadd", modadd_output)
        produced = plot(datasets, "poly", poly_output) or produced
        if not produced:
            raise ValueError("selected manifests contain no plottable CSV artifacts")
        return 0
    except (OSError, ValueError, KeyError, json.JSONDecodeError) as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
