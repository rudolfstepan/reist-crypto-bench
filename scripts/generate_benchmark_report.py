#!/usr/bin/env python3
"""
Generate comprehensive benchmark documentation comparing O0, O3, and SIMD optimizations.
Creates markdown report with tables, charts, system information AND
compiler artifact analysis for explicitly manifested benchmark kernels.
"""

import os
import re
import glob
import hashlib
import json
import platform
import shutil
import subprocess
from pathlib import Path
from datetime import datetime, timezone
from collections import defaultdict

import matplotlib
matplotlib.use('Agg')  # Non-interactive backend
import matplotlib.pyplot as plt

import argparse

from run_benchmarks import repository_state as calculate_repository_state


def is_arm_platform():
    return platform.machine() in ("aarch64", "arm64")

# ---------------------------------------------------------------------------
# Utility: architecture-specific result directory
# ---------------------------------------------------------------------------

def get_arch_result_dir():
    """Determine result directory based on architecture."""
    if is_arm_platform():
        return "tests/results/arm"
    else:
        return "tests/results/x86"


def markdown_relpath(path, output_file):
    """Return a portable forward-slash link for generated Markdown."""
    relative = os.path.relpath(path, os.path.dirname(output_file))
    return relative.replace("\\", "/")


REPORTABLE_BENCHMARKS = {
    "bench_modadd_suite",
    "bench_poly_mod",
    "bench_modular",
    "bench_chacha_stream",
    "bench_hashmix",
    "bench_montgomery",
    "bench_barret_reist",
}

REPOSITORY_ROOT = Path(__file__).resolve().parents[1]


def resolve_manifest_member(manifest_path: Path, stored_path: str) -> Path:
    """Resolve one portable manifest path without allowing directory escape."""
    relative = Path(stored_path)
    if relative.is_absolute():
        raise ValueError(f"manifest path must be relative: {stored_path}")
    base = manifest_path.parent.resolve()
    candidate = (base / relative).resolve()
    try:
        candidate.relative_to(base)
    except ValueError as error:
        raise ValueError(f"manifest path escapes result directory: {stored_path}") from error
    return candidate


def verify_sha256(path: Path, expected: str):
    actual = hashlib.sha256(path.read_bytes()).hexdigest()
    if actual.lower() != expected.lower():
        raise ValueError(
            f"SHA-256 mismatch for {path}: expected {expected}, found {actual}"
        )


def require_sha256(value, description):
    if not isinstance(value, str) or not re.fullmatch(r"[0-9a-fA-F]{64}", value):
        raise ValueError(f"missing or invalid SHA-256 for {description}")
    return value


def canonical_json_sha256(value):
    encoded = json.dumps(
        value, sort_keys=True, separators=(",", ":"), ensure_ascii=False
    ).encode("utf-8")
    return hashlib.sha256(encoded).hexdigest()


def resolve_repository_member(stored_path, description):
    path = Path(stored_path)
    candidate = path.resolve() if path.is_absolute() else (REPOSITORY_ROOT / path).resolve()
    try:
        candidate.relative_to(REPOSITORY_ROOT)
    except ValueError as error:
        raise ValueError(f"{description} is outside the repository: {stored_path}") from error
    return candidate


def validate_compiler_metadata(compiler, description):
    if not isinstance(compiler, dict):
        raise ValueError(f"missing compiler metadata for {description}")
    if not isinstance(compiler.get("command"), str) or not compiler["command"]:
        raise ValueError(f"missing compiler command for {description}")
    if not isinstance(compiler.get("argv"), list) or not compiler["argv"]:
        raise ValueError(f"missing compiler argv for {description}")
    for key in ("executable", "version"):
        if not isinstance(compiler.get(key), str) or not compiler[key]:
            raise ValueError(f"missing compiler {key} for {description}")


def validate_run_build_provenance(data, run, manifest_path, allow_quick):
    """Validate schema-2 provenance and its binding to the timed binary."""
    build = data.get("build")
    if not isinstance(build, dict):
        raise ValueError(f"runner manifest has no build metadata: {manifest_path}")
    for key in ("system", "profile", "flags", "provenance_mode"):
        if not isinstance(build.get(key), str) or not build[key]:
            raise ValueError(f"runner manifest has no build {key}: {manifest_path}")
    validate_compiler_metadata(build.get("compiler"), manifest_path)

    verified = build.get("verified") is True
    if not verified and not (data.get("quick") and allow_quick):
        raise ValueError(
            f"unverified declared build is not reportable: {manifest_path}"
        )
    if verified and build.get("provenance_mode") != "sidecar":
        raise ValueError(f"verified build does not use a sidecar: {manifest_path}")
    if not verified and build.get("provenance_mode") != "declared":
        raise ValueError(f"invalid declared build mode: {manifest_path}")

    binary_hash = require_sha256(
        run.get("binary_sha256"), f"timed binary for {run.get('name')}"
    )
    provenance = run.get("build_provenance")
    if not isinstance(provenance, dict):
        raise ValueError(f"missing build provenance for {run.get('name')}")
    if provenance.get("verified") is not verified:
        raise ValueError(f"inconsistent build verification for {run.get('name')}")
    if provenance.get("mode") != build.get("provenance_mode"):
        raise ValueError(f"inconsistent build provenance mode for {run.get('name')}")
    metadata = provenance.get("metadata")
    if not isinstance(metadata, dict) or metadata.get("schema") != 1:
        raise ValueError(f"invalid build metadata for {run.get('name')}")
    metadata_hash = require_sha256(
        provenance.get("metadata_sha256"), f"build metadata for {run.get('name')}"
    )
    if canonical_json_sha256(metadata) != metadata_hash.lower():
        raise ValueError(f"build metadata hash mismatch for {run.get('name')}")

    recorded_build = metadata.get("build")
    recorded_compiler = metadata.get("compiler")
    recorded_binary = metadata.get("binary")
    if not all(isinstance(value, dict)
               for value in (recorded_build, recorded_compiler, recorded_binary)):
        raise ValueError(f"incomplete build metadata for {run.get('name')}")
    for key in ("system", "profile", "flags"):
        if recorded_build.get(key) != build.get(key):
            raise ValueError(f"build {key} mismatch for {run.get('name')}")
    if recorded_compiler != build.get("compiler"):
        raise ValueError(f"compiler metadata mismatch for {run.get('name')}")
    if recorded_binary.get("sha256") != binary_hash:
        raise ValueError(f"build metadata is not bound to timed binary {run.get('name')}")

    binary_path = resolve_repository_member(
        run.get("binary", ""), f"timed binary for {run.get('name')}"
    )
    if not binary_path.is_file():
        raise ValueError(f"timed binary is no longer available: {binary_path}")
    verify_sha256(binary_path, binary_hash)

    if not verified:
        return
    sidecar_hash = require_sha256(
        provenance.get("sidecar_sha256"), f"build sidecar for {run.get('name')}"
    )
    sidecar_path = Path(str(binary_path) + ".build.json")
    if not sidecar_path.is_file():
        raise ValueError(f"build sidecar is no longer available: {sidecar_path}")
    verify_sha256(sidecar_path, sidecar_hash)
    sidecar_data = json.loads(sidecar_path.read_text(encoding="utf-8"))
    if sidecar_data != metadata:
        raise ValueError(f"embedded and on-disk build metadata differ for {run.get('name')}")
    command = recorded_build.get("command")
    if not isinstance(command, str) or not command:
        raise ValueError(f"missing exact build command for {run.get('name')}")
    inputs = metadata.get("inputs")
    if not isinstance(inputs, list) or not inputs:
        raise ValueError(f"missing hashed build inputs for {run.get('name')}")
    for record in inputs:
        if not isinstance(record, dict) or not isinstance(record.get("path"), str):
            raise ValueError(f"invalid build input for {run.get('name')}")
        input_hash = require_sha256(
            record.get("sha256"), f"build input {record.get('path')}"
        )
        input_path = resolve_repository_member(record["path"], "build input")
        if not input_path.is_file():
            raise ValueError(f"build input is no longer available: {input_path}")
        verify_sha256(input_path, input_hash)


