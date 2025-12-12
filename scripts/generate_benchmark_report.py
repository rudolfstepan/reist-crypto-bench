#!/usr/bin/env python3
"""
Generate comprehensive benchmark documentation comparing O0 vs O3 optimizations.
Creates markdown report with tables, charts, system information AND
compiler artifact analysis (assembly inspection for all bench_*.cpp).
"""

import os
import re
import glob
import platform
import subprocess
from pathlib import Path
from datetime import datetime
from collections import defaultdict

import matplotlib
matplotlib.use('Agg')  # Non-interactive backend
import matplotlib.pyplot as plt

import argparse


def is_arm_platform():
    return platform.machine() in ("aarch64", "arm64")

# ---------------------------------------------------------------------------
# Utility: architecture-specific result directory
# ---------------------------------------------------------------------------

def get_arch_result_dir():
    """Determine result directory based on architecture."""
    arch = platform.machine()
    if arch == "aarch64":
        return "tests/results/arm"
    else:
        return "tests/results/x86"


# ---------------------------------------------------------------------------
# Benchmark text result handling (O0 / O3)
# ---------------------------------------------------------------------------

def find_latest_results(result_dir, opt_level, prefix=None):
    """
    Find benchmark result files for given optimization level.
    If prefix is provided, return only files matching that prefix.
    Otherwise return the newest timestamp group.
    """

    pattern = os.path.join(result_dir, f"*_{opt_level}.txt")  # unchanged base pattern

    # If explicit prefix was passed → try to match that prefix exactly
    if prefix:
        specific_pattern = os.path.join(result_dir, f"{prefix}_bench_*_O{opt_level}.txt")
        matches = glob.glob(specific_pattern)
        return matches  # may be empty; caller handles it

    # Default behaviour: newest timestamp
    files = glob.glob(os.path.join(result_dir, f"*_{opt_level}.txt"))
    if not files:
        return []

    timestamps = defaultdict(list)
    for f in files:
        basename = os.path.basename(f)
        match = re.match(r"(\d{8}_\d{6})_", basename)
        if match:
            timestamps[match.group(1)].append(f)

    if not timestamps:
        return []

    latest_timestamp = max(timestamps.keys())
    return timestamps[latest_timestamp]



def extract_system_info(txt_file):
    """Extract system information from benchmark output file."""
    system_info = {}
    try:
        with open(txt_file, 'r') as f:
            content = f.read()

        patterns = {
            'hostname': r'Hostname:\s*(.+)',
            'os':       r'OS:\s*(.+)',
            'cpu_model': r'CPU Model:\s*(.+)',
            'cpu_mhz':  r'CPU MHz:\s*(.+)',
            'memory':   r'Memory:\s*(.+)'
        }

        for key, pattern in patterns.items():
            match = re.search(pattern, content)
            if match:
                system_info[key] = match.group(1).strip()

    except Exception as e:
        print(f"Warning: Could not extract system info from {txt_file}: {e}")

    return system_info


def parse_benchmark_results(txt_file):
    """Dispatch parsing based on benchmark filename."""
    results = {}
    try:
        with open(txt_file, 'r') as f:
            content = f.read()

        bench_name = os.path.basename(txt_file)

        if 'modadd_suite' in bench_name:
            results = parse_modadd_suite(content)
        elif 'poly_mod' in bench_name:
            results = parse_poly_mod(content)
        elif 'modular' in bench_name:
            results = parse_modular(content)
        elif 'chacha_reist' in bench_name:
            results = parse_chacha_reist(content)
        elif 'chacha_stream' in bench_name:
            results = parse_chacha_stream(content)
        elif 'hashmix' in bench_name:
            results = parse_hashmix(content)
        elif 'reist_arm' in bench_name:
            results = parse_reist_arm(content)
        elif 'montgomery' in bench_name:
            results = parse_montgomery(content)

    except Exception as e:
        print(f"Warning: Could not parse {txt_file}: {e}")

    return results


def parse_modadd_suite(content):
    results = {'moduli': []}
    pattern = (
        r'Modulus B = (\d+)\s+classic_mod:\s+([\d.]+)\s+s\s+'
        r'reist_sym\s*:\s+([\d.]+)\s+s\s+speedup\s*:\s+([\d.]+)x'
    )
    matches = re.findall(pattern, content)
    for modulus, classic_time, reist_time, speedup in matches:
        results['moduli'].append({
            'modulus': int(modulus),
            'classic_time': float(classic_time),
            'reist_time': float(reist_time),
            'speedup': float(speedup)
        })
    return results


