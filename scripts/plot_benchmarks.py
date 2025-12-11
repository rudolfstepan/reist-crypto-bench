#!/usr/bin/env python3
import csv
import os
import glob
import argparse
from datetime import datetime
import platform
import matplotlib.pyplot as plt


# ---------------------------------------------------------
# Data loading
# ---------------------------------------------------------
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


def load_poly(fname):
    qs, speedups = [], []
    with open(fname, newline='') as f:
        r = csv.DictReader(f)
        for row in r:
            qs.append(int(row["q"]))
            speedups.append(float(row["speedup"]))
    return qs, speedups


# ---------------------------------------------------------
# Plotting
# ---------------------------------------------------------
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


# ---------------------------------------------------------
# Result file resolver
# ---------------------------------------------------------
def resolve_result_file(result_dir, base_name, prefix):
    """
    Return file path based on:
    1. exact prefix match (prefix_xxx.csv)
    2. newest *_xxx.csv file
    3. fallback xxx.csv if exists
    """
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


# ---------------------------------------------------------
# Main
# ---------------------------------------------------------
def main():
    parser = argparse.ArgumentParser(description="Generate REIST benchmark plots from stored CSV data.")
    parser.add_argument("--prefix", type=str, help="Timestamp prefix of result files", default=None)
    args = parser.parse_args()

    arch = platform.machine()
    result_dir = os.path.join("tests", "results", "arm" if arch == "aarch64" else "x86")

    # Allow override via environment OR CLI
    prefix = args.prefix or os.environ.get("RESULT_TIMESTAMP")

    # Resolve CSV input files
    modadd_csv = resolve_result_file(result_dir, "results_modadd_suite.csv", prefix)
    poly_csv   = resolve_result_file(result_dir, "results_poly_mod.csv", prefix)

    # Output timestamps
    timestamp = prefix or datetime.now().strftime("%Y%m%d_%H%M%S")
    modadd_img = os.path.join(result_dir, f"{timestamp}_plot_modadd_speedup.png")
    poly_img   = os.path.join(result_dir, f"{timestamp}_plot_poly_speedup.png")

    # Execute plots
    if modadd_csv:
        plot_speedup_modadd(modadd_csv, modadd_img)
    else:
        print("Missing modadd CSV for prefix:", prefix)

    if poly_csv:
        plot_speedup_poly(poly_csv, poly_img)
    else:
        print("Missing poly CSV for prefix:", prefix)


if __name__ == "__main__":
    main()