def load_run_manifest(manifest_path: Path, allow_quick=False):
    """Load a complete runner manifest and verify every recorded artifact."""
    data = json.loads(manifest_path.read_text(encoding="utf-8"))
    if data.get("schema") != 2:
        raise ValueError(f"unsupported runner manifest schema: {manifest_path}")
    if not data.get("session_id"):
        raise ValueError(f"runner manifest has no session_id: {manifest_path}")
    runner_hash = require_sha256(data.get("runner_sha256"), f"runner in {manifest_path}")
    verify_sha256(REPOSITORY_ROOT / "scripts" / "run_benchmarks.py", runner_hash)
    if data.get("quick") and not allow_quick:
        raise ValueError(
            f"{manifest_path} is a quick/smoke run; pass --allow-quick to report it"
        )

    repository = data.get("repository")
    if not isinstance(repository, dict):
        raise ValueError(f"runner manifest has no repository state_sha256: {manifest_path}")
    require_sha256(repository.get("state_sha256"), f"repository state in {manifest_path}")
    commit = repository.get("commit")
    if not isinstance(commit, str) or not re.fullmatch(r"[0-9a-fA-F]{40,64}", commit):
        raise ValueError(f"runner manifest has no valid repository commit: {manifest_path}")
    build = data.get("build")
    if (data.get("label") in {"O0", "O3", "SIMD"}
            and isinstance(build, dict)
            and build.get("verified") is True
            and build.get("profile") != data.get("label")):
        raise ValueError(f"runner label/build profile mismatch: {manifest_path}")

    artifact_directory = data.get("artifact_directory")
    if not artifact_directory:
        raise ValueError(f"runner manifest has no artifact_directory: {manifest_path}")
    resolved_artifact_directory = resolve_manifest_member(
        manifest_path, artifact_directory
    )
    if not resolved_artifact_directory.is_dir():
        raise ValueError(
            f"runner artifact directory is missing: {resolved_artifact_directory}"
        )

    runs = data.get("runs")
    if not isinstance(runs, list) or not runs:
        raise ValueError(f"runner manifest has no runs: {manifest_path}")

    stdout_files = {}
    artifacts = {}
    names = set()
    for run in runs:
        if not isinstance(run, dict):
            raise ValueError(f"invalid run record in {manifest_path}")
        name = run.get("name")
        if not name:
            raise ValueError(f"runner manifest contains an unnamed run: {manifest_path}")
        if name in names:
            raise ValueError(f"duplicate run record for {name}: {manifest_path}")
        names.add(name)
        if run.get("error") or run.get("returncode") != 0:
            raise ValueError(f"runner manifest contains a failed run: {name}")
        validate_run_build_provenance(data, run, manifest_path, allow_quick)
        stdout = run.get("stdout")
        if not stdout:
            raise ValueError(f"runner manifest contains no stdout path for {name}")
        stdout_path = resolve_manifest_member(manifest_path, stdout)
        if not stdout_path.is_file():
            raise ValueError(f"recorded stdout is missing for {name}: {stdout_path}")
        stdout_hash = require_sha256(run.get("stdout_sha256"), f"stdout for {name}")
        verify_sha256(stdout_path, stdout_hash)
        stdout_files[name] = stdout_path

        stderr = run.get("stderr")
        stderr_hash = require_sha256(run.get("stderr_sha256"), f"stderr for {name}")
        if stderr:
            stderr_path = resolve_manifest_member(manifest_path, stderr)
            if not stderr_path.is_file():
                raise ValueError(f"recorded stderr is missing for {name}: {stderr_path}")
            verify_sha256(stderr_path, stderr_hash)
        elif stderr_hash != hashlib.sha256(b"").hexdigest():
            raise ValueError(f"non-empty stderr hash without a stderr file for {name}")

        artifacts[name] = []
        artifact_records = run.get("artifacts", [])
        if not isinstance(artifact_records, list):
            raise ValueError(f"invalid artifact list for {name}")
        for artifact in artifact_records:
            if not isinstance(artifact, dict):
                raise ValueError(f"invalid artifact record for {name}")
            if artifact.get("error"):
                raise ValueError(f"runner manifest contains a failed artifact for {name}")
            stored_path = artifact.get("path")
            expected_hash = require_sha256(
                artifact.get("sha256"), f"artifact for {name}"
            )
            if not stored_path:
                raise ValueError(f"incomplete artifact record for {name}")
            artifact_path = resolve_manifest_member(manifest_path, stored_path)
            try:
                artifact_path.relative_to(resolved_artifact_directory)
            except ValueError as error:
                raise ValueError(
                    f"artifact for {name} is outside artifact_directory: {artifact_path}"
                ) from error
            if not artifact_path.is_file():
                raise ValueError(f"recorded artifact is missing: {artifact_path}")
            verify_sha256(artifact_path, expected_hash)
            artifacts[name].append({
                "path": artifact_path,
                "sha256": expected_hash,
            })

        expected_artifact = {
            "bench_modadd_suite": "results_modadd_suite.csv",
            "bench_poly_mod": "results_poly_mod.csv",
        }.get(name)
        if (expected_artifact
                and not any(record["path"].name == expected_artifact
                            for record in artifacts[name])):
            raise ValueError(
                f"runner manifest lacks required {expected_artifact} for {name}"
            )

    missing = sorted(REPORTABLE_BENCHMARKS - names)
    if missing:
        raise ValueError(
            f"runner manifest is not a complete reportable run; missing: {', '.join(missing)}"
        )

    return {
        "path": manifest_path,
        "data": data,
        "stdout": stdout_files,
        "artifacts": artifacts,
        "artifact_directory": resolved_artifact_directory,
    }


def find_runner_session(result_dir, prefix=None, allow_quick=False):
    """Select one newest complete O0/O3/SIMD session without mixing runs."""
    groups = defaultdict(list)
    saw_profile_manifest = False
    for path in Path(result_dir).glob("*_MANIFEST.json"):
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        label = data.get("label")
        if label not in {"O0", "O3", "SIMD"}:
            continue
        saw_profile_manifest = True
        session_id = data.get("session_id")
        if not session_id:
            continue
        timestamp = str(data.get("timestamp", ""))
        groups[str(session_id)].append((timestamp, str(label), path))

    if prefix:
        groups = defaultdict(
            list,
            {
                session_id: records
                for session_id, records in groups.items()
                if session_id.startswith(prefix)
                or any(timestamp.startswith(prefix)
                       for timestamp, _, _ in records)
            },
        )
    if not groups:
        if saw_profile_manifest:
            raise ValueError(
                "profile manifests exist but none has a matching session_id"
            )
        return None

    session_id, records = max(
        groups.items(),
        key=lambda item: max(record[0] for record in item[1]),
    )
    by_label = {}
    for _, label, path in records:
        if label in by_label:
            raise ValueError(
                f"session {session_id} contains duplicate {label} manifests"
            )
        by_label[label] = path
    missing = sorted({"O0", "O3", "SIMD"} - set(by_label))
    if missing:
        raise ValueError(
            f"newest runner session {session_id} is incomplete; missing: "
            + ", ".join(missing)
        )

    bundles = {
        label: load_run_manifest(path, allow_quick=allow_quick)
        for label, path in by_label.items()
    }
    if any(bundle["data"]["session_id"] != session_id
           for bundle in bundles.values()):
        raise ValueError("selected manifests disagree on session_id")
    return {"session_id": session_id, "bundles": bundles}


# ---------------------------------------------------------------------------
# Benchmark text result handling (O0 / O3 / SIMD)
# ---------------------------------------------------------------------------

def find_optimization_comparison_plots(result_dir, prefix=None):
    """
    Find existing optimization comparison plots generated by plot_benchmarks.py.
    Returns dict with paths to comparison plots or None if not found.
    """
    plots = {'modadd': None, 'poly': None}
    
    if prefix:
        # Look for plots with specific prefix
        modadd_pattern = f"{prefix}_optimization_comparison_modadd.png"
        poly_pattern = f"{prefix}_optimization_comparison_poly.png"
    else:
        # Look for most recent optimization comparison plots
        modadd_pattern = "*_optimization_comparison_modadd.png"
        poly_pattern = "*_optimization_comparison_poly.png"
    
    import glob
    
    modadd_files = glob.glob(os.path.join(result_dir, modadd_pattern))
    poly_files = glob.glob(os.path.join(result_dir, poly_pattern))
    
    if modadd_files:
        plots['modadd'] = max(modadd_files, key=os.path.getmtime)  # Most recent
    if poly_files:
        plots['poly'] = max(poly_files, key=os.path.getmtime)  # Most recent
        
    return plots

def find_latest_results(result_dir, opt_level, prefix=None):
    """
    Find benchmark result files for given optimization level.
    If prefix is provided, return only files matching that prefix.
    Otherwise return the newest timestamp group.
    """

    pattern = os.path.join(result_dir, f"*_bench_*_O{opt_level}.txt")  # correct pattern

    # If explicit prefix was passed → try to match that prefix exactly
    if prefix:
        specific_pattern = os.path.join(result_dir, f"{prefix}_bench_*_O{opt_level}.txt")
        matches = glob.glob(specific_pattern)
        return matches  # may be empty; caller handles it

    # Default behaviour: newest timestamp
    files = glob.glob(os.path.join(result_dir, f"*_bench_*_O{opt_level}.txt"))
    if not files:
        return []

    timestamps = defaultdict(list)
    for f in files:
        basename = os.path.basename(f)
        match = re.match(r"(\d{8}_\d{6})_", basename)
        if match:
            timestamps[match.group(1)].append(f)

    if not timestamps:
        return []

    latest_timestamp = max(timestamps.keys())
    return timestamps[latest_timestamp]


def find_latest_simd_results(result_dir, prefix=None):
    """
    Find SIMD/NEON benchmark result files.
    If prefix is provided, return only files matching that prefix.
    Otherwise return the newest timestamp group.
    """
    
    # If explicit prefix was passed → try to match that prefix exactly
    if prefix:
        specific_pattern = os.path.join(result_dir, f"{prefix}_bench_*_SIMD.txt")
        matches = glob.glob(specific_pattern)
        return matches  # may be empty; caller handles it

    # Default behaviour: newest timestamp
    files = glob.glob(os.path.join(result_dir, "*_bench_*_SIMD.txt"))
    if not files:
        return []

    timestamps = defaultdict(list)
    for f in files:
        basename = os.path.basename(f)
        match = re.match(r"(\d{8}_\d{6})_", basename)
        if match:
            timestamps[match.group(1)].append(f)

    if not timestamps:
        return []

    latest_timestamp = max(timestamps.keys())
    return timestamps[latest_timestamp]



def extract_system_info(txt_files):
    """Extract system information from benchmark output files. Try multiple files if needed."""
    system_info = {}
    
    # If it's a single file, wrap in list
    if isinstance(txt_files, str):
        txt_files = [txt_files]
    
    for txt_file in txt_files:
        try:
            with open(txt_file, 'r') as f:
                content = f.read()

            # Skip empty files
            if len(content.strip()) == 0:
                continue

            patterns = {
                'hostname': r'Hostname:\s*(.+)',
                'os':       r'OS:\s*(.+)',
                'cpu_model': r'CPU Model:\s*(.+)',
                'cpu_mhz':  r'CPU MHz:\s*(.+)',
                'memory':   r'Memory:\s*(.+)'
            }

            found_any = False
            for key, pattern in patterns.items():
                match = re.search(pattern, content)
                if match:
                    system_info[key] = match.group(1).strip()
                    found_any = True

            # If we found system info in this file, return it
            if found_any:
                return system_info

        except Exception as e:
            print(f"Warning: Could not extract system info from {txt_file}: {e}")
            continue

    # If no system info found in any file, return empty dict
    return system_info


def parse_benchmark_results(txt_file):
    """Dispatch parsing based on benchmark filename."""
    results = {}
    try:
        with open(txt_file, 'r') as f:
            content = f.read()

        bench_name = os.path.basename(txt_file)

        if 'modadd_suite' in bench_name:
            results = parse_modadd_suite(content)
        elif 'poly_mod' in bench_name:
            results = parse_poly_mod(content)
        elif 'modular' in bench_name:
            results = parse_modular(content)
        elif 'chacha_reist' in bench_name:
            results = parse_chacha_reist(content)
        elif 'chacha_stream' in bench_name:
            results = parse_chacha_stream(content)
        elif 'hashmix' in bench_name:
            results = parse_hashmix(content)
        elif 'reist_arm' in bench_name:
            results = parse_reist_arm(content)
        elif 'montgomery' in bench_name:
            results = parse_montgomery(content)
        elif 'barret_reist' in bench_name:
            results = parse_barrett(content)

    except Exception as e:
        print(f"Warning: Could not parse {txt_file}: {e}")

    return results


