#!/usr/bin/env python3
"""Run the validated benchmarks with fail-fast correctness handling.

Every benchmark performs its own preflight. This runner preserves stdout,
stderr, exact commands, binary hashes, host data and repository state so a
report cannot silently consume a failed or missing run.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
import pathlib
import platform
import re
import shlex
import shutil
import subprocess
import sys
import time
from typing import Any


REPOSITORY_ROOT = pathlib.Path(__file__).resolve().parents[1]

QUICK_ARGUMENTS: dict[str, list[str]] = {
    "bench_modadd_suite": ["200000", "257"],
    "bench_modadd_suite_neon": ["200000", "257"],
    "bench_poly_mod": ["20000", "2", "257"],
    "bench_modular": ["257", "200000"],
    "bench_chacha_stream": ["1000"],
    "bench_hashmix": ["200000", "1000003"],
    "bench_montgomery": ["1000"],
    "bench_barret_reist": ["8000"],
}

GENERATED_ARTIFACTS: dict[str, list[str]] = {
    "bench_modadd_suite": ["results_modadd_suite.csv"],
    "bench_modadd_suite_neon": ["results_modadd_suite_neon.csv"],
    "bench_poly_mod": ["results_poly_mod.csv"],
}

BENCHMARKS = [
    "bench_modadd_suite",
    "bench_poly_mod",
    "bench_modular",
    "bench_chacha_stream",
    "bench_hashmix",
    "bench_montgomery",
    "bench_barret_reist",
]

def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def canonical_json_sha256(value: Any) -> str:
    encoded = json.dumps(
        value, sort_keys=True, separators=(",", ":"), ensure_ascii=False
    ).encode("utf-8")
    return hashlib.sha256(encoded).hexdigest()


def compiler_metadata(command: str) -> dict[str, Any]:
    command_path = pathlib.Path(command)
    argv = ([command] if command_path.is_file()
            else shlex.split(command, posix=os.name != "nt"))
    if not argv:
        raise ValueError("compiler command is empty")
    executable = shutil.which(argv[0])
    if executable is None:
        candidate = pathlib.Path(argv[0])
        if not candidate.is_file():
            raise ValueError(f"compiler executable was not found: {argv[0]}")
        executable = str(candidate.resolve())
    try:
        completed = subprocess.run(
            [*argv, "--version"],
            check=True,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=30,
        )
    except (OSError, subprocess.CalledProcessError, subprocess.TimeoutExpired) as error:
        raise ValueError(f"could not query compiler version: {error}") from error
    version = completed.stdout.strip()
    if not version:
        raise ValueError("compiler returned an empty version string")
    return {
        "command": command,
        "argv": argv,
        "executable": pathlib.Path(executable).resolve().as_posix(),
        "version": version,
    }


def declared_compiler_metadata(args: argparse.Namespace) -> dict[str, Any]:
    """Accept CMake's declared identity without executing a non-portable driver."""
    if not args.compiler_version:
        return compiler_metadata(args.compiler)
    executable = args.compiler_executable or args.compiler
    return {
        "command": args.compiler,
        "argv": [args.compiler],
        "executable": pathlib.Path(executable).as_posix(),
        "version": args.compiler_version,
    }


def portable_repository_path(path: pathlib.Path) -> str:
    resolved = path.resolve()
    try:
        return resolved.relative_to(REPOSITORY_ROOT).as_posix()
    except ValueError as error:
        raise ValueError(f"benchmark binary is outside the repository: {path}") from error


def resolve_repository_input(stored_path: str) -> pathlib.Path:
    relative = pathlib.Path(stored_path)
    if relative.is_absolute():
        raise ValueError(f"build input path must be repository-relative: {stored_path}")
    candidate = (REPOSITORY_ROOT / relative).resolve()
    try:
        candidate.relative_to(REPOSITORY_ROOT)
    except ValueError as error:
        raise ValueError(f"build input escapes repository: {stored_path}") from error
    return candidate