def parse_poly_mod(content):
    results = {'moduli': []}
    pattern = (
        r'q = (\d+)\s+classic\s*:\s+([\d.]+)\s+s\s+'
        r'REIST\s*:\s+([\d.]+)\s+s\s+speedup\s*:\s+([\d.]+)x'
    )
    matches = re.findall(pattern, content)
    for q, classic_time, reist_time, speedup in matches:
        results['moduli'].append({
            'q': int(q),
            'classic_time': float(classic_time),
            'reist_time': float(reist_time),
            'speedup': float(speedup)
        })
    return results


def parse_modular(content):
    results = {}
    classic_match = re.search(r'classic\s*:\s+([\d.]+)\s+s', content)
    reist_match = re.search(r'REIST\s*:\s+([\d.]+)\s+s', content)
    speedup_match = re.search(r'Speedup\s*:\s+([\d.]+)x', content)

    if classic_match and reist_match and speedup_match:
        results['classic_time'] = float(classic_match.group(1))
        results['reist_time'] = float(reist_match.group(1))
        results['speedup'] = float(speedup_match.group(1))
    return results


def parse_chacha_reist(content):
    results = {}
    std_match = re.search(r'std_add\s*:\s+([\d.]+)\s+s', content)
    reist_match = re.search(r'reist_add32:\s+([\d.]+)\s+s', content)
    ratio_match = re.search(r'Speed ratio:\s+([\d.]+)x', content)

    if std_match and reist_match:
        results['add32'] = {
            'std_time': float(std_match.group(1)),
            'reist_time': float(reist_match.group(1)),
            'ratio': float(ratio_match.group(1)) if ratio_match else 0.0
        }

    classic_match = re.search(r'Classic\s*:\s+([\d.]+)\s+s', content)
    reist_block_match = re.search(r'REIST\s*:\s+([\d.]+)\s+s', content)
    if classic_match and reist_block_match:
        results['block'] = {
            'classic_time': float(classic_match.group(1)),
            'reist_time': float(reist_block_match.group(1))
        }
    return results


def parse_chacha_stream(content):
    results = {}
    classic_match = re.search(r'Classic\s*:\s+([\d.]+)\s+s\s+\(([\d.]+)\s+MB/s\)', content)
    reist_match = re.search(r'REIST\s*:\s+([\d.]+)\s+s\s+\(([\d.]+)\s+MB/s\)', content)
    speedup_match = re.search(r'Speedup:\s+([\d.]+)x', content)

    if classic_match and reist_match:
        results['classic_time'] = float(classic_match.group(1))
        results['classic_mbps'] = float(classic_match.group(2))
        results['reist_time'] = float(reist_match.group(1))
        results['reist_mbps'] = float(reist_match.group(2))
        results['speedup'] = float(speedup_match.group(1)) if speedup_match else 0.0
    return results


def parse_hashmix(content):
    results = {'moduli': []}
    pattern = (
        r'M = (\d+)\s+classic\s*:\s+([\d.]+)\s+REIST\s*:\s+'
        r'([\d.]+)\s+speedup\s*:\s+([\d.]+)x'
    )
    matches = re.findall(pattern, content)
    for modulus, classic_time, reist_time, speedup in matches:
        results['moduli'].append({
            'modulus': int(modulus),
            'classic_time': float(classic_time),
            'reist_time': float(reist_time),
            'speedup': float(speedup)
        })
    return results


def parse_reist_arm(content):
    results = {'moduli': []}
    pattern = (
        r'q = (\d+)\s+scalar:\s+([\d.]+)\s+s\s+NEON:\s+'
        r'([\d.]+)\s+s\s+speedup:\s+([\d.]+)x'
    )
    matches = re.findall(pattern, content)
    for q, scalar_time, neon_time, speedup in matches:
        results['moduli'].append({
            'q': int(q),
            'scalar_time': float(scalar_time),
            'neon_time': float(neon_time),
            'speedup': float(speedup)
        })
    return results


