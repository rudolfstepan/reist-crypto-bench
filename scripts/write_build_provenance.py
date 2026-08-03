#!/usr/bin/env python3
"""Write verifiable build provenance immediately after compiling a binary."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import shlex
import shutil
import subprocess
import sys


REPOSITORY_ROOT = pathlib.Path(__file__).resolve().parents[1]


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def relative_path(path: pathlib.Path) -> str:
    resolved = path.resolve()
    try:
        return resolved.relative_to(REPOSITORY_ROOT).as_posix()
    except ValueError:
        return resolved.as_posix()


def compiler_metadata(command: str) -> dict[str, object]:
    command_path = pathlib.Path(command)
    argv = ([command] if command_path.is_file()
            else shlex.split(command, posix=sys.platform != "win32"))
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


def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--binary", type=pathlib.Path, required=True)
    parser.add_argument("--source", type=pathlib.Path, required=True)
    parser.add_argument("--input", type=pathlib.Path, action="append", default=[])
    parser.add_argument("--compiler", required=True)
    parser.add_argument("--flags", required=True)
    parser.add_argument("--command", required=True)
    parser.add_argument("--build-system", required=True)
    parser.add_argument("--profile", required=True)
    parser.add_argument("--output", type=pathlib.Path)
    return parser.parse_args()


def main() -> int:
    args = parse_arguments()
    binary = args.binary.resolve()
    source = args.source.resolve()
    output = (args.output or pathlib.Path(str(args.binary) + ".build.json")).resolve()
    inputs = [source, *(path.resolve() for path in args.input)]
    try:
        if not binary.is_file():
            raise ValueError(f"compiled binary is missing: {binary}")
        missing = [path for path in inputs if not path.is_file()]
        if missing:
            raise ValueError(f"build input is missing: {missing[0]}")
        metadata = {
            "schema": 1,
            "created_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
            "build": {
                "system": args.build_system,
                "profile": args.profile,
                "flags": args.flags.strip(),
                "command": args.command.strip(),
            },
            "compiler": compiler_metadata(args.compiler),
            "binary": {
                "path": relative_path(binary),
                "sha256": sha256(binary),
            },
            "inputs": [
                {"path": relative_path(path), "sha256": sha256(path)}
                for path in sorted(set(inputs), key=lambda item: item.as_posix())
            ],
        }
    except (OSError, ValueError) as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 2

    output.parent.mkdir(parents=True, exist_ok=True)
    temporary = output.with_name(output.name + ".tmp")
    temporary.write_text(
        json.dumps(metadata, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    temporary.replace(output)
    print(f"Build provenance: {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
