#!/usr/bin/env python3
"""Compare small compiler artifacts and test those exact objects at every level."""

from __future__ import annotations

import argparse
import csv
import json
import re
import subprocess
import tempfile
from pathlib import Path

from build_disassembly_examples import ROOT, SOURCES, build, sha256

EXPORTS = {
    "01_runtime": tuple(f"runtime_{s}" for s in ("percent", "bounded", "centered")),
    "02_constant_257": tuple(
        f"constant_{s}" for s in ("percent", "bounded", "centered")
    ),
    "03_power_of_two_256": tuple(
        f"power2_{s}" for s in ("percent", "bounded", "centered")
    ),
    "04_serial_257": tuple(f"serial_{s}" for s in ("percent", "bounded", "centered")),
    "05_array_257": tuple(f"array_{s}" for s in ("percent", "bounded", "centered")),
    **{
        source: tuple(
            f"{kind}_{operation}_{scope}" for kind in ("signed", "euclidean", "reist")
        )
        for source, operation, scope in (
            ("06_signed_remainders_runtime", "remainder", "runtime"),
            ("07_signed_remainders_257", "remainder", "constant"),
            ("08_division_runtime", "division", "runtime"),
            ("09_division_257", "division", "constant"),
        )
    },
}
LABEL = re.compile(r"^\s*[0-9a-fA-F]+ <(.+)>:$")
INSTRUCTION = re.compile(r"^\s*[0-9a-fA-F]+:\s+([a-z][a-z0-9.]*)(?:\s|$)")
DIVISION = re.compile(r"^(?:i?div[bwlq]?|[su]div)$")
CALL = re.compile(r"^(?:call[qwl]?|bl|blr)$")


def extract_functions(listing: str) -> dict[str, str]:
    """Keep function bodies and relocations, but never merge adjacent sections."""
    bodies: dict[str, list[str]] = {}
    current = None
    for line in listing.splitlines():
        label = LABEL.match(line)
        if label:
            current = label[1]
            if current in bodies:
                raise ValueError(f"ambiguous repeated function label: {current}")
            bodies[current] = [line]
        elif line.startswith("Disassembly of section"):
            current = None
        elif current is not None:
            bodies[current].append(line)
    return {name: "\n".join(lines).rstrip() + "\n" for name, lines in bodies.items()}


def instruction_counts(body: str) -> dict[str, int]:
    mnemonics = [
        match[1] for line in body.splitlines() if (match := INSTRUCTION.match(line))
    ]
    return {
        "instructions": len(mnemonics),
        "divisions": sum(bool(DIVISION.fullmatch(m)) for m in mnemonics),
        "calls": sum(bool(CALL.fullmatch(m)) for m in mnemonics),
        "conditional_branches": sum(
            (m.startswith("j") and m not in ("jmp", "jmpq", "jmpl"))
            or m.startswith(("b.", "loop"))
            or m in ("cbz", "cbnz", "tbz", "tbnz")
            for m in mnemonics
        ),
    }


def exported_bodies(listing: str, expected: tuple[str, ...]) -> dict[str, str]:
    functions = extract_functions(listing)
    result = {}
    for name in expected:
        # 32-bit COFF can decorate C exports with one leading underscore.
        body = functions.get(name, functions.get("_" + name))
        if body is None or instruction_counts(body)["instructions"] == 0:
            raise ValueError(f"missing or empty disassembled export: {name}")
        result[name] = body
    return result


def test_objects(output: Path, manifest: dict) -> dict:
    """Link a disposable harness against the exact objects being inspected."""
    commands = []
    test_source = ROOT / "tests/test_disassembly_examples.cpp"
    samples = output / "remainder_samples.csv"
    # Temporary files stay beneath this profile; the context removes only its
    # freshly created harness directory, including on failure.
    with tempfile.TemporaryDirectory(prefix="correctness-", dir=output) as temporary:
        executable = Path(temporary) / "check.exe"
        compiler = manifest["commands"][0][0]
        objects = [
            output / (Path(e["source"]).stem + ".o") for e in manifest["examples"]
        ]
        command = [
            compiler,
            *manifest["flags"],
            str(test_source),
            *map(str, objects),
            "-o",
            str(executable),
        ]
        commands.append(command)
        result = subprocess.run(
            command, cwd=ROOT, text=True, capture_output=True, timeout=120
        )
        if result.returncode:
            raise RuntimeError(
                f"Harness build failed: {command}\n{result.stdout}{result.stderr}"
            )
        command = [str(executable), str(samples)]
        commands.append(command)
        result = subprocess.run(
            command, cwd=ROOT, text=True, capture_output=True, timeout=120
        )
        (output / "correctness.txt").write_text(
            result.stdout + result.stderr, encoding="utf-8"
        )
        if result.returncode:
            raise RuntimeError(
                f"Object correctness failed: {output}\n{result.stdout}{result.stderr}"
            )
    return {
        "status": "passed",
        "commands": commands,
        "test_source_sha256": sha256(test_source),
        "samples_sha256": sha256(samples),
        "log_sha256": sha256(output / "correctness.txt"),
    }


