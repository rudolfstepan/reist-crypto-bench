# REIST Crypto Benchmarks

This document describes the benchmark programs included in this repository.

## 1. `bench_modular`

Micro-benchmark comparing:

- classic remainder `T % B`
- REIST-style signed remainder in `(-B/2, +B/2]`

The program:

- draws random `T` values from a wide range,
- measures the total runtime for `N` evaluations of each variant,
- reports wall-clock time and derived speed ratio.

You can parameterize:

- `B` (modulus)
- `N` (number of iterations)

Example:

```bash
./bench_modular 257 5000000
```

## 2. `bench_chacha_reist`

Toy cipher-speed benchmark that embeds a ChaCha20-like round function:

- `chacha_block_std` uses classic 32-bit additions.
- `chacha_block_reist` uses a hook function `reist_add32` where a REIST-specific ALU could be applied in hardware.

On commodity CPUs the REIST variant is *simulated* and does not change the bit-pattern of the block.
The benchmark measures:

- runtime of a large number of blocks,
- derived throughput in MB/s,
- relative speed between the two variants.

**Important:** The REIST variant here is intended as a *performance model* and not as a new cipher design.
Do not use it for real-world cryptography.



## 3. `bench_modadd_suite`

This program runs a more extensive suite of modular-add benchmarks over several
moduli (e.g. 257, 997, 10007, 1'000'003, 1'000'000'007) and compares:

- `classic_mod` : `r = (r + step) % B`
- `reist_sym`   : `r += step;` with symmetric correction using only `+/−B` and comparisons.

It prints per-modulus runtimes and writes a CSV file `results_modadd_suite.csv`
in the current directory, which you can use for plotting.

Example:

```bash
./bench_modadd_suite           # default N = 50'000'000
./bench_modadd_suite 20000000  # smaller N if your machine is slower
```
