#!/usr/bin/env python3
import csv
import os
import math
import argparse
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


def main():
    parser = argparse.ArgumentParser(description="Plot REIST benchmark CSV results.")
    parser.add_argument(
        "--csvdir",
        type=str,
        default=".",
        help="Pfad zu den CSV-Dateien (Standard: aktuelles Verzeichnis)"
    )
    args = parser.parse_args()

    csvdir = os.path.abspath(args.csvdir)

    modadd_csv = os.path.join(csvdir, "results_modadd_suite.csv")
    poly_csv   = os.path.join(csvdir, "results_poly_mod.csv")

    if os.path.exists(modadd_csv):
        plot_speedup_modadd(modadd_csv, os.path.join(csvdir, "plot_modadd_speedup.png"))
    else:
        print("Missing", modadd_csv)

    if os.path.exists(poly_csv):
        plot_speedup_poly(poly_csv, os.path.join(csvdir, "plot_poly_speedup.png"))
    else:
        print("Missing", poly_csv)


if __name__ == "__main__":
    main()