def write_report(output: Path, rows: list[dict], manifest: dict) -> None:
    with (output / "SUMMARY.csv").open("w", encoding="utf-8", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    lines = [
        "# Compiler optimization and signed-remainder matrix",
        "",
        "Every profile passed the correctness harness linked against its exact disassembled objects.",
        "See each profile's manifest for compiler, target, flags, commands and source/artifact hashes.",
        "",
        "Counts below cover only the named function, including alignment instructions. They do not",
        "include callees, tail-call targets or cold fragments. At O0, inline helpers often remain calls;",
        "zero local DIV instructions does not imply division-free execution. Follow relocations in the",
        "full object listing (source column). Counts are not timings or constant-time proofs.",
        "Classification covers x86 and AArch64 mnemonics; inspect other targets manually.",
        "",
        "Runtime remainder/division examples share the positive-modulus validation gate. REIST calls",
        "the public library; exception paths remain visible. General REIST division still reduces",
        "arbitrary inputs, unlike the bounded-addition fast path in examples 01–05.",
        "",
        "Scalar profiles disable vectorization; O3_auto permits it. All profiles disable loop unrolling.",
        "The auto profile does not guarantee SIMD. No LTO is used. The temporary test executable is removed.",
        "",
        "## Verified negative-input samples",
        "",
    ]
    for profile in manifest["profiles"]:
        name = profile["name"]
        lines.append(
            f"- [{name}: quotient and remainder samples]({name}/remainder_samples.csv)"
        )
    lines += [
        "",
        "## Function listings",
        "",
        "| Profile | Source / full listing | Function | Object bytes | Instructions | DIV | Calls | Conditional branches |",
        "|---|---|---|---:|---:|---:|---:|---:|",
    ]
    for row in rows:
        profile, source, function = row["profile"], row["source"], row["function"]
        lines.append(
            f"| {profile} | [{source}]({profile}/{source}.disasm.txt) | "
            f"[{function}]({profile}/functions/{function}.txt) | {row['object_bytes']} | "
            f"{row['instructions']} | {row['divisions']} | {row['calls']} | {row['conditional_branches']} |"
        )
    (output / "REPORT.md").write_text("\n".join(lines) + "\n", encoding="utf-8")


def run_matrix(args: argparse.Namespace) -> None:
    output = args.output.resolve()
    if output.exists() and any(output.iterdir()):
        raise ValueError("output directory must be new or empty")
    if {source.stem for source in SOURCES} != set(EXPORTS):
        raise ValueError("export list must cover all example sources")
    output.mkdir(parents=True, exist_ok=True)
    manifest = {
        "status": "building",
        "runner_sha256": sha256(Path(__file__)),
        "profiles": [],
    }
    rows = []
    reference_samples = None
    try:
        profiles = [(level, level, False) for level in ("O0", "O1", "O2", "O3", "Os")]
        profiles.append(("O3_auto", "O3", True))
        for name, optimization, vectorize in profiles:
            profile_dir = output / name
            build(
                argparse.Namespace(
                    compiler=args.compiler,
                    objdump=args.objdump,
                    output=profile_dir,
                    example="all",
                    optimization=optimization,
                    syntax=args.syntax,
                    vectorize=vectorize,
                    native=args.native,
                )
            )
            profile_manifest = json.loads(
                (profile_dir / "manifest.json").read_text(encoding="utf-8")
            )
            profile = {
                "name": name,
                "build_manifest_sha256": sha256(profile_dir / "manifest.json"),
            }
            manifest["profiles"].append(profile)
            profile["correctness"] = test_objects(profile_dir, profile_manifest)
            samples = (profile_dir / "remainder_samples.csv").read_bytes()
            if reference_samples is not None and samples != reference_samples:
                raise ValueError(
                    f"remainder samples differ between optimization levels: {name}"
                )
            reference_samples = samples
            function_dir = profile_dir / "functions"
            function_dir.mkdir()
            for example in profile_manifest["examples"]:
                stem = Path(example["source"]).stem
                bodies = exported_bodies(
                    (profile_dir / (stem + ".disasm.txt")).read_text(encoding="utf-8"),
                    EXPORTS[stem],
                )
                for function, body in bodies.items():
                    (function_dir / (function + ".txt")).write_text(
                        body, encoding="utf-8"
                    )
                    rows.append(
                        {
                            "profile": name,
                            "source": stem,
                            "function": function,
                            "object_bytes": example["object_bytes"],
                            **instruction_counts(body),
                        }
                    )
            print(f"{name}: all 27 exported functions validated", flush=True)
        write_report(output, rows, manifest)
        manifest["status"] = "passed"
    finally:
        if manifest["status"] != "passed":
            manifest["status"] = "failed"
        (output / "matrix_manifest.json").write_text(
            json.dumps(manifest, indent=2) + "\n", encoding="utf-8"
        )
    print(f"Comparison: {output / 'REPORT.md'}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--compiler", default="g++", help="native GCC/Clang executable or path"
    )
    parser.add_argument(
        "--objdump", default="objdump", help="matching GNU/LLVM objdump"
    )
    parser.add_argument(
        "--output", type=Path, default=ROOT / "build/disassembly-matrix"
    )
    parser.add_argument("--syntax", choices=["auto", "intel", "att"], default="auto")
    parser.add_argument(
        "--native", action="store_true", help="enable host ISA for all profiles"
    )
    args = parser.parse_args()
    try:
        run_matrix(args)
    except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as error:
        parser.exit(1, f"{error}\n")


if __name__ == "__main__":
    main()
