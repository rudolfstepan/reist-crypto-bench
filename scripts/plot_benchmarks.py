#!/usr/bin/env python3
import csv
import os
import glob
from datetime import datetime

import matplotlib.pyplot as plt

def load_modadd(fname):
    with open(fname, newline='') as f:
        rows = list(csv.DictReader(f))

    moduli = []
    speedups = []

    for B in sorted({int(row["modulus"]) for row in rows}):
        classic = [row for row in rows if int(row["modulus"]) == B and row["scenario"] == "classic_mod"]
        reist   = [row for row in rows if int(row["modulus"]) == B and row["scenario"] == "reist_sym"]

        if not classic or not reist:
            continue

        tc = float(classic[0]["seconds"])
        tr = float(reist[0]["seconds"])

        if tr <= 0.0:
            continue

        moduli.append(B)
        speedups.append(tc / tr)

    return moduli, speedups


def plot_speedup_modadd(csv_path, out_path):
    moduli, speedups = load_modadd(csv_path)
    if not moduli:
        print("No data found in", csv_path)
        return

    plt.figure()
    plt.plot(moduli, speedups, marker="o")
    plt.xlabel("Modulus B")
    plt.ylabel("Speedup (classic / REIST)")
    plt.title("REIST modular-add speedup vs classic modulo")
    plt.xscale("log")
    plt.grid(True)
    plt.savefig(out_path, bbox_inches="tight")
    plt.close()
    print("Saved", out_path)


def load_poly(fname):
    qs = []
    speedups = []
    with open(fname, newline='') as f:
        r = csv.DictReader(f)
        for row in r:
            qs.append(int(row["q"]))
            speedups.append(float(row["speedup"]))
    return qs, speedups


def plot_speedup_poly(csv_path, out_path):
    qs, speedups = load_poly(csv_path)
    if not qs:
        print("No data found in", csv_path)
        return

    plt.figure()
    plt.plot(qs, speedups, marker="o")
    plt.xlabel("Modulus q")
    plt.ylabel("Speedup (classic / REIST)")
    plt.title("Polynomial modular-add speedup (large q)")
    plt.xscale("log")
    plt.grid(True)
    plt.savefig(out_path, bbox_inches="tight")
    plt.close()
    print("Saved", out_path)


def resolve_result_file(result_dir, base_name, prefix):
    """Return the result file matching the prefix when available, otherwise fall back to newest."""
    if prefix:
        candidate = os.path.join(result_dir, f"{prefix}_{base_name}")
        if os.path.exists(candidate):
            return candidate

    pattern = os.path.join(result_dir, f"*_{base_name}")
    matches = glob.glob(pattern)
    if matches:
        matches.sort(key=os.path.getmtime, reverse=True)
        return matches[0]

    fallback = os.path.join(result_dir, base_name)
    return fallback if os.path.exists(fallback) else None


def main():
    import platform

    arch = platform.machine()
    if arch == "aarch64":
        result_dir = os.path.join("tests", "results", "arm")
    else:
        result_dir = os.path.join("tests", "results", "x86")

    prefix = os.environ.get("RESULT_TIMESTAMP")

    # Find matching results files
    modadd_csv = resolve_result_file(result_dir, "results_modadd_suite.csv", prefix)
    poly_csv   = resolve_result_file(result_dir, "results_poly_mod.csv", prefix)

    # Timestamp for output images; reuse prefix when provided
    timestamp = prefix or datetime.now().strftime("%Y%m%d_%H%M%S")
    modadd_img = os.path.join(result_dir, f"{timestamp}_plot_modadd_speedup.png")
    poly_img   = os.path.join(result_dir, f"{timestamp}_plot_poly_speedup.png")

    if modadd_csv and os.path.exists(modadd_csv):
        plot_speedup_modadd(modadd_csv, modadd_img)
    else:
        missing = f"{prefix}_results_modadd_suite.csv" if prefix else "latest results_modadd_suite.csv"
        print("Missing", missing)

    if poly_csv and os.path.exists(poly_csv):
        plot_speedup_poly(poly_csv, poly_img)
    else:
        missing = f"{prefix}_results_poly_mod.csv" if prefix else "latest results_poly_mod.csv"
        print("Missing", missing)


if __name__ == "__main__":
    main()