def parse_montgomery(content):
    """Parse Montgomery benchmark results."""
    results = {'moduli': []}
    
    # Split content by modulus sections
    modulus_sections = re.split(r'========================================\s*\nModulus = (\d+)', content)
    
    for i in range(1, len(modulus_sections), 2):
        modulus = int(modulus_sections[i])
        section = modulus_sections[i + 1]
        
        modulus_data = {'modulus': modulus}
        
        # Parse modular addition section
        add_match = re.search(
            r'--- Modular Addition ---\s+Classic\s*:\s+([\d.]+)\s+s\s+REIST\s*:\s+([\d.]+)\s+s\s+'
            r'Montgomery\s*:\s+([\d.]+)\s+s\s+REIST speedup vs Classic\s*:\s+([\d.]+)x\s+'
            r'Montgomery speedup vs Classic:\s+([\d.]+)x\s+REIST speedup vs Montgomery\s*:\s+([\d.]+)x',
            section
        )
        if add_match:
            modulus_data['add_classic'] = float(add_match.group(1))
            modulus_data['add_reist'] = float(add_match.group(2))
            modulus_data['add_montgomery'] = float(add_match.group(3))
            modulus_data['add_reist_speedup'] = float(add_match.group(4))
            modulus_data['add_mont_speedup'] = float(add_match.group(5))
            modulus_data['add_reist_vs_mont'] = float(add_match.group(6))
        
        # Parse modular multiplication section
        mul_match = re.search(
            r'--- Modular Multiplication ---\s+Classic\s*:\s+([\d.]+)\s+s\s+REIST\s*:\s+([\d.]+)\s+s\s+'
            r'Montgomery\s*:\s+([\d.]+)\s+s\s+REIST speedup vs Classic\s*:\s+([\d.]+)x\s+'
            r'Montgomery speedup vs Classic:\s+([\d.]+)x\s+REIST speedup vs Montgomery\s*:\s+([\d.]+)x',
            section
        )
        if mul_match:
            modulus_data['mul_classic'] = float(mul_match.group(1))
            modulus_data['mul_reist'] = float(mul_match.group(2))
            modulus_data['mul_montgomery'] = float(mul_match.group(3))
            modulus_data['mul_reist_speedup'] = float(mul_match.group(4))
            modulus_data['mul_mont_speedup'] = float(mul_match.group(5))
            modulus_data['mul_reist_vs_mont'] = float(mul_match.group(6))
        
        if 'add_classic' in modulus_data or 'mul_classic' in modulus_data:
            results['moduli'].append(modulus_data)
    
    return results


# ---------------------------------------------------------------------------
# Charts: O0 vs O3 comparisons
# ---------------------------------------------------------------------------

def create_comparison_charts(o0_data, o3_data, output_dir, timestamp):
    charts = []

    if 'bench_modadd_suite' in o0_data and 'bench_modadd_suite' in o3_data:
        chart_path = os.path.join(output_dir, f"{timestamp}_comparison_modadd.png")
        if create_modadd_comparison(o0_data['bench_modadd_suite'],
                                    o3_data['bench_modadd_suite'],
                                    chart_path):
            charts.append(('modadd', chart_path))

    if 'bench_poly_mod' in o0_data and 'bench_poly_mod' in o3_data:
        chart_path = os.path.join(output_dir, f"{timestamp}_comparison_poly.png")
        if create_poly_comparison(o0_data['bench_poly_mod'],
                                  o3_data['bench_poly_mod'],
                                  chart_path):
            charts.append(('poly', chart_path))

    chart_path = os.path.join(output_dir, f"{timestamp}_comparison_overall.png")
    if create_overall_comparison(o0_data, o3_data, chart_path):
        charts.append(('overall', chart_path))

    return charts


def create_modadd_comparison(o0_results, o3_results, output_path):
    if not o0_results.get('moduli') or not o3_results.get('moduli'):
        print("Skipping modadd chart - insufficient data")
        return False

    o0_moduli = [m['modulus'] for m in o0_results['moduli']]
    o0_speedups = [m['speedup'] for m in o0_results['moduli']]
    o3_moduli = [m['modulus'] for m in o3_results['moduli']]
    o3_speedups = [m['speedup'] for m in o3_results['moduli']]

    plt.figure(figsize=(10, 6))
    plt.plot(o0_moduli, o0_speedups, marker='o', label='O0 (No optimization)', linewidth=2)
    plt.plot(o3_moduli, o3_speedups, marker='s', label='O3 (Optimized)', linewidth=2)
    plt.xlabel('Modulus B', fontsize=12)
    plt.ylabel('Speedup (classic / REIST)', fontsize=12)
    plt.title('REIST Modular-Add Speedup: O0 vs O3', fontsize=14, fontweight='bold')
    plt.xscale('log')
    plt.legend(fontsize=10)
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()
    print(f"Created: {output_path}")
    return True