def verified_build_provenance(
    binary: pathlib.Path,
    args: argparse.Namespace,
    current_compiler: dict[str, Any],
) -> tuple[dict[str, Any], str]:
    sidecar = pathlib.Path(str(binary) + ".build.json")
    if not sidecar.is_file():
        raise ValueError(f"verified build sidecar is missing: {sidecar}")
    try:
        metadata = json.loads(sidecar.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        raise ValueError(f"could not read build sidecar {sidecar}: {error}") from error
    if not isinstance(metadata, dict) or metadata.get("schema") != 1:
        raise ValueError(f"unsupported build sidecar schema: {sidecar}")

    build = metadata.get("build")
    compiler = metadata.get("compiler")
    binary_record = metadata.get("binary")
    inputs = metadata.get("inputs")
    if not all(isinstance(value, dict) for value in (build, compiler, binary_record)):
        raise ValueError(f"incomplete build sidecar metadata: {sidecar}")
    expected_build = {
        "system": args.build_system,
        "profile": args.build_profile,
        "flags": args.build_flags.strip(),
    }
    for key, expected in expected_build.items():
        if build.get(key) != expected:
            raise ValueError(
                f"build sidecar {key} mismatch for {binary}: "
                f"expected {expected!r}, found {build.get(key)!r}"
            )
    command = build.get("command")
    if not isinstance(command, str) or not command.strip():
        raise ValueError(f"build sidecar has no exact compiler command: {sidecar}")
    for key in ("command", "argv", "executable", "version"):
        if compiler.get(key) != current_compiler.get(key):
            raise ValueError(f"build sidecar compiler {key} mismatch for {binary}")

    expected_binary_hash = binary_record.get("sha256")
    if not isinstance(expected_binary_hash, str) or not re.fullmatch(
        r"[0-9a-fA-F]{64}", expected_binary_hash
    ):
        raise ValueError(f"build sidecar has no valid binary hash: {sidecar}")
    actual_binary_hash = sha256(binary)
    if actual_binary_hash.lower() != expected_binary_hash.lower():
        raise ValueError(f"build sidecar binary hash mismatch for {binary}")
    stored_binary_path = binary_record.get("path")
    if not isinstance(stored_binary_path, str):
        raise ValueError(f"build sidecar has no binary path: {sidecar}")
    if resolve_repository_input(stored_binary_path) != binary.resolve():
        raise ValueError(f"build sidecar belongs to another binary: {sidecar}")

    if not isinstance(inputs, list) or not inputs:
        raise ValueError(f"build sidecar has no hashed inputs: {sidecar}")
    for record in inputs:
        if not isinstance(record, dict):
            raise ValueError(f"invalid input record in {sidecar}")
        stored_path = record.get("path")
        expected_hash = record.get("sha256")
        if not isinstance(stored_path, str) or not isinstance(expected_hash, str):
            raise ValueError(f"incomplete input record in {sidecar}")
        if not re.fullmatch(r"[0-9a-fA-F]{64}", expected_hash):
            raise ValueError(f"invalid input hash in {sidecar}: {stored_path}")
        input_path = resolve_repository_input(stored_path)
        if not input_path.is_file() or sha256(input_path).lower() != expected_hash.lower():
            raise ValueError(f"build input changed since compilation: {stored_path}")

    return ({
        "mode": "sidecar",
        "verified": True,
        "metadata": metadata,
        "metadata_sha256": canonical_json_sha256(metadata),
        "sidecar_sha256": sha256(sidecar),
    }, actual_binary_hash)


def declared_build_provenance(
    binary: pathlib.Path,
    args: argparse.Namespace,
    current_compiler: dict[str, Any],
) -> tuple[dict[str, Any], str]:
    binary_hash = sha256(binary)
    metadata = {
        "schema": 1,
        "build": {
            "system": args.build_system,
            "profile": args.build_profile,
            "flags": args.build_flags.strip(),
            "command": "not captured (declared quick/smoke build)",
        },
        "compiler": current_compiler,
        "binary": {"path": portable_repository_path(binary), "sha256": binary_hash},
        "inputs": [],
    }
    return ({
        "mode": "declared",
        "verified": False,
        "reason": "no compile-time sidecar; permitted only for quick/smoke validation",
        "metadata": metadata,
        "metadata_sha256": canonical_json_sha256(metadata),
    }, binary_hash)


def git_output(*arguments: str) -> str:
    try:
        result = subprocess.run(
            ["git", *arguments],
            check=True,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
            cwd=REPOSITORY_ROOT,
        )
        return result.stdout.strip()
    except (OSError, subprocess.CalledProcessError):
        return "unavailable"


def safe_token(value: str, description: str) -> str:
    token = "".join(ch if ch.isalnum() or ch in "-_" else "_" for ch in value)
    if not token:
        raise ValueError(f"{description} must contain an alphanumeric character")
    return token


def is_generated_result(path: str, result_dir: pathlib.Path) -> bool:
    candidate = (REPOSITORY_ROOT / pathlib.PurePosixPath(path)).resolve()
    try:
        relative = candidate.relative_to(result_dir.resolve())
    except ValueError:
        return False
    if not relative.parts:
        return False
    return bool(re.match(r"^\d{8}_\d{6}(?:_\d{6})?_", relative.parts[0]))


def repository_state(result_dir: pathlib.Path) -> tuple[str, str]:
    """Return a stable status and content hash, excluding generated results."""
    try:
        status_process = subprocess.run(
            ["git", "status", "--porcelain=v1", "-z", "--untracked-files=all"],
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
            cwd=REPOSITORY_ROOT,
        )
        tokens = status_process.stdout.split(b"\0")
        entries: list[tuple[str, str, str | None]] = []
        index = 0
        while index < len(tokens) and tokens[index]:
            record = tokens[index]
            if len(record) < 4:
                raise ValueError("malformed git status record")
            code = record[:2].decode("ascii", errors="replace")
            path = record[3:].decode("utf-8", errors="surrogateescape")
            original: str | None = None
            if "R" in code or "C" in code:
                index += 1
                if index >= len(tokens) or not tokens[index]:
                    raise ValueError("incomplete git rename record")
                original = tokens[index].decode("utf-8", errors="surrogateescape")
            index += 1
            if code == "??" and is_generated_result(path, result_dir):
                continue
            entries.append((code, path, original))

        entries.sort()
        status_lines = [
            f"{code} {path}" + (f" <- {original}" if original else "")
            for code, path, original in entries
        ]

        difference = subprocess.run(
            ["git", "diff", "--binary", "HEAD", "--", "."],
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
            cwd=REPOSITORY_ROOT,
        ).stdout
        digest = hashlib.sha256()
        digest.update(difference)
        for code, path, original in entries:
            digest.update(code.encode("ascii", errors="replace"))
            digest.update(path.encode("utf-8", errors="surrogateescape"))
            if original:
                digest.update(original.encode("utf-8", errors="surrogateescape"))
            if code == "??":
                untracked = REPOSITORY_ROOT / pathlib.PurePosixPath(path)
                if untracked.is_file():
                    digest.update(bytes.fromhex(sha256(untracked)))
        return "\n".join(status_lines), digest.hexdigest()
    except (OSError, subprocess.CalledProcessError, ValueError):
        return "unavailable", "unavailable"


def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-dir", type=pathlib.Path, default=pathlib.Path("build"))
    parser.add_argument("--suffix", default="_opt")
    parser.add_argument("--label", default="O3")
    parser.add_argument(
        "--session-id",
        help="shared identifier used to bind O0/O3/SIMD runs into one report",
    )
    parser.add_argument("--quick", action="store_true")
    parser.add_argument("--timeout", type=int, default=1800)
    parser.add_argument("--result-dir", type=pathlib.Path)
    parser.add_argument("--bench", action="append", choices=sorted(QUICK_ARGUMENTS))
    parser.add_argument("--compiler", required=True,
                        help="compiler command used for the timed binaries")
    parser.add_argument("--compiler-version",
                        help="declared compiler identity/version (declared quick mode only)")
    parser.add_argument("--compiler-executable",
                        help="declared compiler path (declared quick mode only)")
    parser.add_argument("--build-system", required=True)
    parser.add_argument("--build-profile", required=True)
    parser.add_argument("--build-flags", required=True,
                        help="exact compiler flags used for the timed binaries")
    parser.add_argument(
        "--build-provenance", choices=("sidecar", "declared"), default="sidecar",
        help="sidecar is verified; declared is permitted only for quick/smoke runs",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_arguments()
    if args.timeout <= 0:
        print("ERROR: --timeout must be a positive number of seconds", file=sys.stderr)
        return 2
    if not args.build_flags.strip():
        print("ERROR: --build-flags must not be empty", file=sys.stderr)
        return 2
    if args.build_provenance == "declared" and not args.quick:
        print(
            "ERROR: declared build metadata is permitted only with --quick",
            file=sys.stderr,
        )
        return 2
    try:
        current_compiler = (
            declared_compiler_metadata(args)
            if args.build_provenance == "declared"
            else compiler_metadata(args.compiler)
        )
    except ValueError as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 2
    machine = platform.machine().lower()
    family = "arm" if machine in {"aarch64", "arm64"} or machine.startswith("arm") else "x86"
    result_dir = (args.result_dir or
                  REPOSITORY_ROOT / "tests" / "results" / family)
    result_dir.mkdir(parents=True, exist_ok=True)

    timestamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S_%f")
    try:
        label = safe_token(args.label, "label")
        session_id = safe_token(args.session_id or timestamp, "session id")
    except ValueError as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 2
    executable_suffix = ".exe" if os.name == "nt" else ""
    artifact_dir = result_dir / f"{timestamp}_{label}_artifacts"
    artifact_dir.mkdir(parents=True, exist_ok=False)

    selected = args.bench or list(BENCHMARKS)
    if family == "arm" and not args.bench:
        neon = args.build_dir / f"bench_modadd_suite_neon{args.suffix}{executable_suffix}"
        if neon.exists():
            selected.append("bench_modadd_suite_neon")

    status, state_sha256 = repository_state(result_dir)
    manifest: dict[str, Any] = {
        "schema": 2,
        "timestamp": timestamp,
        "label": label,
        "session_id": session_id,
        "quick": args.quick,
        "runner_sha256": sha256(pathlib.Path(__file__)),
        "artifact_directory": artifact_dir.relative_to(result_dir).as_posix(),
        "host": {
            "platform": platform.platform(),
            "machine": platform.machine(),
            "processor": platform.processor(),
            "python": sys.version,
        },
        "repository": {
            "commit": git_output("rev-parse", "HEAD"),
            "status": status,
            "state_sha256": state_sha256,
        },
        "build": {
            "system": args.build_system,
            "profile": args.build_profile,
            "flags": args.build_flags.strip(),
            "compiler": current_compiler,
            "provenance_mode": args.build_provenance,
            "verified": args.build_provenance == "sidecar",
        },
        "runs": [],
    }

    failed = False
    for name in selected:
        binary = args.build_dir / f"{name}{args.suffix}{executable_suffix}"
        try:
            binary_manifest_path = portable_repository_path(binary)
        except ValueError as error:
            print(f"ERROR: {error}", file=sys.stderr)
            manifest["runs"].append({"name": name, "error": str(error)})
            failed = True
            break
        if not binary.is_file():
            print(f"ERROR: required benchmark binary is missing: {binary}", file=sys.stderr)
            manifest["runs"].append({"name": name, "error": "missing binary"})
            failed = True
            break

        try:
            if args.build_provenance == "sidecar":
                build_provenance, binary_hash = verified_build_provenance(
                    binary, args, current_compiler
                )
            else:
                build_provenance, binary_hash = declared_build_provenance(
                    binary, args, current_compiler
                )
        except (OSError, ValueError) as error:
            print(f"ERROR: {error}", file=sys.stderr)
            manifest["runs"].append({
                "name": name,
                "binary": binary_manifest_path,
                "error": f"invalid build provenance: {error}",
            })
            failed = True
            break

        command = [str(binary.resolve())]
        if args.quick:
            command.extend(QUICK_ARGUMENTS[name])

        output_path = result_dir / f"{timestamp}_{name}_{label}.txt"
        error_path = result_dir / f"{timestamp}_{name}_{label}.stderr.txt"
        print("Running", " ".join(command), flush=True)
        start = time.perf_counter()
        try:
            completed = subprocess.run(
                command,
                text=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                cwd=artifact_dir.resolve(),
                timeout=args.timeout,
                check=False,
            )
            elapsed = time.perf_counter() - start
            output_path.write_text(completed.stdout, encoding="utf-8")
            error_path.write_text(completed.stderr, encoding="utf-8")

            entry = {
                "name": name,
                "command": command,
                "binary": binary_manifest_path,
                "binary_sha256": binary_hash,
                "build_provenance": build_provenance,
                "elapsed_seconds": elapsed,
                "returncode": completed.returncode,
                "stdout": output_path.relative_to(result_dir).as_posix(),
                "stdout_sha256": sha256(output_path),
                "stderr": error_path.relative_to(result_dir).as_posix(),
                "stderr_sha256": sha256(error_path),
                "artifacts": [],
            }
            if sha256(binary) != binary_hash:
                entry["error"] = "benchmark binary changed while it was being run"
                failed = True
            for artifact_name in GENERATED_ARTIFACTS.get(name, []):
                artifact = artifact_dir / artifact_name
                if not artifact.is_file():
                    print(
                        f"ERROR: {name} did not produce required artifact: {artifact}",
                        file=sys.stderr,
                    )
                    entry["artifacts"].append(
                        {
                            "path": artifact.relative_to(result_dir).as_posix(),
                            "error": "missing artifact",
                        }
                    )
                    failed = True
                    continue
                entry["artifacts"].append(
                    {
                        "path": artifact.relative_to(result_dir).as_posix(),
                        "sha256": sha256(artifact),
                    }
                )
            manifest["runs"].append(entry)
            if completed.returncode != 0 or failed:
                print(
                    f"ERROR: {name} failed with exit code {completed.returncode}",
                    file=sys.stderr,
                )
                failed = True
                break
        except subprocess.TimeoutExpired as error:
            elapsed = time.perf_counter() - start
            manifest["runs"].append(
                {
                    "name": name,
                    "command": command,
                    "binary": binary_manifest_path,
                    "binary_sha256": binary_hash,
                    "build_provenance": build_provenance,
                    "elapsed_seconds": elapsed,
                    "error": f"timeout after {args.timeout} seconds",
                }
            )
            print(f"ERROR: {name} timed out", file=sys.stderr)
            failed = True
            break
        except OSError as error:
            elapsed = time.perf_counter() - start
            manifest["runs"].append(
                {
                    "name": name,
                    "command": command,
                    "binary": binary_manifest_path,
                    "binary_sha256": binary_hash,
                    "build_provenance": build_provenance,
                    "elapsed_seconds": elapsed,
                    "error": f"could not execute benchmark: {error}",
                }
            )
            print(f"ERROR: could not execute {name}: {error}", file=sys.stderr)
            failed = True
            break

    manifest_path = result_dir / f"{timestamp}_{label}_MANIFEST.json"
    manifest_path.write_text(
        json.dumps(manifest, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    print(f"Manifest: {manifest_path}")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
