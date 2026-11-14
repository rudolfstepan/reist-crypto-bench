#!/usr/bin/env python3
"""Verify an archived paper experiment without the original build tree."""

import argparse
import csv
import json
from pathlib import Path

from run_paper_benchmarks import digest, summarize, validate


def verify(directory: Path) -> list[dict]:
    directory = directory.resolve()
    manifest = json.loads((directory / "MANIFEST.json").read_text(encoding="utf-8"))
    if manifest["schema"] != 1 or manifest["status"] != "passed":
        raise ValueError("archive is incomplete or failed")
    if len(manifest["cases"]) != len(manifest["planned_cases"]):
        raise ValueError("case matrix is incomplete")
    actual_files = {
        path.relative_to(directory).as_posix()
        for path in directory.rglob("*")
        if path.is_file() and path.name != "MANIFEST.json"
    }
    if actual_files != set(manifest["artifacts"]):
        raise ValueError("artifact inventory differs from manifest")
    for name, expected in manifest["artifacts"].items():
        path = (directory / name).resolve()
        path.relative_to(directory)
        if digest(path) != expected:
            raise ValueError(f"artifact hash mismatch: {name}")
    results = []
    for case, planned in zip(manifest["cases"], manifest["planned_cases"]):
        if case["returncode"] != 0 or case["parameters"] != planned:
            raise ValueError("failed or mismatched case")
        rows = validate(
            directory / "cases" / case["id"] / "paper_trials.csv",
            planned,
            manifest["trials"],
        )
        results.append(summarize(rows, planned, case["id"]))
    for name, expected in manifest["sources"].items():
        if digest(directory / "source" / name) != expected:
            raise ValueError(f"source snapshot mismatch: {name}")
    with (directory / "SUMMARY.csv").open(newline="", encoding="utf-8") as handle:
        stored_summary = list(csv.DictReader(handle))
    expected_summary = [
        {key: "" if value is None else str(value) for key, value in row.items()}
        for row in results
    ]
    if stored_summary != expected_summary:
        raise ValueError("summary differs from raw trial statistics")
    return results


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("directory", type=Path)
    args = parser.parse_args()
    print(
        f"Verified {len(verify(args.directory))} complete cases and all artifact hashes."
    )