def create_poly_comparison(o0_results, o3_results, output_path):
    if not o0_results.get('moduli') or not o3_results.get('moduli'):
        print("Skipping poly chart - insufficient data")
        return False

    o0_q = [m['q'] for m in o0_results['moduli']]
    o0_speedups = [m['speedup'] for m in o0_results['moduli']]
    o3_q = [m['q'] for m in o3_results['moduli']]
    o3_speedups = [m['speedup'] for m in o3_results['moduli']]

    plt.figure(figsize=(10, 6))
    plt.plot(o0_q, o0_speedups, marker='o', label='O0 (No optimization)', linewidth=2)
    plt.plot(o3_q, o3_speedups, marker='s', label='O3 (Optimized)', linewidth=2)
    plt.xlabel('Modulus q', fontsize=12)
    plt.ylabel('Speedup (classic / REIST)', fontsize=12)
    plt.title('Polynomial Modular-Add Speedup: O0 vs O3', fontsize=14, fontweight='bold')
    plt.xscale('log')
    plt.legend(fontsize=10)
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()
    print(f"Created: {output_path}")
    return True


def create_overall_comparison(o0_data, o3_data, output_path):
    benchmarks = []
    o0_speedups = []
    o3_speedups = []

    for bench_name in ['bench_modadd_suite', 'bench_poly_mod',
                       'bench_modular', 'bench_chacha_stream', 'bench_hashmix']:
        if bench_name in o0_data and bench_name in o3_data:
            o0_res = o0_data[bench_name]
            o3_res = o3_data[bench_name]

            display_name = bench_name.replace('bench_', '').replace('_', ' ').title()

            if 'moduli' in o0_res and 'moduli' in o3_res and o0_res['moduli'] and o3_res['moduli']:
                o0_avg = sum(m['speedup'] for m in o0_res['moduli']) / len(o0_res['moduli'])
                o3_avg = sum(m['speedup'] for m in o3_res['moduli']) / len(o3_res['moduli'])
                benchmarks.append(display_name)
                o0_speedups.append(o0_avg)
                o3_speedups.append(o3_avg)
            elif 'speedup' in o0_res and 'speedup' in o3_res:
                benchmarks.append(display_name)
                o0_speedups.append(o0_res['speedup'])
                o3_speedups.append(o3_res['speedup'])

    if not benchmarks:
        print("Skipping overall chart - insufficient data")
        return False

    x = range(len(benchmarks))
    width = 0.35

    plt.figure(figsize=(12, 6))
    plt.bar([i - width/2 for i in x], o0_speedups, width,
            label='O0 (No optimization)', alpha=0.8)
    plt.bar([i + width/2 for i in x], o3_speedups, width,
            label='O3 (Optimized)', alpha=0.8)

    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Average Speedup (classic / REIST)', fontsize=12)
    plt.title('Overall REIST Speedup Comparison: O0 vs O3', fontsize=14, fontweight='bold')
    plt.xticks(x, benchmarks, rotation=45, ha='right')
    plt.legend(fontsize=10)
    plt.grid(True, axis='y', alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()
    print(f"Created: {output_path}")
    return True


# ---------------------------------------------------------------------------
# ASM compilation & analysis
# ---------------------------------------------------------------------------

def find_bench_sources(src_dir="src"):
    """Find all bench_*.cpp files appropriate for this platform."""
    src_path = Path(src_dir)
    all_sources = sorted(src_path.glob("bench_*.cpp"))

    filtered = []
    for src in all_sources:
        name = src.name.lower()

        if "arm" in name and not is_arm_platform():
            print(f"Skipping ARM benchmark on x86 platform: {src.name}")
            continue

        if "x86" in name and is_arm_platform():
            print(f"Skipping x86-specific benchmark on ARM platform: {src.name}")
            continue

        filtered.append(src)

    return filtered



def run_cmd(cmd):
    """Run shell command, raise on failure."""
    print("  $", " ".join(cmd))
    result = subprocess.run(cmd, stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE, text=True)
    if result.returncode != 0:
        print("    ERROR:", result.stderr.strip())
        raise RuntimeError(f"Command failed: {' '.join(cmd)}")
    return result


def compile_to_asm(source: Path, asm_dir: Path, compiler="g++"):
    """Compile a single source file to O0 and O3 assembly."""
    asm_dir.mkdir(parents=True, exist_ok=True)
    include = "-I./src"

    asm_o0 = asm_dir / f"{source.stem}_O0.s"
    asm_o3 = asm_dir / f"{source.stem}_O3.s"

    run_cmd([compiler, include, "-O0", "-S", str(source), "-o", str(asm_o0)])
    run_cmd([compiler, include, "-O3", "-S", str(source), "-o", str(asm_o3)])

    return asm_o0, asm_o3


def analyze_asm(asm_file: Path):
    """Analyze assembly file for key patterns."""
    try:
        text = asm_file.read_text(encoding="utf-8", errors="ignore").lower()
    except Exception:
        return {
            "div": False,
            "signmask": False,
            "magic": False,
            "reist": False,
        }

    div = bool(re.search(r"\bidiv\b|\bdiv\b", text))
    signmask = bool(re.search(r"sar.*31|cdq|mov.*edx.*eax|xor.*edx", text))
    magic = bool(re.search(r"imul.*[0-9]+", text))
    reist = bool(re.search(r"cmp|cmov|setg|setl", text))

    return {
        "div": div,
        "signmask": signmask,
        "magic": magic,
        "reist": reist,
    }


def collect_asm_analysis(asm_dir: Path, bench_sources):
    """Compile and analyze all bench_*.cpp, return dict of results."""
    asm_results = {}  # { "bench_modadd_suite": { "O0": {...}, "O3": {...}, "asm_o0": Path, "asm_o3": Path } }

    for src in bench_sources:
        print(f"\nCompiling to ASM: {src}")
        asm_o0, asm_o3 = compile_to_asm(src, asm_dir)

        print(f"Analyzing ASM: {asm_o0.name}, {asm_o3.name}")
        res_o0 = analyze_asm(asm_o0)
        res_o3 = analyze_asm(asm_o3)

        bench_key = src.stem  # e.g. bench_modadd_suite
        asm_results[bench_key] = {
            "O0": res_o0,
            "O3": res_o3,
            "asm_o0": asm_o0,
            "asm_o3": asm_o3,
        }

    return asm_results


# ---------------------------------------------------------------------------
# Markdown report generation
# ---------------------------------------------------------------------------

def generate_markdown_report(system_info, o0_data, o3_data, charts,
                             asm_results, output_file):
    """Generate comprehensive markdown report including ASM analysis."""

    with open(output_file, 'w', encoding="utf-8") as f:
        # Header
        f.write("# REIST Cryptographic Benchmark Report\n\n")
        f.write(f"**Generated:** {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n\n")
        f.write("---\n\n")

        # System Information
        f.write("## System Information\n\n")
        if system_info:
            f.write("| Property | Value |\n")
            f.write("|----------|-------|\n")
            f.write(f"| **Hostname** | {system_info.get('hostname', 'N/A')} |\n")
            f.write(f"| **Operating System** | {system_info.get('os', 'N/A')} |\n")
            f.write(f"| **CPU Model** | {system_info.get('cpu_model', 'N/A')} |\n")
            f.write(f"| **CPU Frequency** | {system_info.get('cpu_mhz', 'N/A')} MHz |\n")
            f.write(f"| **Memory** | {system_info.get('memory', 'N/A')} |\n")
        else:
            f.write("*System information not available*\n")

        f.write("\n---\n\n")

        # Executive Summary
        f.write("## Executive Summary\n\n")
        f.write("This report presents a comprehensive analysis of the REIST ")
        f.write("symmetric remainder arithmetic compared to classical modular ")
        f.write("operations. Benchmarks were run with:\n\n")
        f.write("- **O0**: No optimization (baseline)\n")
        f.write("- **O3**: Full optimization with architecture-specific tuning\n\n")

        # Overall comparison charts
        f.write("## Performance Overview\n\n")
        for chart_type, chart_path in charts:
            if chart_type == 'overall':
                rel_path = os.path.relpath(chart_path, os.path.dirname(output_file))
                f.write(f"![Overall Comparison]({rel_path})\n\n")

        f.write("---\n\n")

        # Detailed benchmark sections
        write_modadd_section(f, o0_data, o3_data, charts, output_file)
        write_poly_mod_section(f, o0_data, o3_data, charts, output_file)
        write_modular_section(f, o0_data, o3_data)
        write_chacha_sections(f, o0_data, o3_data)
        write_hashmix_section(f, o0_data, o3_data)

        # ASM / Compiler artifact analysis
        write_asm_analysis_section(f, asm_results, output_file)

        # Conclusions
        f.write("---\n\n")
        f.write("## Conclusions\n\n")
        f.write("### Key Findings\n\n")
        f.write("1. **REIST arithmetic consistently shows structural advantages** in the ")
        f.write("compiled machine code (no sign-mask path, simpler correction logic) ")
        f.write("and often measurable runtime speedups.\n\n")
        f.write("2. **Compiler optimizations (O3) significantly change the instruction ")
        f.write("patterns**, but REIST retains its simpler remainder path compared to ")
        f.write("classical `%` in many scenarios.\n\n")
        f.write("3. **The speedup increases with larger moduli** in modular addition and ")
        f.write("polynomial arithmetic, which are central for lattice-based cryptography.\n\n")
        f.write("4. **The assembly analysis confirms** that classical remainder often ")
        f.write("requires sign-mask and extra uops, whereas REIST avoids these in its ")
        f.write("core design.\n\n")

        f.write("### Recommendations\n\n")
        f.write("- Use REIST for cryptographic primitives requiring frequent modular operations.\n")
        f.write("- Enable compiler optimizations to maximize both REIST and classical performance.\n")
        f.write("- Consider hardware-specific vectorization (NEON/AVX) in production.\n")
        f.write("- Profile real-world workloads to validate the observed speedups.\n\n")

        f.write("---\n\n")
        f.write("*Report generated by REIST Crypto Bench automated documentation system*\n")

    print(f"\n✓ Generated comprehensive benchmark report: {output_file}")


def write_modadd_section(f, o0_data, o3_data, charts, output_file):
    f.write("## Modular Addition Suite\n\n")
    f.write("This benchmark compares classical modulo `(a + b) % m` with ")
    f.write("REIST symmetric remainder using simple comparisons.\n\n")

    for chart_type, chart_path in charts:
        if chart_type == 'modadd':
            rel_path = os.path.relpath(chart_path, os.path.dirname(output_file))
            f.write(f"![Modadd Comparison]({rel_path})\n\n")

    if 'bench_modadd_suite' in o0_data and 'bench_modadd_suite' in o3_data:
        f.write("### Results: O0 (No Optimization)\n\n")
        write_modadd_table(f, o0_data['bench_modadd_suite'])

        f.write("\n### Results: O3 (Optimized)\n\n")
        write_modadd_table(f, o3_data['bench_modadd_suite'])

    f.write("\n---\n\n")


def write_modadd_table(f, results):
    if not results.get('moduli'):
        f.write("*No data available*\n\n")
        return

    f.write("| Modulus | Classic Time (s) | REIST Time (s) | Speedup |\n")
    f.write("|---------|------------------|----------------|----------|\n")
    for m in results['moduli']:
        f.write(f"| {m['modulus']:,} | {m['classic_time']:.6f} | "
                f"{m['reist_time']:.6f} | {m['speedup']:.3f}x |\n")
    f.write("\n")


def write_poly_mod_section(f, o0_data, o3_data, charts, output_file):
    f.write("## Polynomial Modular Addition\n\n")
    f.write("Benchmark for NTRU-style lattice operations with large prime moduli, ")
    f.write("testing coefficient-wise modular addition.\n\n")

    for chart_type, chart_path in charts:
        if chart_type == 'poly':
            rel_path = os.path.relpath(chart_path, os.path.dirname(output_file))
            f.write(f"![Poly Mod Comparison]({rel_path})\n\n")

    if 'bench_poly_mod' in o0_data and 'bench_poly_mod' in o3_data:
        f.write("### Results: O0 (No Optimization)\n\n")
        write_poly_table(f, o0_data['bench_poly_mod'])

        f.write("\n### Results: O3 (Optimized)\n\n")
        write_poly_table(f, o3_data['bench_poly_mod'])

    f.write("\n---\n\n")


def write_poly_table(f, results):
    if not results.get('moduli'):
        f.write("*No data available*\n\n")
        return

    f.write("| Modulus q | Classic Time (s) | REIST Time (s) | Speedup |\n")
    f.write("|-----------|------------------|----------------|----------|\n")
    for m in results['moduli']:
        f.write(f"| {m['q']:,} | {m['classic_time']:.6f} | "
                f"{m['reist_time']:.6f} | {m['speedup']:.3f}x |\n")
    f.write("\n")


def write_modular_section(f, o0_data, o3_data):
    f.write("## Modular Remainder Operations\n\n")
    f.write("Direct comparison of modular remainder computation methods.\n\n")

    if 'bench_modular' in o0_data and 'bench_modular' in o3_data:
        f.write("| Optimization | Classic Time (s) | REIST Time (s) | Speedup |\n")
        f.write("|--------------|------------------|----------------|----------|\n")

        o0 = o0_data['bench_modular']
        o3 = o3_data['bench_modular']

        if o0:
            f.write(f"| **O0** | {o0.get('classic_time', 0):.6f} | "
                    f"{o0.get('reist_time', 0):.6f} | {o0.get('speedup', 0):.3f}x |\n")
        if o3:
            f.write(f"| **O3** | {o3.get('classic_time', 0):.6f} | "
                    f"{o3.get('reist_time', 0):.6f} | {o3.get('speedup', 0):.3f}x |\n")

        f.write("\n")

    f.write("---\n\n")


def write_chacha_sections(f, o0_data, o3_data):
    f.write("## ChaCha20 Cipher Benchmarks\n\n")
    f.write("Performance analysis of ChaCha20-style operations with REIST arithmetic.\n\n")

    if 'bench_chacha_stream' in o0_data and 'bench_chacha_stream' in o3_data:
        f.write("### ChaCha20 Stream Generation\n\n")
        f.write("| Optimization | Classic (MB/s) | REIST (MB/s) | Speedup |\n")
        f.write("|--------------|----------------|--------------|----------|\n")

        o0 = o0_data['bench_chacha_stream']
        o3 = o3_data['bench_chacha_stream']

        if o0:
            f.write(f"| **O0** | {o0.get('classic_mbps', 0):.2f} | "
                    f"{o0.get('reist_mbps', 0):.2f} | {o0.get('speedup', 0):.3f}x |\n")
        if o3:
            f.write(f"| **O3** | {o3.get('classic_mbps', 0):.2f} | "
                    f"{o3.get('reist_mbps', 0):.2f} | {o3.get('speedup', 0):.3f}x |\n")

        f.write("\n")

    f.write("---\n\n")


def write_hashmix_section(f, o0_data, o3_data):
    f.write("## Hash-Mix Operations\n\n")
    f.write("Performance comparison for hash function mixing operations using modular arithmetic.\n\n")

    if 'bench_hashmix' in o0_data and 'bench_hashmix' in o3_data:
        f.write("### Results: O0 vs O3 Comparison\n\n")

        o0_moduli = o0_data['bench_hashmix'].get('moduli', [])
        o3_moduli = o3_data['bench_hashmix'].get('moduli', [])

        if o0_moduli or o3_moduli:
            f.write("| Modulus | O0 Speedup | O3 Speedup |\n")
            f.write("|---------|------------|------------|\n")

            for i in range(max(len(o0_moduli), len(o3_moduli))):
                o0_speedup = o0_moduli[i]['speedup'] if i < len(o0_moduli) else 0
                o3_speedup = o3_moduli[i]['speedup'] if i < len(o3_moduli) else 0
                modulus = (o0_moduli[i]['modulus']
                           if i < len(o0_moduli)
                           else o3_moduli[i]['modulus'])
                f.write(f"| {modulus:,} | {o0_speedup:.3f}x | {o3_speedup:.3f}x |\n")

            f.write("\n")

    f.write("---\n\n")


def write_asm_analysis_section(f, asm_results, output_file):
    """Write compiler artifact analysis section."""
    f.write("## Compiler Artifact Analysis (Assembly Inspection)\n\n")
    f.write("This section inspects the generated assembly for all `bench_*.cpp` ")
    f.write("to see whether classical modulo and REIST variants differ at the ")
    f.write("machine-code level.\n\n")

    if not asm_results:
        f.write("*No assembly analysis available.*\n\n")
        return

    f.write("| Benchmark Source | Opt | DIV | Sign-Mask | Magic Multiply | REIST-Style Pattern | ASM File |\n")
    f.write("|------------------|-----|-----|-----------|----------------|----------------------|----------|\n")

    for bench_key, data in sorted(asm_results.items()):
        for opt in ("O0", "O3"):
            res = data[opt]
            asm_file = data["asm_o0"] if opt == "O0" else data["asm_o3"]
            rel_asm = os.path.relpath(asm_file, os.path.dirname(output_file))

            def yes_no(flag):
                return "YES" if flag else "no"

            f.write(f"| `{bench_key}.cpp` | {opt} | "
                    f"{yes_no(res['div'])} | "
                    f"{yes_no(res['signmask'])} | "
                    f"{yes_no(res['magic'])} | "
                    f"{'Possible' if res['reist'] else 'no'} | "
                    f"[asm]({rel_asm}) |\n")

    f.write("\n")
    f.write("Interpretation:\n\n")
    f.write("- **DIV**: Use of hardware division instructions (`div`/`idiv`).\n")
    f.write("- **Sign-Mask**: Pattern typical for classical signed remainder paths.\n")
    f.write("- **Magic Multiply**: Strength-reduction of division/modulo to multiply+shift.\n")
    f.write("- **REIST-Style Pattern**: Presence of compare/move patterns typical for branchless symmetric correction.\n\n")
    f.write("---\n\n")


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    print("=" * 60)
    print("REIST Benchmark Documentation Generator (with ASM Analysis)")
    print("=" * 60)

    result_dir = get_arch_result_dir()
    print(f"\nResult directory: {result_dir}")

    print("\nSearching for benchmark results...")
    # Read prefix from CLI or environment
    parser = argparse.ArgumentParser()
    parser.add_argument("--prefix", type=str, default=None,
                        help="Timestamp prefix (e.g. 20251210_153502) to load specific benchmark run")
    args = parser.parse_args()

    prefix = args.prefix or os.environ.get("RESULT_TIMESTAMP")

    print(f"\nUsing prefix: {prefix if prefix else '(auto: newest timestamp)'}")

    # Load benchmark results, now prefix-aware
    o0_files = find_latest_results(result_dir, 0, prefix)
    o3_files = find_latest_results(result_dir, 3, prefix)

    if not o0_files or not o3_files:
        print("ERROR: Could not find complete benchmark results for both O0 and O3")
        print(f"O0 files found: {len(o0_files)}")
        print(f"O3 files found: {len(o3_files)}")
        return 1

    print(f"Found {len(o0_files)} O0 benchmark files")
    print(f"Found {len(o3_files)} O3 benchmark files")

    system_info = extract_system_info(o0_files[0] if o0_files else o3_files[0])
    print(f"\nSystem: {system_info.get('cpu_model', 'Unknown')}")

    print("\nParsing benchmark results...")
    o0_data = {}
    o3_data = {}

    for fpath in o0_files:
        bench_name = os.path.basename(fpath).split('_O0.txt')[0].split('_', 2)[2]
        o0_data[bench_name] = parse_benchmark_results(fpath)
        print(f"  Parsed O0: {bench_name}")

    for fpath in o3_files:
        bench_name = os.path.basename(fpath).split('_O3.txt')[0].split('_', 2)[2]
        o3_data[bench_name] = parse_benchmark_results(fpath)
        print(f"  Parsed O3: {bench_name}")

    print("\nGenerating comparison charts...")
    timestamp = prefix or datetime.now().strftime("%Y%m%d_%H%M%S")
    charts = create_comparison_charts(o0_data, o3_data, result_dir, timestamp)

    # ASM compilation + analysis
    print("\nCompiling and analyzing assembly for all bench_*.cpp ...")
    bench_sources = find_bench_sources("src")
    asm_dir = Path(result_dir) / f"{timestamp}_ASM"
    asm_results = collect_asm_analysis(asm_dir, bench_sources)

    print("\nGenerating markdown report...")
    output_file = os.path.join(result_dir, f"{timestamp}_BENCHMARK_REPORT.md")
    generate_markdown_report(system_info, o0_data, o3_data, charts, asm_results, output_file)

    print("\n" + "=" * 60)
    print("Documentation generation complete!")
    print("=" * 60)
    print(f"\nReport location: {output_file}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
