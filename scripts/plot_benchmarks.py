#!/usr/bin/env python3
import csv
import os
import glob
import argparse
from datetime import datetime
import platform
import matplotlib.pyplot as plt
import numpy as np


# ---------------------------------------------------------
# Data loading - handles O0, O3, and SIMD optimization levels
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


def parse_modadd_from_txt(txt_file):
    """
    Parse modadd speedup data directly from benchmark text output files.
    Returns (moduli, speedups) lists.
    """
    moduli, speedups = [], []
    
    try:
        with open(txt_file, 'r') as f:
            content = f.read()
            
        # Extract speedup lines with regex
        import re
        pattern = r'Modulus B = (\d+).*?speedup\s*:\s*([0-9.]+)x'
        matches = re.findall(pattern, content, re.DOTALL)
        
        for modulus_str, speedup_str in matches:
            moduli.append(int(modulus_str))
            speedups.append(float(speedup_str))
            
    except Exception as e:
        print(f"Warning: Could not parse {txt_file}: {e}")
        
    return moduli, speedups


def find_benchmark_files(result_dir, benchmark_name):
    """
    Find all benchmark result files for a given benchmark across optimization levels.
    Returns dict with 'noopt', 'opt', 'simd' keys containing file paths and timestamps.
    """
    import glob
    
    files = {'noopt': [], 'opt': [], 'simd': []}
    
    # Map optimization suffixes to our keys
    suffix_map = {'_O0.txt': 'noopt', '_O3.txt': 'opt', '_SIMD.txt': 'simd'}
    
    for suffix, key in suffix_map.items():
        pattern = os.path.join(result_dir, f"*_bench_{benchmark_name}{suffix}")
        matches = glob.glob(pattern)
        
        for match in matches:
            # Extract timestamp from filename
            filename = os.path.basename(match)
            timestamp = filename.split('_bench_')[0]
            files[key].append({'file': match, 'timestamp': timestamp})
    
    # Sort by timestamp (newest first)
    for key in files:
        files[key].sort(key=lambda x: x['timestamp'], reverse=True)
    
    return files


def load_optimization_comparison_data(result_dir, prefix, benchmark_type):
    """
    Load data from all three optimization levels for comparison.
    Returns dict with 'noopt', 'opt', 'simd' keys containing data.
    """
    data = {'noopt': None, 'opt': None, 'simd': None}
    
    # Find benchmark files for this benchmark type
    benchmark_files = find_benchmark_files(result_dir, benchmark_type)
    
    for opt_level in data.keys():
        file_list = benchmark_files.get(opt_level, [])
        
        if not file_list:
            continue
            
        # Use the most recent file, or one matching the prefix if specified
        target_file = None
        if prefix:
            # Look for file with matching timestamp prefix
            for file_info in file_list:
                if file_info['timestamp'].startswith(prefix):
                    target_file = file_info['file']
                    break
        
        if not target_file and file_list:
            # Use the most recent file
            target_file = file_list[0]['file']
            
        if target_file and os.path.exists(target_file):
            try:
                if benchmark_type == "modadd_suite":
                    moduli, speedups = parse_modadd_from_txt(target_file)
                    if moduli and speedups:
                        data[opt_level] = {'moduli': moduli, 'speedups': speedups}
                elif benchmark_type == "poly_mod":
                    # For poly_mod, we still need to find the CSV file 
                    # since the txt format is different
                    timestamp = os.path.basename(target_file).split('_bench_')[0]
                    csv_file = os.path.join(result_dir, f"{timestamp}_results_poly_mod.csv")
                    if os.path.exists(csv_file):
                        qs, speedups = load_poly(csv_file)
                        if qs and speedups:
                            data[opt_level] = {'qs': qs, 'speedups': speedups}
                            
            except Exception as e:
                print(f"Warning: Could not load {opt_level} data from {target_file}: {e}")
    
    return data


# ---------------------------------------------------------
# Enhanced plotting functions for three-way comparison
# ---------------------------------------------------------
def plot_optimization_comparison_modadd(data, out_path, title_suffix=""):
    """
    Plot modular addition speedup comparison across optimization levels.
    """
    plt.figure(figsize=(12, 8))
    
    colors = {'noopt': '#1f77b4', 'opt': '#ff7f0e', 'simd': '#2ca02c'}
    # Use platform-appropriate SIMD label
    simd_label = 'SIMD Optimization (O3+NEON)' if platform.machine() in ('aarch64', 'arm64') else 'SIMD Optimization (O3+AVX2)'
    labels = {'noopt': 'No Optimization (O0)', 'opt': 'Standard Optimization (O3)', 'simd': simd_label}
    markers = {'noopt': 'o', 'opt': 's', 'simd': '^'}
    
    for opt_level, level_data in data.items():
        if level_data and level_data.get('moduli') and level_data.get('speedups'):
            plt.plot(level_data['moduli'], level_data['speedups'], 
                    marker=markers[opt_level], label=labels[opt_level], 
                    color=colors[opt_level], linewidth=2, markersize=8)
    
    plt.xlabel("Modulus B", fontsize=12)
    plt.ylabel("Speedup (classic / REIST)", fontsize=12)
    plt.title(f"REIST Modular-Add Speedup Comparison{title_suffix}", fontsize=14, fontweight='bold')
    plt.xscale("log")
    plt.grid(True, alpha=0.3)
    plt.legend(fontsize=11)
    plt.tight_layout()
    plt.savefig(out_path, dpi=300, bbox_inches="tight")
    plt.close()
    print("Saved", out_path)


