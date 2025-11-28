# REIST Performance Benchmarks

This document summarizes and extends the performance evaluation of the REIST
modular arithmetic benchmarks.

## 1. Modular Add Suite (`bench_modadd_suite`)

We benchmark the periodic update

    r = (r + step) % B         // classic
    r = r + step; REIST_reduce // REIST

for several moduli B (257 up to 1,000,000,007) with 50,000,000 iterations.

On the reference machine, REIST achieves a speedup between **3.7× and 4.1×**
over the classic `%`-based implementation, consistently across all tested moduli.

Interpretation:

- `% B` for non power-of-two B forces the CPU to use a hardware divider.
- REIST replaces division with signed addition and simple comparisons.
- The loop body becomes divider-free and ALU-only, which is much more pipeline-friendly.

## 2. Polynomial Modular Add (NTRU-style, large q) (`bench_poly_mod`)

We evaluate polynomial additions of the form

    out[i] = (a[i] + b[i]) % q        // classic
    out[i] = REIST_signed(a[i] + b[i])// REIST

for cryptographically relevant, large moduli `q`:

- 1,000,003
- 10,000,019
- 100,000,007
- 1,000,000,007

With degree `N = 1024` and `reps = 50,000`, the REIST variant is about **20× faster**
than the classic modulo-based implementation on the same CPU.

This is a direct consequence of removing hardware division from the hot path.

## 3. How to regenerate plots

Use the provided script:

    python3 scripts/plot_benchmarks.py

This will read:

- `results_modadd_suite.csv`
- `results_poly_mod.csv`

and generate simple PNG plots (speedup vs modulus) next to the CSV files.

You can then embed these plots into the README or into papers.