def parse_modadd_suite(content):
    results = {'moduli': []}
    # Try the separate four-stream NEON program first.
    pattern_neon = (
        r'(?m)^\[([^\]\r\n]+)\]\r?\nModulus B = (\d+)\s+'
        r'classic_mod \(4 streams\)\s*:\s+([\d.]+)\s+s\s+'
        r'REIST scalar \(4 streams\)\s*:\s+([\d.]+)\s+s\s+'
        r'REIST NEON \(4 streams\)\s*:\s+([\d.]+)\s+s'
    )
    matches_neon = re.findall(pattern_neon, content)
    if matches_neon:
        for mode, modulus, classic_time, scalar_time, neon_time in matches_neon:
            results['moduli'].append({
                'modulus': int(modulus),
                'mode': mode,
                'classic_time': float(classic_time),
                'reist_time': float(neon_time),
                'scalar_reist_time': float(scalar_time),
                'speedup': float(classic_time) / float(neon_time) if float(neon_time) > 0 else 0.0
            })
    else:
        # Validated architecture-neutral scalar source.
        pattern = (
            r'(?m)^\[([^\]\r\n]+)\]\r?\nModulus B = (\d+)\s+'
            r'classic_mod\s*:\s+([\d.]+)\s+s\s+'
            r'reist_sym\s*:\s+([\d.]+)\s+s\s+'
            r'speedup\s*:\s+([\d.]+)x'
        )
        matches = re.findall(pattern, content)
        for mode, modulus, classic_time, reist_time, speedup in matches:
            results['moduli'].append({
                'modulus': int(modulus),
                'mode': mode,
                'classic_time': float(classic_time),
                'reist_time': float(reist_time),
                'speedup': float(speedup)
            })
    return results


def parse_poly_mod(content):
    results = {'moduli': []}
    pattern = (
        r'(?m)^\[([^\]\r\n]+)\]\r?\nq = (\d+)\s+classic\s*:\s+([\d.]+)\s+s\s+'
        r'REIST\s*:\s+([\d.]+)\s+s\s+speedup\s*:\s+([\d.]+)x'
    )
    matches = re.findall(pattern, content)
    for mode, q, classic_time, reist_time, speedup in matches:
        results['moduli'].append({
            'q': int(q),
            'mode': mode,
            'classic_time': float(classic_time),
            'reist_time': float(reist_time),
            'speedup': float(speedup)
        })
    return results


def parse_modular(content):
    results = {}
    classic_match = re.search(r'classic\s*:\s+([\d.]+)\s+s', content)
    centered_match = re.search(r'centered\s*:\s+([\d.]+)\s+s', content)
    ratio_match = re.search(r'Ratio\s*:\s+([\d.]+)x', content)

    if classic_match and centered_match and ratio_match:
        results['classic_time'] = float(classic_match.group(1))
        results['centered_time'] = float(centered_match.group(1))
        results['speedup'] = float(ratio_match.group(1))
    return results


def parse_chacha_reist(content):
    results = {}
    std_match = re.search(r'std_add\s*:\s+([\d.]+)\s+s', content)
    reist_match = re.search(r'reist_add32:\s+([\d.]+)\s+s', content)
    ratio_match = re.search(r'Speed ratio:\s+([\d.]+)x', content)

    if std_match and reist_match:
        results['add32'] = {
            'std_time': float(std_match.group(1)),
            'reist_time': float(reist_match.group(1)),
            'ratio': float(ratio_match.group(1)) if ratio_match else 0.0
        }

    classic_match = re.search(r'Classic\s*:\s+([\d.]+)\s+s', content)
    reist_block_match = re.search(r'REIST\s*:\s+([\d.]+)\s+s', content)
    if classic_match and reist_block_match:
        results['block'] = {
            'classic_time': float(classic_match.group(1)),
            'reist_time': float(reist_block_match.group(1))
        }
    return results


def parse_chacha_stream(content):
    results = {}
    classic_match = re.search(r'std add\s*:\s+([\d.]+)\s+s\s+\(([\d.]+)\s+MB/s\)', content)
    identity_match = re.search(r'identity add\s*:\s+([\d.]+)\s+s\s+\(([\d.]+)\s+MB/s\)', content)
    ratio_match = re.search(r'ratio\s*:\s+([\d.]+)x', content)

    if classic_match and identity_match:
        results['classic_time'] = float(classic_match.group(1))
        results['classic_mbps'] = float(classic_match.group(2))
        results['identity_time'] = float(identity_match.group(1))
        results['identity_mbps'] = float(identity_match.group(2))
        results['speedup'] = float(ratio_match.group(1)) if ratio_match else 0.0
    return results


def parse_hashmix(content):
    results = {'moduli': []}
    pattern = (
        r'M = (\d+)\s+classic\s*:\s+([\d.]+)\s+s\s+'
        r'centered\s*:\s+([\d.]+)\s+s\s+ratio\s*:\s+([\d.]+)x'
    )
    matches = re.findall(pattern, content)
    for modulus, classic_time, centered_time, ratio in matches:
        results['moduli'].append({
            'modulus': int(modulus),
            'classic_time': float(classic_time),
            'centered_time': float(centered_time),
            'speedup': float(ratio)
        })
    return results


def parse_reist_arm(content):
    results = {'moduli': []}
    pattern = (
        r'q = (\d+)\s+scalar:\s+([\d.]+)\s+s\s+NEON:\s+'
        r'([\d.]+)\s+s\s+speedup:\s+([\d.]+)x'
    )
    matches = re.findall(pattern, content)
    for q, scalar_time, neon_time, speedup in matches:
        results['moduli'].append({
            'q': int(q),
            'scalar_time': float(scalar_time),
            'neon_time': float(neon_time),
            'speedup': float(speedup)
        })
    return results


def parse_montgomery(content):
    """Parse the current validated Montgomery comparison format."""
    results = {'moduli': []}

    sections = re.split(r'(?m)^Modulus = ([0-9]+)[ \t]*\r?$', content)
    for index in range(1, len(sections), 2):
        section = sections[index + 1]
        row = {'modulus': int(sections[index])}
        fields = {
            'add_classic': r'^Classic\s*:\s*([0-9.]+)\s+s$',
            'add_reist': r'^REIST centered\s*:\s*([0-9.]+)\s+s$',
            'add_montgomery': r'^Montgomery\s*:\s*([0-9.]+)\s+s$',
            'mul_classic': r'^Classic %\s*:\s*([0-9.]+)\s+s$',
            'mul_centered_reference': r'^Centered % \(not REIST\)\s*:\s*([0-9.]+)\s+s$',
            'mul_montgomery': r'^Montgomery-domain multiply\s*:\s*([0-9.]+)\s+s$',
            'full_classic': r'^Classic full\s*:\s*([0-9.]+)\s+s$',
            'full_montgomery': r'^Montgomery full\s*:\s*([0-9.]+)\s+s$',
            'conversion_overhead_percent': r'^Conversion overhead\s*:\s*([-+0-9.]+)\s+%$',
        }
        for key, pattern in fields.items():
            match = re.search(pattern, section, re.MULTILINE)
            if match:
                row[key] = float(match.group(1))
        if all(key in row for key in fields):
            results['moduli'].append(row)
    return results


def parse_barrett(content):
    """Parse the current validated Barrett/centered-addition format."""
    results = {'moduli': []}
    sections = re.split(r'(?m)^Modulus = ([0-9]+)[ \t]*\r?$', content)
    for index in range(1, len(sections), 2):
        section = sections[index + 1]
        row = {'modulus': int(sections[index])}
        fields = {
            'classic': r'^\s*Classic %\s*:\s*([0-9.]+)\s+s$',
            'reist': r'^\s*REIST add_centered\s*:\s*([0-9.]+)\s+s$',
            'barrett64': r'^\s*Barrett reciprocal, int64\s*:\s*([0-9.]+)\s+s$',
            'barrett32': r'^\s*Barrett reciprocal, int32\s*:\s*([0-9.]+)\s+s$',
            'classic_reist_speedup': r'^\s*Speedup classic / REIST\s*:\s*([0-9.]+)x$',
            'reist_scalar_8': r'^\s*REIST scalar 8-stream\s*:\s*([0-9.]+)\s+s$',
            'reist_avx2_8': r'^\s*REIST AVX2 8-stream\s*:\s*([0-9.]+)\s+s$',
            'barrett_scalar_8': r'^\s*Barrett scalar 8-stream\s*:\s*([0-9.]+)\s+s$',
            'barrett_avx2_8': r'^\s*Barrett AVX2 8-stream\s*:\s*([0-9.]+)\s+s$',
        }
        for key, pattern in fields.items():
            match = re.search(pattern, section, re.MULTILINE)
            if match:
                row[key] = float(match.group(1))
        required = {'classic', 'reist', 'barrett64', 'barrett32'}
        if required.issubset(row):
            results['moduli'].append(row)
    return results


# ---------------------------------------------------------------------------
# Use existing optimization comparison charts
# ---------------------------------------------------------------------------

def generate_verified_comparison_charts(result_dir, timestamp, run_bundles,
                                        allow_quick=False):
    """Invoke the manifest-aware plotter with the exact selected manifests."""
    import sys

    command = [
        sys.executable,
        os.path.join("scripts", "plot_benchmarks.py"),
        "--result-dir", str(result_dir),
        "--output-prefix", timestamp,
    ]
    for label in ("O0", "O3", "SIMD"):
        bundle = run_bundles.get(label)
        if bundle:
            command.extend(["--manifest", str(bundle["path"])])
    if allow_quick:
        command.append("--allow-quick")

    subprocess.run(command, check=True)
    charts = []
    for kind in ("modadd", "poly"):
        path = Path(result_dir) / f"{timestamp}_optimization_comparison_{kind}.png"
        if path.is_file():
            charts.append((kind, str(path)))
    return charts

# ---------------------------------------------------------------------------
# Charts: O0 vs O3 comparisons (Legacy - kept for compatibility)
# ---------------------------------------------------------------------------

