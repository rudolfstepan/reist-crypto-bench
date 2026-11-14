#!/usr/bin/env python3
"""Build a repeatable BigPadIDE debug target and small symbol-bearing objects."""

from __future__ import annotations

import argparse
import json
import os
import shutil
import subprocess
import tempfile
import uuid
from pathlib import Path

from build_disassembly_examples import ROOT, build, sha256
from run_disassembly_matrix import EXPORTS, exported_bodies


def build_debug(args: argparse.Namespace) -> None:
    profile = args.optimization + ("_auto" if args.vectorize else "")
    output = (args.output or ROOT / "build/bigpad" / profile).resolve()
    output.mkdir(parents=True, exist_ok=True)
    driver = ROOT / "examples/disassembly/debug_driver.cpp"
    # Rebuilding replaces only our generated files after a successful build.
    # The private staging directory and its cleanup stay inside this output.
    with tempfile.TemporaryDirectory(prefix="compile-", dir=output) as temporary:
        staging = Path(temporary)
        build(
            argparse.Namespace(
                compiler=args.compiler,
                objdump=args.objdump,
                output=staging,
                example="all",
                optimization=args.optimization,
                syntax="auto",
                vectorize=args.vectorize,
                native=False,
                debug_symbols=True,
            )
        )
        manifest = json.loads((staging / "manifest.json").read_text(encoding="utf-8"))
        compiler = manifest["commands"][0][0]
        # Keep locals in the driver available while preserving the requested
        # optimization of every arithmetic object. No cross-object LTO.
        driver_flags = [f for f in manifest["flags"] if not f.startswith("-O")]
        driver_object = staging / "debug_driver.o"
        executable = staging / "reist_debug.exe"
        arithmetic_objects = [
            staging / (Path(e["source"]).stem + ".o") for e in manifest["examples"]
        ]
        commands = [
            [
                compiler,
                *driver_flags,
                "-O0",
                "-c",
                str(driver),
                "-o",
                str(driver_object),
            ],
            [
                compiler,
                *(["-static"] if "mingw" in manifest["target"] else []),
                str(driver_object),
                *map(str, arithmetic_objects),
                "-o",
                str(executable),
            ],
        ]
        for command in commands:
            result = subprocess.run(
                command, cwd=ROOT, capture_output=True, text=True, timeout=120
            )
            if result.returncode:
                raise RuntimeError(
                    f"Debug build failed: {command}\n{result.stdout}{result.stderr}"
                )
        smoke = subprocess.run(
            [str(executable)], cwd=ROOT, capture_output=True, text=True, timeout=30
        )
        if smoke.returncode or "REIST=(-1,-3)" not in smoke.stdout:
            raise RuntimeError(
                f"Debug executable smoke check failed:\n{smoke.stdout}{smoke.stderr}"
            )
        (staging / "debug_smoke.txt").write_text(smoke.stdout, encoding="utf-8")
        for example in manifest["examples"]:
            stem = Path(example["source"]).stem
            listing = (staging / (stem + ".disasm.txt")).read_text(encoding="utf-8")
            for function, body in exported_bodies(listing, EXPORTS[stem]).items():
                (staging / (function + ".txt")).write_text(body, encoding="utf-8")
        manifest["debug"] = {
            "driver": driver.relative_to(ROOT).as_posix(),
            "driver_sha256": sha256(driver),
            "builder_sha256": sha256(Path(__file__)),
            "driver_optimization": "O0",
            "arithmetic_optimization": args.optimization,
            "commands": commands,
            "executable_sha256": sha256(executable),
            "executable_bytes": executable.stat().st_size,
            "smoke": "passed",
        }
        (staging / "manifest.json").write_text(
            json.dumps(manifest, indent=2) + "\n", encoding="utf-8"
        )
        for artifact in staging.iterdir():
            # TemporaryDirectory is private on Windows. Moving its files would
            # preserve that private ACL and can prevent the IDE user from
            # opening a build produced under another account (e.g. a sandbox).
            # A newly created copy inherits this public build directory's ACL.
            published = output / f".{artifact.name}.{uuid.uuid4().hex}.tmp"
            try:
                shutil.copyfile(artifact, published)
                if os.name != "nt":
                    shutil.copymode(artifact, published)
                os.replace(published, output / artifact.name)
            finally:
                published.unlink(missing_ok=True)
    print(f"Ready for BigPadIDE / CodeLLDB: {output / 'reist_debug.exe'}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--compiler", default="g++")
    parser.add_argument("--objdump", default="objdump")
    parser.add_argument(
        "--optimization", choices=["O0", "O1", "O2", "O3", "Os"], default="O0"
    )
    parser.add_argument("--vectorize", action="store_true")
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    try:
        build_debug(args)
    except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as error:
        parser.exit(1, f"{error}\n")


if __name__ == "__main__":
    main()
