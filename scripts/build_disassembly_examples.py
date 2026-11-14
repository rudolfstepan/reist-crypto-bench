#!/usr/bin/env python3
"""Emit small assembly/object/disassembly comparisons, without linking."""

from __future__ import annotations

import argparse
import hashlib
import json
import shutil
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCES = tuple(sorted((ROOT / "examples/disassembly").glob("[0-9]*.cpp")))


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def build(args: argparse.Namespace) -> None:
    compiler = shutil.which(args.compiler)
    disassembler = shutil.which(args.objdump)
    if not compiler or not disassembler:
        raise ValueError("compiler and objdump must both be available")
    output = args.output.resolve()
    if output.exists() and any(output.iterdir()):
        raise ValueError("output directory must be new or empty")
    output.mkdir(parents=True, exist_ok=True)
    commands = []

    def run(command: list[str]) -> str:
        commands.append(command)
        result = subprocess.run(
            command, cwd=ROOT, text=True, capture_output=True, timeout=120
        )
        if result.returncode:
            raise RuntimeError(
                f"Command failed: {command}\n{result.stdout}{result.stderr}"
            )
        return result.stdout

    manifest = {"status": "building", "commands": commands, "examples": []}
    try:
        version = run([compiler, "--version"])
        target = run([compiler, "-dumpmachine"]).strip()
        is_x86 = any(
            name in target.lower() for name in ("x86_64", "amd64", "i386", "i686")
        )
        syntax = (
            ("intel" if is_x86 else "native") if args.syntax == "auto" else args.syntax
        )
        if syntax in ("intel", "att") and not is_x86:
            raise ValueError("Intel/AT&T syntax requires an x86 compiler target")
        flags = [
            "-std=c++20",
            f"-{args.optimization}",
            "-Wall",
            "-Wextra",
            "-Wpedantic",
            "-Wconversion",
            "-Wsign-conversion",
            "-Werror",
            "-fno-rtti",
            "-fno-unroll-loops",
        ]
        if getattr(args, "debug_symbols", False):
            flags += ["-g", "-gdwarf-4"]
        if not args.vectorize:
            flags += (
                ["-fno-vectorize", "-fno-slp-vectorize"]
                if "clang" in version.lower()
                else ["-fno-tree-vectorize"]
            )
        if args.native:
            flags.append("-march=native")
        if is_x86:
            flags.append("-masm=" + syntax)
        manifest.update(
            compiler=version,
            target=target,
            flags=flags,
            syntax=syntax,
            objdump_version=run([disassembler, "--version"]),
            vectorization="compiler_auto" if args.vectorize else "disabled",
        )
        inputs = [
            *SOURCES,
            ROOT / "examples/disassembly/examples.hpp",
            ROOT / "src/paper_addition.hpp",
            ROOT / "include/reist_mod.hpp",
            Path(__file__).resolve(),
        ]
        manifest["source_sha256"] = {
            p.relative_to(ROOT).as_posix(): sha256(p) for p in inputs
        }
        selected = (
            SOURCES
            if args.example == "all"
            else [p for p in SOURCES if p.stem == args.example]
        )
        for source in selected:
            assembly = output / (source.stem + ".s")
            obj = output / (source.stem + ".o")
            listing = output / (source.stem + ".disasm.txt")
            run([compiler, *flags, "-S", str(source), "-o", str(assembly)])
            # Assemble the exact .s that the user sees; never invoke the linker.
            run([compiler, "-c", str(assembly), "-o", str(obj)])
            command = [disassembler, "-d", "-r", "-C", "--no-show-raw-insn"]
            if syntax == "intel":
                command += ["-M", "intel"]
            listing.write_text(run([*command, str(obj)]), encoding="utf-8")
            manifest["examples"].append(
                {
                    "source": source.relative_to(ROOT).as_posix(),
                    "object_bytes": obj.stat().st_size,
                    "artifacts": {p.name: sha256(p) for p in (assembly, obj, listing)},
                }
            )
            print(f"{source.stem}: {obj.stat().st_size} object bytes; {listing}")
        manifest["status"] = "passed"
    finally:
        if manifest["status"] != "passed":
            manifest["status"] = "failed"
        (output / "manifest.json").write_text(
            json.dumps(manifest, indent=2) + "\n", encoding="utf-8"
        )


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--compiler", default="g++", help="GCC/Clang executable or path"
    )
    parser.add_argument(
        "--objdump", default="objdump", help="matching GNU/LLVM objdump"
    )
    parser.add_argument(
        "--output", type=Path, default=ROOT / "build/disassembly-examples"
    )
    parser.add_argument(
        "--example", choices=["all", *(p.stem for p in SOURCES)], default="all"
    )
    parser.add_argument(
        "--optimization", choices=["O0", "O1", "O2", "O3", "Os"], default="O2"
    )
    parser.add_argument("--syntax", choices=["auto", "intel", "att"], default="auto")
    parser.add_argument(
        "--debug-symbols",
        action="store_true",
        help="include DWARF 4 source/variable information",
    )
    parser.add_argument(
        "--vectorize", action="store_true", help="allow compiler auto-vectorization"
    )
    parser.add_argument(
        "--native", action="store_true", help="enable host ISA with -march=native"
    )
    args = parser.parse_args()
    try:
        build(args)
    except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as error:
        parser.exit(1, f"{error}\n")


if __name__ == "__main__":
    main()