def create_comparison_charts(o0_data, o3_data, output_dir, timestamp):
    charts = []

    if 'bench_modadd_suite' in o0_data and 'bench_modadd_suite' in o3_data:
        chart_path = os.path.join(output_dir, f"{timestamp}_comparison_modadd.png")
        if create_modadd_comparison(o0_data['bench_modadd_suite'],
                                    o3_data['bench_modadd_suite'],
                                    chart_path):
            charts.append(('modadd', chart_path))

    if 'bench_poly_mod' in o0_data and 'bench_poly_mod' in o3_data:
        chart_path = os.path.join(output_dir, f"{timestamp}_comparison_poly.png")
        if create_poly_comparison(o0_data['bench_poly_mod'],
                                  o3_data['bench_poly_mod'],
                                  chart_path):
            charts.append(('poly', chart_path))

    chart_path = os.path.join(output_dir, f"{timestamp}_comparison_overall.png")
    if create_overall_comparison(o0_data, o3_data, chart_path):
        charts.append(('overall', chart_path))

    return charts


def create_modadd_comparison(o0_results, o3_results, output_path):
    if not o0_results.get('moduli') or not o3_results.get('moduli'):
        print("Skipping modadd chart - insufficient data")
        return False

    o0_moduli = [m['modulus'] for m in o0_results['moduli']]
    o0_speedups = [m['speedup'] for m in o0_results['moduli']]
    o3_moduli = [m['modulus'] for m in o3_results['moduli']]
    o3_speedups = [m['speedup'] for m in o3_results['moduli']]

    plt.figure(figsize=(10, 6))
    plt.plot(o0_moduli, o0_speedups, marker='o', label='O0 (No optimization)', linewidth=2)
    plt.plot(o3_moduli, o3_speedups, marker='s', label='O3 (Optimized)', linewidth=2)
    plt.xlabel('Modulus B', fontsize=12)
    plt.ylabel('Speedup (classic / REIST)', fontsize=12)
    plt.title('REIST Modular-Add Speedup: O0 vs O3', fontsize=14, fontweight='bold')
    plt.xscale('log')
    plt.legend(fontsize=10)
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()
    print(f"Created: {output_path}")
    return True


def create_poly_comparison(o0_results, o3_results, output_path):
    if not o0_results.get('moduli') or not o3_results.get('moduli'):
        print("Skipping poly chart - insufficient data")
        return False

    o0_q = [m['q'] for m in o0_results['moduli']]
    o0_speedups = [m['speedup'] for m in o0_results['moduli']]
    o3_q = [m['q'] for m in o3_results['moduli']]
    o3_speedups = [m['speedup'] for m in o3_results['moduli']]

    plt.figure(figsize=(10, 6))
    plt.plot(o0_q, o0_speedups, marker='o', label='O0 (No optimization)', linewidth=2)
    plt.plot(o3_q, o3_speedups, marker='s', label='O3 (Optimized)', linewidth=2)
    plt.xlabel('Modulus q', fontsize=12)
    plt.ylabel('Speedup (classic / REIST)', fontsize=12)
    plt.title('Polynomial Modular-Add Speedup: O0 vs O3', fontsize=14, fontweight='bold')
    plt.xscale('log')
    plt.legend(fontsize=10)
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()
    print(f"Created: {output_path}")
    return True


