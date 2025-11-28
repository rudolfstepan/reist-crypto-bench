#!/usr/bin/env python3
import csv
import os
import math
import matplotlib.pyplot as plt

def load_modadd(fname):
    moduli = []
    speedups = []
    with open(fname, newline='') as f:
        r = csv.DictReader(f)
        for row in r:
            if row.get("scenario") == "classic_mod":
                continue
            if row.get("scenario") == "reist_sym":
                B = int(row["modulus"])
                N = int(row["N"])
                # find matching classic row
                # we assume classic_mod has same modulus and N
                # we could reconstruct speedup from seconds columns instead,
                # but the CSV already has seconds, so just use them.
                # However simpler: compute speedup from both scenarios directly.
    # second pass to compute speedups
    moduli = []
    speedups = []
    with open(fname, newline='') as f:
        rows = list(csv.DictReader(f))
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
            q = int(row["q"])
            speed = float(row["speedup"])
            qs.append(q)
            speedups.append(speed)
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
    # assume script is run from build directory where CSVs live
    modadd_csv = "results_modadd_suite.csv"
    poly_csv   = "results_poly_mod.csv"

    if os.path.exists(modadd_csv):
        plot_speedup_modadd(modadd_csv, "plot_modadd_speedup.png")
    else:
        print("Missing", modadd_csv)

    if os.path.exists(poly_csv):
        plot_speedup_poly(poly_csv, "plot_poly_speedup.png")
    else:
        print("Missing", poly_csv)

if __name__ == "__main__":
    main()
