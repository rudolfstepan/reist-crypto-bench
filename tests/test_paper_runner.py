"""Exercise actual kernels plus rejection of incomplete/corrupt trial artifacts."""

import csv
import itertools
import subprocess
import sys
import tempfile
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))
from run_paper_benchmarks import MODULI, PATTERNS, validate


def main():
    binary = str(Path(sys.argv[1]).resolve())
    with tempfile.TemporaryDirectory() as temporary:
        directory = Path(temporary)
        for modulus, pattern, workload, boundary, binding in itertools.product(
            MODULI,
            PATTERNS,
            ("serial", "array", "polynomial"),
            ("kernel", "end_to_end"),
            ("constant", "runtime"),
        ):
            case = dict(
                modulus=modulus,
                elements=17,
                repetitions=3,
                pattern=pattern,
                workload=workload,
                boundary=boundary,
                binding=binding,
            )
            command = [binary, "--trials", "6"]
            for key, value in case.items():
                command += ["--" + key, str(value)]
            subprocess.run(command, cwd=directory, check=True, capture_output=True)
            path = directory / "paper_trials.csv"
            rows = validate(path, case, 6)
        original = path.read_bytes()
        path.write_text("schema\n", encoding="utf-8")
        try:
            validate(path, case, 6)
        except ValueError:
            pass
        else:
            raise AssertionError("truncated trial matrix accepted")
        path.write_bytes(original)
        for field, invalid in (
            ("seconds", "nan"),
            ("validation", "failed"),
            ("method", "bogus"),
            ("upper", "-1"),
            ("modulus", "2"),
        ):
            damaged = [dict(row) for row in rows]
            damaged[0][field] = invalid
            with path.open("w", newline="", encoding="utf-8") as handle:
                writer = csv.DictWriter(handle, fieldnames=rows[0].keys())
                writer.writeheader()
                writer.writerows(damaged)
            try:
                validate(path, case, 6)
            except ValueError:
                pass
            else:
                raise AssertionError(f"corruption accepted: {field}")
        for arguments in (
            ("--modulus", "0"),
            ("--trials", "7"),
            ("--modulus", "2147483648"),
            ("--pattern", "bogus"),
            ("--workload", "bogus"),
            ("--elements", "-1"),
        ):
            result = subprocess.run(
                [binary, *arguments], cwd=directory, capture_output=True
            )
            assert result.returncode != 0, arguments
    print("420 kernel configurations, corruption checks and invalid CLI cases passed.")


if __name__ == "__main__":
    main()