def create_overall_comparison(o0_data, o3_data, output_path):
    benchmarks = []
    o0_speedups = []
    o3_speedups = []

    for bench_name in ['bench_modadd_suite', 'bench_poly_mod',
                       'bench_modular', 'bench_chacha_stream', 'bench_hashmix']:
        if bench_name in o0_data and bench_name in o3_data:
            o0_res = o0_data[bench_name]
            o3_res = o3_data[bench_name]

            display_name = bench_name.replace('bench_', '').replace('_', ' ').title()

            if 'moduli' in o0_res and 'moduli' in o3_res and o0_res['moduli'] and o3_res['moduli']:
                o0_avg = sum(m['speedup'] for m in o0_res['moduli']) / len(o0_res['moduli'])
                o3_avg = sum(m['speedup'] for m in o3_res['moduli']) / len(o3_res['moduli'])
                benchmarks.append(display_name)
                o0_speedups.append(o0_avg)
                o3_speedups.append(o3_avg)
            elif 'speedup' in o0_res and 'speedup' in o3_res:
                benchmarks.append(display_name)
                o0_speedups.append(o0_res['speedup'])
                o3_speedups.append(o3_res['speedup'])

    if not benchmarks:
        print("Skipping overall chart - insufficient data")
        return False

    x = range(len(benchmarks))
    width = 0.35

    plt.figure(figsize=(12, 6))
    plt.bar([i - width/2 for i in x], o0_speedups, width,
            label='O0 (No optimization)', alpha=0.8)
    plt.bar([i + width/2 for i in x], o3_speedups, width,
            label='O3 (Optimized)', alpha=0.8)

    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Reported reference / alternative ratio', fontsize=12)
    plt.title('UNVERIFIED legacy cross-benchmark ratios: O0 vs O3', fontsize=14, fontweight='bold')
    plt.xticks(x, benchmarks, rotation=45, ha='right')
    plt.legend(fontsize=10)
    plt.grid(True, axis='y', alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()
    print(f"Created: {output_path}")
    return True


# ---------------------------------------------------------------------------
# ASM compilation & analysis
# ---------------------------------------------------------------------------

# Function names are intentionally explicit.  Classifying a complete benchmark
# translation unit would mix the arithmetic kernels with timing, I/O, allocation,
# parsing and library code and produces misleading positives.
KERNEL_HINTS = {
    "bench_modadd_suite": (
        "classic_modadd_runtime_kernel", "reist_modadd_runtime_kernel",
        "classic_modadd_const_", "reist_modadd_const_",
    ),
    "bench_modadd_suite_neon": (
        "classic_modadd_4stream_runtime_kernel",
        "reist_modadd_4stream_runtime_kernel",
        "reist_modadd_neon_4stream_runtime_kernel",
    ),
    "bench_poly_mod": (
        "classic_poly_runtime_kernel", "reist_poly_runtime_kernel",
        "classic_poly_const_", "reist_poly_const_",
    ),
    "bench_modular": ("classic_checksum", "centered_checksum"),
    "bench_hashmix": ("classic_step", "centered_step"),
    "bench_montgomery": (
        "classic_modadd", "classic_modmul", "centered_modmul_reference",
        "MontgomeryContext::add", "MontgomeryContext::multiply",
    ),
    "bench_barret_reist": (
        "classic_modadd", "BarrettContext64::reduce_centered",
        "BarrettContext32::reduce_centered", "barrett_reduce32_avx2",
        "reist_add_avx2",
    ),
}

DIV_INSN_RE = re.compile(
    r"(?mi)^\s*(?:idiv(?:b|w|l|q)?|div(?:b|w|l|q)?|sdiv|udiv)\b"
)
SIGN_MASK_RE = re.compile(
    r"(?mi)^\s*(?:sar(?:b|w|l|q)?|asr)\s+(?:\$|#)?(?:31|63)\b"
)
MUL_INSN_RE = re.compile(
    r"(?mi)^\s*(?:imul(?:b|w|l|q)?|mul(?:b|w|l|q)?|smulh|umulh)\b"
)
SHIFT_INSN_RE = re.compile(
    r"(?mi)^\s*(?:sar(?:b|w|l|q)?|shr(?:b|w|l|q)?|asr|lsr)\b"
)
CMP_INSN_RE = re.compile(r"(?mi)^\s*(?:cmp(?:b|w|l|q)?|cmn|tst)\b")
SELECT_INSN_RE = re.compile(
    r"(?mi)^\s*(?:cmov[a-z]*|set(?:g|ge|l|le|a|ae|b|be)[a-z]*|"
    r"csel|csinc|cset|csetm)\b"
)
CORRECTION_INSN_RE = re.compile(
    r"(?mi)^\s*(?:add(?:b|w|l|q)?|sub(?:b|w|l|q)?)\b"
)


def preferred_compiler():
    """Use CXX when configured, otherwise choose an available compiler."""
    configured = os.environ.get("CXX")
    if configured:
        return configured
    for candidate in ("clang++", "g++"):
        if shutil.which(candidate):
            return candidate
    raise RuntimeError("Neither clang++ nor g++ is available for assembly analysis")


def build_flag_profiles():
    """Mirror Makefile CPPFLAGS/COMMON_FLAGS and O0/O3 profiles."""
    common = [
        "-Iinclude", "-std=c++20", "-Wall", "-Wextra", "-Wpedantic",
        "-Wconversion", "-Wsign-conversion",
    ]
    benchmark = {
        "O0": common + ["-O0", "-g", "-fno-tree-vectorize"],
        "O3": common + ["-O3", "-DNDEBUG", "-march=native"],
    }
    analysis = {name: list(flags) for name, flags in benchmark.items()}
    return benchmark, analysis

def find_bench_sources(src_dir="src"):
    """Find benchmark sources with an explicit kernel manifest for this platform."""
    src_path = Path(src_dir)
    all_sources = sorted(src_path.glob("bench_*.cpp"))

    filtered = []
    for src in all_sources:
        name = src.name.lower()

        if src.stem not in KERNEL_HINTS:
            print(f"Skipping artifact analysis without kernel manifest: {src.name}")
            continue

        if "arm" in name and not is_arm_platform():
            print(f"Skipping ARM benchmark on x86 platform: {src.name}")
            continue

        if "x86" in name and is_arm_platform():
            print(f"Skipping x86-specific benchmark on ARM platform: {src.name}")
            continue

        if "avx2" in name and is_arm_platform():
            print(f"Skipping AVX2 benchmark on ARM platform: {src.name}")
            continue

        if "neon" in name and not is_arm_platform():
            print(f"Skipping NEON benchmark on non-ARM platform: {src.name}")
            continue

        filtered.append(src)

    return filtered



def run_cmd(cmd):
    """Run shell command, raise on failure."""
    print("  $", " ".join(cmd))
    result = subprocess.run(cmd, stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE, text=True)
    if result.returncode != 0:
        print("    ERROR:", result.stderr.strip())
        raise RuntimeError(f"Command failed: {' '.join(cmd)}")
    return result


def compile_to_asm(source: Path, asm_dir: Path, compiler):
    """Compile one source with the manifest-derived O0/O3 analysis flags."""
    asm_dir.mkdir(parents=True, exist_ok=True)
    benchmark_flags, analysis_flags = build_flag_profiles()
    compiler_banner = compiler_version(compiler).lower()
    compiler_is_clang = "clang" in compiler_banner
    outputs = {}

    for profile in ("O0", "O3"):
        asm_file = asm_dir / f"{source.stem}_{profile}.s"
        profile_flags = list(analysis_flags[profile])
        if compiler_is_clang and "-fno-tree-vectorize" in profile_flags:
            profile_flags.remove("-fno-tree-vectorize")
            profile_flags.extend(["-fno-vectorize", "-fno-slp-vectorize"])
        if is_arm_platform() and not compiler_is_clang and "-fvectorize" in profile_flags:
            profile_flags[profile_flags.index("-fvectorize")] = "-ftree-vectorize"

        command = ([compiler] + profile_flags
                   + ["-S", str(source), "-o", str(asm_file)])
        run_cmd(command)
        outputs[profile] = {
            "asm": asm_file,
            "command": command,
            "benchmark_flags": benchmark_flags[profile],
            "analysis_flags": profile_flags,
        }

    return outputs


def demangle_symbol(symbol):
    """Best-effort demangling; raw symbols still contain Itanium function names."""
    cxxfilt = shutil.which("c++filt")
    if not cxxfilt:
        return symbol
    result = subprocess.run(
        [cxxfilt, symbol], stdout=subprocess.PIPE, stderr=subprocess.DEVNULL,
        text=True, check=False,
    )
    return result.stdout.strip() if result.returncode == 0 else symbol


def split_asm_functions(text):
    """Split compiler `-S` output at non-local labels.

    Local labels (`.L...`, `LBB...`) remain part of their containing function.
    This intentionally avoids whole-file pattern classification.
    """
    label_re = re.compile(r"^([_A-Za-z$][\w.$@]*):(?:\s*(?:#.*)?)$")
    functions = []
    current_symbol = None
    current_lines = []

    def flush():
        if current_symbol is not None:
            functions.append((current_symbol, "\n".join(current_lines)))

    for line in text.splitlines():
        match = label_re.match(line.strip())
        if match:
            symbol = match.group(1)
            is_local = (symbol.startswith(".L") or symbol.startswith("LBB")
                        or symbol.startswith("Ltmp") or symbol.startswith("LC"))
            if not is_local:
                flush()
                current_symbol = symbol
                current_lines = [line]
                continue
        if current_symbol is not None:
            current_lines.append(line)
    flush()
    return functions


def kernel_role(name):
    lower = name.lower()
    if "reist" in lower:
        return "REIST"
    if "montgomery" in lower or "mont_" in lower:
        return "Montgomery"
    if "barrett" in lower or "barret" in lower:
        return "Barrett"
    if "centered" in lower or "signed_remainder" in lower:
        return "centered"
    if "classic" in lower:
        return "classic"
    return "other"


def classify_kernel(name, body):
    """Classify instructions in exactly one named arithmetic kernel."""
    role = kernel_role(name)
    lower_name = name.lower()
    has_mul = bool(MUL_INSN_RE.search(body))
    has_shift = bool(SHIFT_INSN_RE.search(body))
    has_div = bool(DIV_INSN_RE.search(body))
    magic_eligible = role == "classic" and (
        "classic_modadd_const_" in lower_name
        or "classic_poly_const_" in lower_name
    )
    return {
        "name": name,
        "role": role,
        "div": has_div,
        "signmask": bool(SIGN_MASK_RE.search(body)),
        # This is deliberately a candidate, not a claim about compiler intent.
        "magic": magic_eligible and not has_div and has_mul and has_shift,
        # Restrict correction recognition to centered/REIST functions and require
        # all three structural ingredients to avoid generic CMP false positives.
        "reist": role in ("REIST", "centered")
                 and bool(CMP_INSN_RE.search(body))
                 and bool(SELECT_INSN_RE.search(body))
                 and bool(CORRECTION_INSN_RE.search(body)),
    }


def analyze_asm(asm_file: Path, source: Path):
    """Analyze only functions listed for this source in KERNEL_HINTS."""
    try:
        text = asm_file.read_text(encoding="utf-8", errors="ignore")
    except Exception as error:
        return {"kernels": [], "error": str(error), "missing": []}

    hints = KERNEL_HINTS[source.stem]
    kernels = []
    found_hints = set()
    seen_symbols = set()
    for symbol, body in split_asm_functions(text):
        demangled = demangle_symbol(symbol)
        matching = [hint for hint in hints
                    if hint.lower() in demangled.lower()
                    or hint.lower() in symbol.lower()]
        if not matching or symbol in seen_symbols:
            continue
        seen_symbols.add(symbol)
        found_hints.update(matching)
        classified = classify_kernel(demangled, body)
        classified["symbol"] = symbol
        kernels.append(classified)

    return {
        "kernels": sorted(kernels, key=lambda item: item["name"]),
        "missing": [hint for hint in hints if hint not in found_hints],
    }


def repository_revision():
    result = subprocess.run(
        ["git", "rev-parse", "HEAD"], stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL, text=True, check=False, cwd=REPOSITORY_ROOT,
    )
    return result.stdout.strip() if result.returncode == 0 else None


def compiler_version(compiler):
    result = subprocess.run(
        [compiler, "--version"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        text=True, check=False,
    )
    return result.stdout.splitlines()[0] if result.stdout else "unknown"


def sha256_file(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def collect_asm_analysis(asm_dir: Path, bench_sources, compiler):
    """Compile/analyze manifested kernels and write a reproducibility manifest."""
    asm_results = {}  # { "bench_modadd_suite": { "O0": {...}, "O3": {...}, "asm_o0": Path, "asm_o3": Path } }
    manifest = {
        "schema": 1,
        "generated_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
        "repository_revision": repository_revision(),
        "platform": platform.platform(),
        "machine": platform.machine(),
        "compiler": compiler,
        "compiler_version": compiler_version(compiler),
        "flag_source": "Makefile CPPFLAGS/COMMON_FLAGS/NOOPT_FLAGS/OPT_FLAGS",
        "assembly_note": (
            "benchmark flags are used directly; compiler-equivalent vectorizer-disable "
            "flags may replace Makefile spelling"
        ),
        "sources": [],
    }

    for src in bench_sources:
        print(f"\nCompiling to ASM: {src}")
        outputs = compile_to_asm(src, asm_dir, compiler)

        print(f"Analyzing ASM: {outputs['O0']['asm'].name}, {outputs['O3']['asm'].name}")
        res_o0 = analyze_asm(outputs["O0"]["asm"], src)
        res_o3 = analyze_asm(outputs["O3"]["asm"], src)

        bench_key = src.stem  # e.g. bench_modadd_suite
        asm_results[bench_key] = {
            "O0": res_o0,
            "O3": res_o3,
            "asm_o0": outputs["O0"]["asm"],
            "asm_o3": outputs["O3"]["asm"],
            "flags_o0": outputs["O0"]["analysis_flags"],
            "flags_o3": outputs["O3"]["analysis_flags"],
        }

        manifest["sources"].append({
            "source": str(src),
            "sha256": sha256_file(src),
            "kernel_hints": list(KERNEL_HINTS[src.stem]),
            "profiles": {
                profile: {
                    "assembly": str(outputs[profile]["asm"]),
                    "benchmark_flags": outputs[profile]["benchmark_flags"],
                    "analysis_flags": outputs[profile]["analysis_flags"],
                    "command": outputs[profile]["command"],
                    "kernels_found": [kernel["name"] for kernel in asm_results[bench_key][profile]["kernels"]],
                    "kernel_hints_not_emitted": asm_results[bench_key][profile]["missing"],
                }
                for profile in ("O0", "O3")
            },
        })

    manifest_path = asm_dir / "build_manifest.json"
    manifest_path.write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    return asm_results, manifest_path


# ---------------------------------------------------------------------------
# Markdown report generation
# ---------------------------------------------------------------------------

def generate_markdown_report(system_info, o0_data, o3_data, simd_data, charts,
                             asm_results, asm_manifest, run_bundles, output_file):
    """Generate comprehensive markdown report including ASM analysis and SIMD results."""

    with open(output_file, 'w', encoding="utf-8") as f:
        # Header
        f.write("# REIST Cryptographic Benchmark Report\n\n")
        f.write(f"**Generated:** {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n\n")
        f.write("**Paper:** 2026 German edition, DOI ")
        f.write("[10.5281/zenodo.21206471](https://doi.org/10.5281/zenodo.21206471)\n\n")
        f.write("---\n\n")

        # System Information
        f.write("## System Information\n\n")
        if system_info:
            f.write("| Property | Value |\n")
            f.write("|----------|-------|\n")
            f.write(f"| **Hostname** | {system_info.get('hostname', 'N/A')} |\n")
            f.write(f"| **Operating System** | {system_info.get('os', 'N/A')} |\n")
            f.write(f"| **CPU Model** | {system_info.get('cpu_model', 'N/A')} |\n")
            f.write(f"| **CPU Frequency** | {system_info.get('cpu_mhz', 'N/A')} MHz |\n")
            f.write(f"| **Memory** | {system_info.get('memory', 'N/A')} |\n")
        else:
            f.write("*System information not available*\n")

        f.write("\n---\n\n")

        write_run_manifest_section(f, run_bundles, output_file)

        # Executive Summary
        f.write("## Executive Summary\n\n")
        f.write("This report measures centered REIST-style correction in its ")
        f.write("documented target domain (persistent additive modular state) ")
        f.write("and includes neutral/negative controls. It does not claim a ")
        f.write("general replacement for division, Barrett, or Montgomery reduction. ")
        f.write("Benchmarks were run with:\n\n")
        f.write("- **O0**: No optimization (baseline)\n")
        f.write("- **O3**: Full optimization with architecture-specific tuning\n")
        if simd_data and any(simd_data.values()):
            f.write("- **SIMD**: O3 optimization with SIMD/NEON extensions\n")
        f.write("\n")

        # Detailed benchmark sections
        write_modadd_section(f, o0_data, o3_data, simd_data, charts, output_file)
        write_poly_mod_section(f, o0_data, o3_data, simd_data, charts, output_file)
        write_modular_section(f, o0_data, o3_data, simd_data)
        write_chacha_sections(f, o0_data, o3_data, simd_data)
        write_hashmix_section(f, o0_data, o3_data, simd_data)
        write_reduction_baselines_section(f, o0_data, o3_data, simd_data)

        # ASM / Compiler artifact analysis
        write_asm_analysis_section(
            f, asm_results, asm_manifest, output_file, run_bundles
        )

        # Conclusions
        f.write("---\n\n")
        f.write("## Conclusions\n\n")
        f.write("### Key Findings\n\n")
        f.write("1. **Persistent centered additions are the target case.** Their one-correction ")
        f.write("loop can avoid a remainder operation after initial centering.\n\n")
        f.write("2. **Controls define the boundary.** Full unrelated remainders, ARX code, ")
        f.write("hash mixing, and multiplication-heavy paths need not improve.\n\n")
        f.write("3. **Compiler evidence is kernel-specific.** DIV, sign-mask, multiply/shift, ")
        f.write("and correction candidates are reported only for named emitted functions.\n\n")
        f.write("4. **Results are configuration-specific.** Compiler, flags, source hash, ")
        f.write("platform, and missing/inlined kernels are recorded in the build manifest.\n\n")

        f.write("### Recommendations\n\n")
        f.write("- Use centered correction only where the modulus is phase-stable and operands remain centered.\n")
        f.write("- Keep Montgomery/Barrett baselines for multiplication-dominated kernels.\n")
        f.write("- Validate scalar, SIMD, and hardware paths against the same canonical tie convention.\n")
        f.write("- Profile the complete application before drawing cryptographic performance conclusions.\n\n")

        f.write("---\n\n")
        f.write("*Report generated by REIST Crypto Bench automated documentation system*\n")

    print(f"\nGenerated comprehensive benchmark report: {output_file}")


def write_run_manifest_section(f, run_bundles, output_file):
    f.write("## Verified Run Inputs\n\n")
    if not run_bundles:
        f.write("**UNVERIFIED LEGACY MODE:** no runner manifest or artifact ")
        f.write("hashes back these inputs. This report is provenance-only and ")
        f.write("must not be used as paper evidence.\n\n---\n\n")
        return
    if any(bundle["data"].get("quick") for bundle in run_bundles.values()):
        f.write("**NON-REPORTABLE QUICK/SMOKE RUN:** these reduced workloads ")
        f.write("validate the pipeline only. Their timings must not be cited or ")
        f.write("used as paper evidence.\n\n")
    if any(bundle["data"].get("repository", {}).get("status")
           for bundle in run_bundles.values()):
        f.write("**NON-REPORTABLE DIRTY WORKTREE:** `--allow-dirty` was used. ")
        f.write("The exact dirty state is hash-bound across all profiles, but ")
        f.write("these timings must not be cited as paper evidence.\n\n")
    if any(bundle["data"].get("build", {}).get("verified") is not True
           for bundle in run_bundles.values()):
        f.write("**NON-REPORTABLE DECLARED BUILD METADATA:** no compile-time ")
        f.write("sidecar proves the declared CMake build flags. This mode is ")
        f.write("accepted only for quick/smoke pipeline validation.\n\n")
    f.write("All inputs below were resolved relative to their runner manifest. ")
    f.write("Recorded stdout, stderr, and CSV artifacts passed SHA-256 ")
    f.write("verification. For sidecar-backed builds, the timed binary, compiler ")
    f.write("version, exact compile command/flags, source and header hashes were ")
    f.write("also reverified before this report was generated.\n\n")
    f.write("The build fields in this table describe the **timed binaries**, ")
    f.write("not the separate assembly recompilation later in this report.\n\n")
    f.write("| Profile | Session | Run ID | Repository commit/state | Build provenance | Timed compiler flags | Manifest | Verified artifacts |\n")
    f.write("|---|---|---|---|---|---|---|---|\n")
    for label in ("O0", "O3", "SIMD"):
        bundle = run_bundles.get(label)
        if not bundle:
            continue
        data = bundle["data"]
        manifest_link = markdown_relpath(bundle["path"], output_file)
        artifact_links = []
        for records in bundle["artifacts"].values():
            for record in records:
                link = markdown_relpath(record["path"], output_file)
                digest = record["sha256"][:12]
                artifact_links.append(
                    f"[{record['path'].name}]({link}) (`{digest}...`)"
                )
        artifacts_text = "<br>".join(artifact_links) if artifact_links else "none"
        repository = data.get("repository", {})
        commit = repository.get("commit", "unavailable")
        state = "clean" if not repository.get("status") else "dirty"
        state_hash = repository.get("state_sha256", "unavailable")[:12]
        profile = label + (" (quick/smoke)" if data.get("quick") else "")
        build = data.get("build", {})
        compiler = build.get("compiler", {})
        build_state = "verified sidecars" if build.get("verified") else "declared only"
        build_text = (
            f"{build.get('system', 'unknown')}/{build.get('profile', 'unknown')}; "
            f"`{compiler.get('command', 'unknown')}`; {build_state}"
        )
        timed_flags = str(build.get("flags", "unknown")).replace("|", "\\|")
        f.write(
            f"| {profile} | `{data.get('session_id', 'unknown')}` | "
            f"`{data.get('timestamp', 'unknown')}` | `{commit}` ({state}; state `{state_hash}...`) | "
            f"{build_text} | `{timed_flags}` | [JSON]({manifest_link}) | {artifacts_text} |\n"
        )
    f.write("\n---\n\n")


def write_modadd_section(f, o0_data, o3_data, simd_data, charts, output_file):
    f.write("## Modular Addition Suite\n\n")
    f.write("This benchmark compares a classic persistent modulo update with a ")
    f.write("canonical centered state restored by one bounded correction. Inputs and ")
    f.write("state must satisfy the centered-range invariant.\n\n")

    for chart_type, chart_path in charts:
        if chart_type == 'modadd':
            rel_path = markdown_relpath(chart_path, output_file)
            f.write(f"![Modadd Comparison]({rel_path})\n\n")

    if 'bench_modadd_suite' in o0_data or 'bench_modadd_suite' in o3_data or 'bench_modadd_suite' in simd_data:
        f.write("### Results: O0 (No Optimization)\n\n")
        o0 = o0_data.get('bench_modadd_suite')
        if o0:
            write_modadd_table(f, o0)
        else:
            f.write("*No data available*\n\n")

        f.write("\n### Results: O3 (Optimized)\n\n")
        o3 = o3_data.get('bench_modadd_suite')
        if o3:
            write_modadd_table(f, o3)
        else:
            f.write("*No data available*\n\n")

        if simd_data and 'bench_modadd_suite' in simd_data:
            f.write("\n### Results: SIMD (O3 + SIMD/NEON)\n\n")
            simd = simd_data.get('bench_modadd_suite')
            if simd:
                write_modadd_table(f, simd)
            else:
                f.write("*No data available*\n\n")

    if any("bench_modadd_suite_neon" in data
           for data in (o0_data, o3_data, simd_data)):
        f.write("\n### AArch64 four-stream scalar/NEON companion\n\n")
        f.write("These rows contain four independent accumulators. They are a ")
        f.write("throughput comparison, not a speedup for one serial chain.\n\n")
        for label, data in (("O0", o0_data), ("O3", o3_data),
                            ("SIMD", simd_data)):
            result = data.get("bench_modadd_suite_neon", {})
            if not result.get("moduli"):
                continue
            f.write(f"#### {label}\n\n")
            write_neon_modadd_table(f, result)

    f.write("\n---\n\n")


def write_modadd_table(f, results):
    if not results.get('moduli'):
        f.write("*No data available*\n\n")
        return

    f.write("| Mode | Modulus | Classic Time (s) | REIST Time (s) | Speedup |\n")
    f.write("|---|---:|---:|---:|---:|\n")
    for m in results['moduli']:
        f.write(f"| {m.get('mode', 'unspecified')} | {m['modulus']:,} | {m['classic_time']:.6f} | "
                f"{m['reist_time']:.6f} | {m['speedup']:.3f}x |\n")
    f.write("\n")


def write_neon_modadd_table(f, results):
    f.write("| Mode | Modulus | Classic 4-stream (s) | REIST scalar 4-stream (s) | REIST NEON 4-stream (s) | Classic / NEON |\n")
    f.write("|---|---:|---:|---:|---:|---:|\n")
    for row in results["moduli"]:
        f.write(
            f"| {row.get('mode', 'unspecified')} | {row['modulus']:,} | "
            f"{row['classic_time']:.6f} | {row['scalar_reist_time']:.6f} | "
            f"{row['reist_time']:.6f} | {row['speedup']:.3f}x |\n"
        )
    f.write("\n")


def write_poly_mod_section(f, o0_data, o3_data, simd_data, charts, output_file):
    f.write("## Polynomial Modular Addition\n\n")
    f.write("Coefficient-wise modular addition over arrays. This is an additive ")
    f.write("kernel measurement, not a complete lattice-cryptography benchmark.\n\n")

    for chart_type, chart_path in charts:
        if chart_type == 'poly':
            rel_path = markdown_relpath(chart_path, output_file)
            f.write(f"![Poly Mod Comparison]({rel_path})\n\n")

    if 'bench_poly_mod' in o0_data or 'bench_poly_mod' in o3_data or 'bench_poly_mod' in simd_data:
        f.write("### Results: O0 (No Optimization)\n\n")
        o0 = o0_data.get('bench_poly_mod')
        if o0:
            write_poly_table(f, o0)
        else:
            f.write("*No data available*\n\n")

        f.write("\n### Results: O3 (Optimized)\n\n")
        o3 = o3_data.get('bench_poly_mod')
        if o3:
            write_poly_table(f, o3)
        else:
            f.write("*No data available*\n\n")

        if simd_data and 'bench_poly_mod' in simd_data:
            f.write("\n### Results: SIMD (O3 + SIMD/NEON)\n\n")
            simd = simd_data.get('bench_poly_mod')
            if simd:
                write_poly_table(f, simd)
            else:
                f.write("*No data available*\n\n")

    f.write("\n---\n\n")


def write_poly_table(f, results):
    if not results.get('moduli'):
        f.write("*No data available*\n\n")
        return

    f.write("| Mode | Modulus q | Classic Time (s) | REIST Time (s) | Speedup |\n")
    f.write("|---|---:|---:|---:|---:|\n")
    for m in results['moduli']:
        f.write(f"| {m.get('mode', 'unspecified')} | {m['q']:,} | {m['classic_time']:.6f} | "
                f"{m['reist_time']:.6f} | {m['speedup']:.3f}x |\n")
    f.write("\n")


def write_modular_section(f, o0_data, o3_data, simd_data):
    f.write("## Modular Remainder Operations\n\n")
    f.write("Negative/neutral control using independent full remainder computations; ")
    f.write("there is no persistent centered state to exploit.\n\n")

    if 'bench_modular' in o0_data or 'bench_modular' in o3_data or 'bench_modular' in simd_data:
        f.write("| Optimization | Classic `%` (s) | Centered full remainder (s) | Ratio classic / centered |\n")
        f.write("|---|---:|---:|---:|\n")

        o0 = o0_data.get('bench_modular', {})
        o3 = o3_data.get('bench_modular', {})
        simd = simd_data.get('bench_modular', {})

        if o0:
            f.write(f"| **O0** | {o0.get('classic_time', 0):.6f} | "
                    f"{o0.get('centered_time', 0):.6f} | {o0.get('speedup', 0):.3f}x |\n")
        if o3:
            f.write(f"| **O3** | {o3.get('classic_time', 0):.6f} | "
                    f"{o3.get('centered_time', 0):.6f} | {o3.get('speedup', 0):.3f}x |\n")
        if simd:
            f.write(f"| **SIMD** | {simd.get('classic_time', 0):.6f} | "
                    f"{simd.get('centered_time', 0):.6f} | {simd.get('speedup', 0):.3f}x |\n")

        f.write("\n")

    f.write("---\n\n")


def write_chacha_sections(f, o0_data, o3_data, simd_data):
    f.write("## ARX Control (`bench_chacha_stream`)\n\n")
    f.write("ARX control. ChaCha20 uses power-of-two word arithmetic and provides no ")
    f.write("general-modulus REIST fast path; this is not a cipher-speedup claim.\n\n")

    if 'bench_chacha_stream' in o0_data or 'bench_chacha_stream' in o3_data or 'bench_chacha_stream' in simd_data:
        f.write("### Stream-style control results\n\n")
        f.write("| Optimization | Standard add (MB/s) | Identity add (MB/s) | Ratio std / identity |\n")
        f.write("|---|---:|---:|---:|\n")

        o0 = o0_data.get('bench_chacha_stream', {})
        o3 = o3_data.get('bench_chacha_stream', {})
        simd = simd_data.get('bench_chacha_stream', {})

        if o0:
            f.write(f"| **O0** | {o0.get('classic_mbps', 0):.2f} | "
                    f"{o0.get('identity_mbps', 0):.2f} | {o0.get('speedup', 0):.3f}x |\n")
        if o3:
            f.write(f"| **O3** | {o3.get('classic_mbps', 0):.2f} | "
                    f"{o3.get('identity_mbps', 0):.2f} | {o3.get('speedup', 0):.3f}x |\n")
        if simd:
            f.write(f"| **SIMD** | {simd.get('classic_mbps', 0):.2f} | "
                    f"{simd.get('identity_mbps', 0):.2f} | {simd.get('speedup', 0):.3f}x |\n")

        f.write("\n")

    f.write("---\n\n")


def write_hashmix_section(f, o0_data, o3_data, simd_data):
    f.write("## Hash-Mix Operations\n\n")
    f.write("Negative control for multiplication/diffusion-heavy mixing. This workload ")
    f.write("does not satisfy the persistent centered-addition target pattern.\n\n")

    if 'bench_hashmix' in o0_data or 'bench_hashmix' in o3_data or 'bench_hashmix' in simd_data:
        f.write("### Results: O0 vs O3 vs SIMD Comparison\n\n")

        o0_moduli = o0_data.get('bench_hashmix', {}).get('moduli', [])
        o3_moduli = o3_data.get('bench_hashmix', {}).get('moduli', [])
        simd_moduli = simd_data.get('bench_hashmix', {}).get('moduli', [])

        if o0_moduli or o3_moduli or simd_moduli:
            f.write("| Modulus | O0 ratio | O3 ratio | SIMD ratio |\n")
            f.write("|---:|---:|---:|---:|\n")

            max_len = max(len(o0_moduli), len(o3_moduli), len(simd_moduli))
            for i in range(max_len):
                o0_speedup = o0_moduli[i]['speedup'] if i < len(o0_moduli) else 0
                o3_speedup = o3_moduli[i]['speedup'] if i < len(o3_moduli) else 0
                simd_speedup = simd_moduli[i]['speedup'] if i < len(simd_moduli) else 0
                
                # Get modulus from whichever has data
                if i < len(o0_moduli):
                    modulus = o0_moduli[i]['modulus']
                elif i < len(o3_moduli):
                    modulus = o3_moduli[i]['modulus']
                else:
                    modulus = simd_moduli[i]['modulus']
                
                simd_col = f"| {simd_speedup:.3f}x " if simd_speedup else "| - "
                f.write(f"| {modulus:,} | {o0_speedup:.3f}x | {o3_speedup:.3f}x {simd_col}|\n")

            f.write("\n")

    f.write("---\n\n")


def result_profiles(o0_data, o3_data, simd_data, benchmark):
    for label, collection in (
        ("O0", o0_data), ("O3", o3_data), ("SIMD", simd_data)
    ):
        result = collection.get(benchmark, {})
        if result.get("moduli"):
            yield label, result["moduli"]


def write_reduction_baselines_section(f, o0_data, o3_data, simd_data):
    f.write("## Montgomery and Barrett Baselines\n\n")
    f.write("These validated programs separate the bounded centered-addition ")
    f.write("fast path from broader multiplication and reciprocal-reduction ")
    f.write("workloads. Rows from different subsections or dependency structures ")
    f.write("must not be treated as interchangeable.\n\n")

    montgomery_profiles = list(result_profiles(
        o0_data, o3_data, simd_data, "bench_montgomery"
    ))
    f.write("### `bench_montgomery`\n\n")
    f.write("`REIST` appears only in the additive columns. The centered ")
    f.write("multiplication column is explicitly a full-`%` reference, not a ")
    f.write("REIST multiplication algorithm.\n\n")
    if not montgomery_profiles:
        f.write("*No parsed Montgomery data available.*\n\n")
    for label, rows in montgomery_profiles:
        f.write(f"#### {label}\n\n")
        f.write("| Modulus | Add classic | Add REIST | Add Montgomery | Mul classic | Mul centered `%` | Mul Montgomery | Full classic | Full Montgomery | Conversion delta |\n")
        f.write("|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|\n")
        for row in rows:
            f.write(
                f"| {row['modulus']:,} | {row['add_classic']:.6f} s | "
                f"{row['add_reist']:.6f} s | {row['add_montgomery']:.6f} s | "
                f"{row['mul_classic']:.6f} s | "
                f"{row['mul_centered_reference']:.6f} s | "
                f"{row['mul_montgomery']:.6f} s | "
                f"{row['full_classic']:.6f} s | "
                f"{row['full_montgomery']:.6f} s | "
                f"{row['conversion_overhead_percent']:.2f}% |\n"
            )
        f.write("\n")

    barrett_profiles = list(result_profiles(
        o0_data, o3_data, simd_data, "bench_barret_reist"
    ))
    f.write("### `bench_barret_reist`\n\n")
    f.write("The first table is one dependent additive stream. Optional AVX2 ")
    f.write("rows are eight independent streams and therefore a separate ")
    f.write("throughput experiment.\n\n")
    if not barrett_profiles:
        f.write("*No parsed Barrett data available.*\n\n")
    for label, rows in barrett_profiles:
        f.write(f"#### {label}: one dependent stream\n\n")
        f.write("| Modulus | Classic `%` | REIST add | Barrett int64 | Barrett int32 | Classic / REIST |\n")
        f.write("|---:|---:|---:|---:|---:|---:|\n")
        for row in rows:
            speedup = row.get(
                "classic_reist_speedup", row["classic"] / row["reist"]
            )
            f.write(
                f"| {row['modulus']:,} | {row['classic']:.6f} s | "
                f"{row['reist']:.6f} s | {row['barrett64']:.6f} s | "
                f"{row['barrett32']:.6f} s | {speedup:.3f}x |\n"
            )
        f.write("\n")

        simd_rows = [row for row in rows if "reist_avx2_8" in row]
        if simd_rows:
            f.write(f"#### {label}: eight independent AVX2 streams\n\n")
            f.write("| Modulus | REIST scalar | REIST AVX2 | Barrett scalar | Barrett AVX2 |\n")
            f.write("|---:|---:|---:|---:|---:|\n")
            for row in simd_rows:
                f.write(
                    f"| {row['modulus']:,} | {row['reist_scalar_8']:.6f} s | "
                    f"{row['reist_avx2_8']:.6f} s | "
                    f"{row['barrett_scalar_8']:.6f} s | "
                    f"{row['barrett_avx2_8']:.6f} s |\n"
                )
            f.write("\n")

    f.write("---\n\n")


def write_asm_analysis_section(
    f, asm_results, asm_manifest, output_file, run_bundles
):
    """Write compiler artifact analysis section."""
    f.write("## Compiler Artifact Analysis (Assembly Inspection)\n\n")
    f.write("This section inspects only explicitly manifested arithmetic functions. ")
    f.write("Timing, I/O, parsing, allocation, and unrelated functions in the same ")
    f.write("translation unit are excluded from classification.\n\n")
    f.write("This is a **separate assembly recompilation**, not provenance for ")
    f.write("the timed binaries; their compiler and exact flags are recorded in ")
    f.write("the Verified Run Inputs table above. ")
    try:
        asm_data = json.loads(Path(asm_manifest).read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        asm_data = {}
    asm_compiler = asm_data.get("compiler", "unknown")
    timed_compiler = "legacy/unavailable"
    if run_bundles:
        timed = run_bundles["O3"]["data"].get("build", {}).get("compiler", {})
        timed_compiler = timed.get("executable") or timed.get("command", "unknown")
    relation = "same compiler selection" if asm_compiler == timed_compiler else "different compiler selection"
    f.write(
        f"Timed: `{timed_compiler}`; assembly: `{asm_compiler}` ({relation}).\n\n"
    )

    if not asm_results:
        f.write("*No assembly analysis available.*\n\n")
        return

    rel_manifest = markdown_relpath(asm_manifest, output_file)
    f.write(f"Build and analysis metadata: [JSON manifest]({rel_manifest})\n\n")
    f.write("| Source | Opt | Emitted kernel | Role | DIV | Sign-mask | Multiply+shift candidate | Centered-correction candidate | ASM |\n")
    f.write("|---|---|---|---|---|---|---|---|---|\n")

    for bench_key, data in sorted(asm_results.items()):
        for opt in ("O0", "O3"):
            res = data[opt]
            asm_file = data["asm_o0"] if opt == "O0" else data["asm_o3"]
            rel_asm = markdown_relpath(asm_file, output_file)

            def yes_no(flag):
                return "YES" if flag else "no"

            if not res["kernels"]:
                missing = ", ".join(res["missing"]) or "none"
                f.write(f"| `{bench_key}.cpp` | {opt} | not emitted/inlined "
                        f"(`{missing}`) | - | - | - | - | - | [asm]({rel_asm}) |\n")
                continue

            for kernel in res["kernels"]:
                display_name = kernel["name"].replace("|", "\\|")
                f.write(f"| `{bench_key}.cpp` | {opt} | `{display_name}` | "
                        f"{kernel['role']} | {yes_no(kernel['div'])} | "
                        f"{yes_no(kernel['signmask'])} | "
                        f"{'candidate' if kernel['magic'] else 'no'} | "
                        f"{'candidate' if kernel['reist'] else 'no'} | "
                        f"[asm]({rel_asm}) |\n")

    f.write("\n")
    f.write("Interpretation:\n\n")
    f.write("- **DIV** recognizes x86 `div`/`idiv` suffix variants and AArch64 `sdiv`/`udiv`.\n")
    f.write("- **Sign-mask** requires an arithmetic right shift by exactly 31 or 63 bits.\n")
    f.write("- **Multiply+shift** is only a strength-reduction candidate; it is not proof that a modulo operation caused the sequence.\n")
    f.write("- **Centered correction** requires a REIST/centered kernel name plus compare, conditional selection, and add/sub instructions.\n")
    f.write("- Missing kernels may have been inlined or optimized away; no whole-file inference replaces them.\n")
    f.write("- Assembly shape does not by itself establish constant-time or side-channel behavior.\n\n")
    f.write("---\n\n")


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    os.chdir(REPOSITORY_ROOT)
    print("=" * 60)
    print("REIST Benchmark Documentation Generator (with ASM Analysis)")
    print("=" * 60)

    print("\nSearching for benchmark results...")
    # Read prefix from CLI or environment
    parser = argparse.ArgumentParser()
    parser.add_argument("--prefix", type=str, default=None,
                        help="session ID or timestamp prefix selecting one O0/O3/SIMD session")
    parser.add_argument("--compiler", type=str, default=None,
                        help="C++ compiler for separate assembly artifacts (default: timed compiler; legacy: CXX/clang++/g++)")
    parser.add_argument("--result-dir", type=Path, default=None,
                        help="runner-manifest directory (default: architecture result directory)")
    parser.add_argument("--allow-quick", action="store_true",
                        help="allow explicitly selected quick/smoke runner manifests")
    parser.add_argument("--allow-dirty", action="store_true",
                        help="allow dirty-worktree manifests as explicitly non-reportable")
    parser.add_argument("--legacy", action="store_true",
                        help="use historical manifestless stdout files as unverified provenance")
    args = parser.parse_args()

    result_dir = args.result_dir or Path(get_arch_result_dir())
    prefix = args.prefix or os.environ.get("RESULT_TIMESTAMP")
    compiler = args.compiler

    print(f"\nResult directory: {result_dir}")
    print(f"\nUsing prefix: {prefix if prefix else '(auto: newest timestamp)'}")

    run_bundles = {}
    if not args.legacy:
        try:
            selected_session = find_runner_session(
                result_dir, prefix, allow_quick=args.allow_quick
            )
        except (OSError, ValueError, json.JSONDecodeError) as error:
            print(f"ERROR: {error}")
            return 1
        if not selected_session:
            print("ERROR: a complete O0/O3/SIMD runner session is required")
            print("Use --legacy only to inspect unverified historical provenance.")
            return 1
        run_bundles = selected_session["bundles"]
        commits = {
            bundle["data"].get("repository", {}).get("commit")
            for bundle in run_bundles.values()
        }
        host_keys = {
            (
                bundle["data"].get("host", {}).get("platform"),
                bundle["data"].get("host", {}).get("machine"),
                bundle["data"].get("host", {}).get("processor"),
            )
            for bundle in run_bundles.values()
        }
        repository_states = {
            bundle["data"].get("repository", {}).get("status")
            for bundle in run_bundles.values()
        }
        state_hashes = {
            bundle["data"].get("repository", {}).get("state_sha256")
            for bundle in run_bundles.values()
        }
        session_ids = {
            bundle["data"].get("session_id")
            for bundle in run_bundles.values()
        }
        runner_hashes = {
            bundle["data"].get("runner_sha256")
            for bundle in run_bundles.values()
        }
        build_systems = {
            bundle["data"].get("build", {}).get("system")
            for bundle in run_bundles.values()
        }
        compiler_identities = {
            (
                bundle["data"].get("build", {}).get("compiler", {}).get("executable"),
                bundle["data"].get("build", {}).get("compiler", {}).get("version"),
            )
            for bundle in run_bundles.values()
        }
        if len(commits) != 1 or None in commits:
            print("ERROR: selected optimization manifests use different/unknown commits")
            return 1
        if len(host_keys) != 1:
            print("ERROR: selected optimization manifests come from different hosts")
            return 1
        if len(repository_states) != 1:
            print("ERROR: repository state changed between optimization runs")
            return 1
        recorded_state = next(iter(repository_states))
        if recorded_state and not args.allow_dirty:
            print("ERROR: selected manifests record a dirty worktree")
            print("Use --allow-dirty only for an explicitly non-reportable report.")
            return 1
        if len(state_hashes) != 1 or None in state_hashes:
            print("ERROR: repository state_sha256 changed between optimization runs")
            return 1
        recorded_state_hash = next(iter(state_hashes))
        current_status, current_state_hash = calculate_repository_state(
            Path(result_dir)
        )
        if (current_status != recorded_state
                or current_state_hash != recorded_state_hash):
            print("ERROR: repository state changed after the timed runs")
            return 1
        if len(session_ids) != 1 or None in session_ids:
            print("ERROR: selected optimization manifests use different sessions")
            return 1
        if len(runner_hashes) != 1 or None in runner_hashes:
            print("ERROR: runner implementation changed between optimization runs")
            return 1
        if len(build_systems) != 1 or None in build_systems:
            print("ERROR: selected optimization manifests use different build systems")
            return 1
        if len(compiler_identities) != 1 or any(None in item for item in compiler_identities):
            print("ERROR: selected optimization manifests use different compilers")
            return 1
        current_revision = repository_revision()
        if current_revision not in commits:
            print("ERROR: current repository revision differs from the timed build")
            return 1
        o0_files = list(run_bundles["O0"]["stdout"].values())
        o3_files = list(run_bundles["O3"]["stdout"].values())
        simd_files = list(run_bundles.get("SIMD", {}).get("stdout", {}).values())
    else:
        print("WARNING: legacy mode is unverified and must not be reported as paper evidence")
        o0_files = find_latest_results(result_dir, 0, prefix)
        o3_files = find_latest_results(result_dir, 3, prefix)
        simd_files = find_latest_simd_results(result_dir, prefix)
        if not o0_files or not o3_files:
            print("ERROR: Could not find legacy O0 and O3 result groups")
            return 1

    if run_bundles:
        timed_compiler = run_bundles["O3"]["data"].get("build", {}).get(
            "compiler", {}
        )
        recorded_compiler = (
            timed_compiler.get("executable") or timed_compiler.get("command")
        )
        if compiler is None:
            compiler = recorded_compiler
        elif compiler not in {
            timed_compiler.get("command"), timed_compiler.get("executable")
        }:
            print(
                "NOTE: --compiler differs from the timed compiler; assembly is "
                "a separately labelled recompilation."
            )
    elif compiler is None:
        compiler = preferred_compiler()
    if not compiler:
        print("ERROR: no compiler is available for assembly analysis")
        return 1

    print(f"Found {len(o0_files)} O0 benchmark files")
    print(f"Found {len(o3_files)} O3 benchmark files")
    if simd_files:
        print(f"Found {len(simd_files)} SIMD benchmark files")

    system_info = extract_system_info(o0_files + o3_files + simd_files)
    if run_bundles:
        host = run_bundles["O3"]["data"].get("host", {})
        system_info.update({
            "os": host.get("platform", system_info.get("os", "N/A")),
            "cpu_model": (host.get("processor") or host.get("machine")
                          or system_info.get("cpu_model", "N/A")),
        })
    print(f"\nSystem: {system_info.get('cpu_model', 'Unknown')}")

    print("\nParsing benchmark results...")
    o0_data = {}
    o3_data = {}
    simd_data = {}
    if run_bundles:
        for label, destination in (
            ("O0", o0_data), ("O3", o3_data), ("SIMD", simd_data)
        ):
            bundle = run_bundles.get(label)
            if not bundle:
                continue
            for bench_name, fpath in bundle["stdout"].items():
                destination[bench_name] = parse_benchmark_results(fpath)
                print(f"  Parsed {label}: {bench_name}")
    else:
        for label, files, destination in (
            ("O0", o0_files, o0_data),
            ("O3", o3_files, o3_data),
            ("SIMD", simd_files, simd_data),
        ):
            suffix = f"_{label}.txt"
            for fpath in files:
                bench_name = os.path.basename(fpath).split(suffix)[0].split('_', 2)[2]
                destination[bench_name] = parse_benchmark_results(fpath)
                print(f"  Parsed unverified legacy {label}: {bench_name}")

    print("\nGenerating comparison charts...")
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S_%f")

    if run_bundles:
        try:
            charts = generate_verified_comparison_charts(
                result_dir, timestamp, run_bundles,
                allow_quick=args.allow_quick,
            )
        except subprocess.CalledProcessError as error:
            print(f"ERROR: manifest-aware chart generation failed: {error}")
            return 1
    else:
        charts = create_comparison_charts(o0_data, o3_data, result_dir, timestamp)

    # ASM compilation + analysis
    print(f"\nCompiling and analyzing manifested kernels with {compiler} ...")
    bench_sources = find_bench_sources("src")
    asm_dir = Path(result_dir) / f"{timestamp}_ASM"
    asm_results, asm_manifest = collect_asm_analysis(asm_dir, bench_sources, compiler)

    print("\nGenerating markdown report...")
    output_file = os.path.join(result_dir, f"{timestamp}_BENCHMARK_REPORT.md")
    generate_markdown_report(system_info, o0_data, o3_data, simd_data, charts,
                             asm_results, asm_manifest, run_bundles, output_file)

    print("\n" + "=" * 60)
    print("Documentation generation complete!")
    print("=" * 60)
    print(f"\nReport location: {output_file}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