def plot_optimization_comparison_poly(data, out_path, title_suffix=""):
    """
    Plot polynomial modular addition speedup comparison across optimization levels.
    """
    plt.figure(figsize=(12, 8))
    
    colors = {'noopt': '#1f77b4', 'opt': '#ff7f0e', 'simd': '#2ca02c'}
    labels = {'noopt': 'No Optimization (O0)', 'opt': 'Standard Optimization (O3)', 'simd': 'SIMD Optimization (O3+AVX2)'}
    markers = {'noopt': 'o', 'opt': 's', 'simd': '^'}
    
    for opt_level, level_data in data.items():
        if level_data and level_data.get('qs') and level_data.get('speedups'):
            plt.plot(level_data['qs'], level_data['speedups'], 
                    marker=markers[opt_level], label=labels[opt_level], 
                    color=colors[opt_level], linewidth=2, markersize=8)
    
    plt.xlabel("Modulus q", fontsize=12)
    plt.ylabel("Speedup (classic / REIST)", fontsize=12)
    plt.title(f"Polynomial Modular-Add Speedup Comparison{title_suffix}", fontsize=14, fontweight='bold')
    plt.xscale("log")
    plt.grid(True, alpha=0.3)
    plt.legend(fontsize=11)
    plt.tight_layout()
    plt.savefig(out_path, dpi=300, bbox_inches="tight")
    plt.close()
    print("Saved", out_path)


# Legacy single-optimization plotting functions (kept for compatibility)
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
    parser = argparse.ArgumentParser(description="Generate REIST benchmark plots comparing O0, O3, and SIMD optimizations.")
    parser.add_argument("--prefix", type=str, help="Timestamp prefix of result files", default=None)
    parser.add_argument("--legacy", action="store_true", help="Generate legacy single-optimization plots")
    parser.add_argument("--result-dir", type=str, default=None, help="Directory where results live and where images will be written")
    args = parser.parse_args()

    arch = platform.machine()
    # Check for both aarch64 (Linux) and arm64 (macOS)
    is_arm = arch in ("aarch64", "arm64")
    default_result_dir = os.path.join("tests", "results", "arm" if is_arm else "x86")

    # Allow override via CLI or environment
    result_dir = args.result_dir or os.environ.get("RESULT_DIR") or default_result_dir

    # Allow override for timestamp prefix via env/CLI
    prefix = args.prefix or os.environ.get("RESULT_TIMESTAMP")

    # Output timestamp
    timestamp = prefix or datetime.now().strftime("%Y%m%d_%H%M%S")
    
    if args.legacy:
        # Legacy mode: generate single-optimization plots
        modadd_csv = resolve_result_file(result_dir, "results_modadd_suite.csv", prefix)
        poly_csv   = resolve_result_file(result_dir, "results_poly_mod.csv", prefix)
        
        modadd_img = os.path.join(result_dir, f"{timestamp}_plot_modadd_speedup.png")
        poly_img   = os.path.join(result_dir, f"{timestamp}_plot_poly_speedup.png")
        
        if modadd_csv:
            plot_speedup_modadd(modadd_csv, modadd_img)
        else:
            print("Missing modadd CSV for prefix:", prefix)
        
        if poly_csv:
            plot_speedup_poly(poly_csv, poly_img)
        else:
            print("Missing poly CSV for prefix:", prefix)
    else:
        # New mode: generate three-way optimization comparison plots
        print("Generating optimization comparison plots...")
        
        # Load data for all optimization levels
        print("Searching for benchmark result files...")
        modadd_data = load_optimization_comparison_data(result_dir, prefix, "modadd_suite")
        poly_data = load_optimization_comparison_data(result_dir, prefix, "poly_mod")
        
        # Show which optimization levels have data
        modadd_levels = [level for level, data in modadd_data.items() if data]
        poly_levels = [level for level, data in poly_data.items() if data]
        
        if modadd_levels:
            print(f"Found modadd data for optimization levels: {', '.join(modadd_levels)}")
        if poly_levels:
            print(f"Found poly data for optimization levels: {', '.join(poly_levels)}")
        
        # Generate comparison plots
        modadd_comparison_img = os.path.join(result_dir, f"{timestamp}_optimization_comparison_modadd.png")
        poly_comparison_img = os.path.join(result_dir, f"{timestamp}_optimization_comparison_poly.png")
        
        # Check if we have data from multiple optimization levels
        modadd_levels = sum(1 for data in modadd_data.values() if data)
        poly_levels = sum(1 for data in poly_data.values() if data)
        
        if modadd_levels > 0:
            plot_optimization_comparison_modadd(modadd_data, modadd_comparison_img)
            if modadd_levels == 1:
                print("Warning: Only one optimization level found for modadd comparison")
        else:
            print("No modadd data found for optimization comparison")
            
        if poly_levels > 0:
            plot_optimization_comparison_poly(poly_data, poly_comparison_img)
            if poly_levels == 1:
                print("Warning: Only one optimization level found for poly comparison")
        else:
            print("No poly data found for optimization comparison")


if __name__ == "__main__":
    main()
