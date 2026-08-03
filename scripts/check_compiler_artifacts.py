#!/usr/bin/env python3
"""Compile benchmark sources to assembly and verify named kernel symbols.

Unlike the historical whole-file grep, this checker understands instruction
suffixes (`idivq`, `idivl`) and ARM division (`sdiv`, `udiv`) and evaluates only
explicitly named benchmark kernels.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import pathlib
import re
import shlex
import subprocess
import sys
from dataclasses import dataclass


REPOSITORY_ROOT = pathlib.Path(__file__).resolve().parents[1]

DIVISION = re.compile(r"\b(?:(?:i?div)[bwlq]?|[su]div)\b", re.IGNORECASE)
TYPE_FUNCTION = re.compile(r"^\s*\.type\s+([^,]+),\s*[@%]function\s*$")
GLOBAL = re.compile(r"^\s*\.globl?\s+([^\s]+)")
COFF_FUNCTION = re.compile(
    r"^\s*\.def\s+([^;]+);.*\.type\s+32\s*;.*\.endef\s*$"
)
LABEL = re.compile(r"^([A-Za-z_.$?@][\w.$?@]*)\s*:\s*(?:[#;].*)?$")

MODADD_CONSTANTS = (257, 997, 10007, 1000003, 10000019, 1000000007)
POLY_CONSTANTS = (1000003, 10000019, 100000007, 1000000007)
DEFAULT_DIV_FREE = [
    r"^reist_modadd_runtime_kernel$",
    r"^reist_poly_runtime_kernel$",
    *(rf"^reist_modadd_const_{modulus}$" for modulus in MODADD_CONSTANTS),
    *(rf"^classic_modadd_const_{modulus}$" for modulus in MODADD_CONSTANTS),
    *(rf"^reist_poly_const_{modulus}$" for modulus in POLY_CONSTANTS),
    *(rf"^classic_poly_const_{modulus}$" for modulus in POLY_CONSTANTS),
]
DEFAULT_CONTAINS_DIV = [
    r"^classic_modadd_runtime_kernel$",
    r"^classic_poly_runtime_kernel$",
]


@dataclass
class FunctionAssembly:
    name: str
    text: str

    @property
    def divisions(self) -> list[str]:
        return [line.strip() for line in self.text.splitlines() if DIVISION.search(line)]


def digest(path: pathlib.Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def normalized_external_symbol(name: str) -> str:
    """Remove the one ABI prefix used for external C symbols by Mach-O."""
    return name[1:] if name.startswith("_") else name


def parse_functions(text: str) -> dict[str, FunctionAssembly]:
    declared: set[str] = set()
    for line in text.splitlines():
        match = (TYPE_FUNCTION.match(line) or COFF_FUNCTION.match(line)
                 or GLOBAL.match(line))
        if match:
            declared.add(match.group(1).strip())

    functions: dict[str, list[str]] = {}
    current: str | None = None
    for line in text.splitlines():
        label = LABEL.match(line)
        if label and label.group(1) in declared:
            current = label.group(1)
            functions.setdefault(current, []).append(line)
            continue
        if current is not None:
            functions[current].append(line)
            if (re.match(rf"^\s*\.size\s+{re.escape(current)}\s*,", line)
                    or re.match(r"^\s*\.(?:seh|cfi)_endproc\s*$", line)):
                current = None

    return {
        name: FunctionAssembly(name, "\n".join(lines))
        for name, lines in functions.items()
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--compiler", default=os.environ.get("CXX", "g++"))
    parser.add_argument(
        "--flags",
        default="-Iinclude -std=c++20 -O3 -DNDEBUG -march=native",
        help="exact compiler flags, supplied as one shell-style string",
    )
    parser.add_argument(
        "--build-dir", type=pathlib.Path, default=REPOSITORY_ROOT / "build"
    )
    parser.add_argument(
        "--source",
        action="append",
        type=pathlib.Path,
        default=[],
        help="source to compile; defaults to the two paper kernels",
    )
    parser.add_argument(
        "--must-be-div-free",
        action="append",
        default=None,
        help="regex matched against assembly symbol names",
    )
    parser.add_argument(
        "--must-contain-div",
        action="append",
        default=None,
        help="regex matched against assembly symbol names",
    )
    return parser.parse_args()


def compiler_version(compiler: str) -> str:
    try:
        result = subprocess.run(
            [compiler, "--version"], check=True, text=True,
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        )
        return result.stdout.strip()
    except (OSError, subprocess.CalledProcessError) as error:
        return f"unavailable: {error}"


def main() -> int:
    args = parse_args()
    sources = args.source or [
        pathlib.Path("src/bench_modadd_suite.cpp"),
        pathlib.Path("src/bench_poly_mod.cpp"),
    ]
    build_dir = args.build_dir.resolve()
    output_dir = build_dir / "compiler-artifacts"
    output_dir.mkdir(parents=True, exist_ok=True)
    report = output_dir / "compiler_artifacts.json"
    report.unlink(missing_ok=True)
    flags = shlex.split(args.flags, posix=os.name != "nt")

    all_functions: dict[str, FunctionAssembly] = {}
    manifest: dict[str, object] = {
        "schema": 1,
        "compiler": args.compiler,
        "compiler_version": compiler_version(args.compiler),
        "flags": flags,
        "sources": [],
        "checks": [],
    }

    for source_argument in sources:
        source = (source_argument if source_argument.is_absolute()
                  else REPOSITORY_ROOT / source_argument)
        assembly = output_dir / f"{source.stem}.s"
        assembly.unlink(missing_ok=True)
        command = [args.compiler, *flags, "-S", str(source), "-o", str(assembly)]
        print("Compiling", " ".join(command))
        try:
            completed = subprocess.run(
                command,
                text=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                check=False,
                cwd=REPOSITORY_ROOT,
            )
        except OSError as error:
            print(f"ERROR: could not execute compiler: {error}", file=sys.stderr)
            return 2
        if completed.returncode != 0:
            print(completed.stdout, end="", file=sys.stderr)
            print(completed.stderr, end="", file=sys.stderr)
            return 2
        text = assembly.read_text(encoding="utf-8", errors="replace")
        functions = parse_functions(text)
        for name, function in functions.items():
            # Prefix by source only on collision; stable extern-C names normally
            # avoid this and remain directly visible in the JSON report.
            key = name if name not in all_functions else f"{source.stem}:{name}"
            all_functions[key] = function
        manifest["sources"].append(
            {
                "source": str(source),
                "assembly": str(assembly),
                "assembly_sha256": digest(assembly),
                "command": command,
                "function_count": len(functions),
            }
        )

    failed = False
    check_groups = [
        ("must_be_div_free", args.must_be_div_free or DEFAULT_DIV_FREE, False),
        ("must_contain_div", args.must_contain_div or DEFAULT_CONTAINS_DIV, True),
    ]
    for kind, patterns, expect_division in check_groups:
        for pattern_text in patterns:
            pattern = re.compile(pattern_text)
            matches = [
                (name, function)
                for name, function in all_functions.items()
                if (pattern.search(name)
                    or pattern.search(normalized_external_symbol(name)))
            ]
            entry = {
                "kind": kind,
                "pattern": pattern_text,
                "matches": [
                    {
                        "symbol": name,
                        "normalized_symbol": normalized_external_symbol(name),
                        "division_instructions": function.divisions,
                    }
                    for name, function in matches
                ],
            }
            manifest["checks"].append(entry)
            if not matches:
                print(f"ERROR: pattern matched no function: {pattern_text}", file=sys.stderr)
                failed = True
                continue
            for name, function in matches:
                has_division = bool(function.divisions)
                if has_division != expect_division:
                    expectation = "contain DIV" if expect_division else "be DIV-free"
                    print(f"ERROR: {name} must {expectation}; found {function.divisions}",
                          file=sys.stderr)
                    failed = True

    report.write_text(json.dumps(manifest, indent=2, sort_keys=True) + "\n",
                      encoding="utf-8")
    print(f"Report: {report}")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
