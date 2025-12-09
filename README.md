# REIST Cryptographic Benchmark Suite

> **Comprehensive performance benchmarking for REIST (Redundant Signed Integer) arithmetic in cryptographic operations**

This repository provides a complete benchmark suite for evaluating REIST division and signed-remainder arithmetic compared to classical modular operations. The benchmarks cover various cryptographic scenarios including modular arithmetic, polynomial operations, and cipher-like computations.

## 🚀 Quick Start

Run a complete benchmark with a single command:

```bash
make all && make run && make run_optimized && make doc
```

This will:
1. **Build** all benchmarks with O0 and O3 optimization levels
2. **Run** benchmarks without optimization (O0 baseline)
3. **Run** benchmarks with full optimization (O3 with architecture-specific tuning)
4. **Generate** a comprehensive markdown report with charts comparing O0 vs O3 performance

Results are stored in `tests/results/x86/` (or `tests/results/arm/` on ARM systems) with:
- Timestamped `.txt` files containing detailed benchmark output with system information
- `.csv` files with structured data for analysis
- `.png` charts visualizing performance comparisons
- `*_BENCHMARK_REPORT.md` - Complete publication-ready documentation

---

## 📋 Benchmark Suite Overview

### 1. **Modular Addition Suite** (`bench_modadd_suite`)
Compares classical modulo operation `(a + b) % m` with REIST symmetric remainder using simple comparisons.

**What it tests:**
- Counter maintenance with periodic modular reduction
- Various non-power-of-two moduli (257, 997, 10007, 1000003, etc.)
- Classical `%` operator vs REIST signed addition with range correction

**Why it matters:**
- Division by non-power-of-two is expensive on standard CPUs
- REIST eliminates division, using only signed addition and comparisons
- Shows REIST advantage in modular counter scenarios

**Example output:**
```
Modulus B = 257
  classic_mod: 0.183826 s
  reist_sym  : 0.058489 s
  speedup    : 3.143x (classic / REIST)
```

### 2. **Polynomial Modular Addition** (`bench_poly_mod`)
NTRU-style lattice operations with coefficient-wise modular addition for large prime moduli.

**What it tests:**
- Polynomial ring operations (common in lattice-based cryptography)
- Large moduli: 1,000,003 up to 1,000,000,007
- 1024 coefficients, 50,000 repetitions
- Branchless REIST correction vs classical modulo

**Why it matters:**
- Critical for post-quantum cryptography (NTRU, Kyber, Dilithium)
- Shows REIST performance on vectorizable operations
- Tests efficiency with large polynomial degrees

**Example output:**
```
q = 1000003
  classic : 0.124283 s
  REIST   : 0.143416 s
  speedup : 0.867x
```

### 3. **Modular Remainder Operations** (`bench_modular`)
Direct comparison of modular remainder computation methods.

**What it tests:**
- Random 64-bit values reduced modulo B
- Classical remainder `a % B` vs REIST signed remainder
- 5,000,000 operations per run

**Why it matters:**
- Pure microbenchmark of remainder computation
- Shows overhead of classical division instruction
- Demonstrates REIST advantage for individual operations

**Example output:**
```
--- Modular remainder ---
classic  : 0.098328 s
REIST    : 0.135289 s
Speedup  : 0.727x (classic / REIST)
```

### 4. **ChaCha20 Block Operations** (`bench_chacha_reist`)
ChaCha20-like cipher operations using REIST arithmetic.

**What it tests:**
- 32-bit modular addition performance
- Quarter-round operations (core ChaCha20 building block)
- 1,000,000 iterations

**Why it matters:**
- Demonstrates REIST in symmetric cipher context
- Shows performance on mixed arithmetic/bitwise operations
- Real-world cipher-like instruction mix

**Example output:**
```
--- Modular Addition (32-bit) ---
std_add    : 0.012345 s
reist_add32: 0.011111 s
Speed ratio: 1.11x (std / REIST)
```

### 5. **ChaCha20 Stream Generation** (`bench_chacha_stream`)
High-throughput keystream generation benchmark.

**What it tests:**
- Full ChaCha20 block transformation
- Throughput measured in MB/s
- 1,000,000 blocks (64 MB total)

**Why it matters:**
- Shows REIST impact on streaming cipher performance
- Measures throughput for bulk encryption scenarios
- Real-world performance metric

**Example output:**
```
Classic : 0.123456 s (520.0 MB/s)
REIST   : 0.111111 s (578.0 MB/s)
Speedup : 1.11x (classic / REIST)
```

### 6. **Hash-Mix Operations** (`bench_hashmix`)
Hash function mixing with modular reduction.

**What it tests:**
- Hash-like operations: `(x * A + B) % M`
- Multiple large moduli
- 100,000,000 iterations

**Why it matters:**
- Common pattern in hash functions and PRNGs
- Shows REIST performance for multiplicative operations
- Relevant for non-cryptographic hash applications

**Example output:**
```
M = 1000003  classic : 0.404142  REIST   : 0.636984  speedup : 0.634x
```

---

## 🏗️ Repository Structure

```
reist-crypto-bench/
├── include/
│   └── reist_mod.hpp          # REIST arithmetic implementations
├── src/
│   ├── bench_modadd_suite.cpp # Modular addition benchmark
│   ├── bench_poly_mod.cpp     # Polynomial operations
│   ├── bench_modular.cpp      # Direct remainder comparison
│   ├── bench_chacha_reist.cpp # ChaCha20 block operations
│   ├── bench_chacha_stream.cpp# ChaCha20 stream generation
│   ├── bench_hashmix.cpp      # Hash-mix operations
│   └── bench_reist_arm.cpp    # ARM NEON optimizations (ARM only)
├── scripts/
│   ├── plot_benchmarks.py     # Chart generation
│   ├── generate_benchmark_doc.py # Documentation generator
│   └── run_all.sh             # Legacy build script
├── tests/
│   ├── results/
│   │   ├── x86/               # x86_64 benchmark results
│   │   └── arm/               # ARM64 benchmark results
│   └── test_reist.cpp         # Unit tests
├── docs/
│   └── BENCHMARKS.md          # Benchmark methodology
├── build/                     # Build artifacts (generated)
├── Makefile                   # Main build system
├── CMakeLists.txt             # Alternative CMake build
└── README.md                  # This file
```

## 🔧 Build System

### Makefile Commands

| Command | Description |
|---------|-------------|
| `make all` | Build all benchmarks with both O0 and O3 optimization levels |
| `make run` | Execute all benchmarks with O0 (no optimization) |
| `make run_optimized` | Execute all benchmarks with O3 (full optimization + native tuning) |
| `make report` | Generate comprehensive benchmark report with charts |
| `make clean` | Remove all build artifacts |
| `make list` | Show build configuration (arch, compiler, flags) |

### Automated Build & Benchmark

The Makefile automatically:
- ✅ **Detects architecture** (x86_64 or ARM64/aarch64)
- ✅ **Selects best compiler** (Clang preferred, falls back to GCC)
- ✅ **Applies optimal flags**:
  - x86_64: `-march=native -mtune=native` (uses AVX2, AVX-512 if available)
  - ARM64: `-march=armv8-a+simd` (enables NEON)
- ✅ **Creates timestamped results** in `tests/results/x86/` or `tests/results/arm/`
- ✅ **Includes system information** (CPU model, frequency, memory) in every benchmark

### Optimization Levels

| Level | Flags | Purpose |
|-------|-------|---------|
| **O0** | `-O0` | Baseline performance, no optimization |
| **O3** | `-O3 -Ofast -march=native -funroll-loops -flto` | Maximum performance with aggressive optimization |

### Alternative: CMake Build

For custom configurations or integration with existing CMake projects:

```bash
mkdir -p build && cd build
cmake ..
cmake --build . --config Release
```

Executables will be in `build/` directory.

## 📊 Running Benchmarks

### Complete Benchmark Suite (Recommended)

Execute the full benchmark workflow in one command:

```bash
make all && make run && make run_optimized && make doc
```

**What happens:**
1. ⚙️ Compiles all benchmarks (O0 + O3 variants)
2. 🏃 Runs O0 benchmarks (baseline, ~2-3 minutes)
3. 🚀 Runs O3 benchmarks (optimized, ~1-2 minutes)
4. 📈 Generates comprehensive report with comparison charts

**Output files** (in `tests/results/x86/` or `tests/results/arm/`):
```
20251209_180515_bench_modadd_suite_O0.txt
20251209_180515_bench_modadd_suite_O3.txt
20251209_180515_results_modadd_suite.csv
20251209_180515_comparison_modadd.png
20251209_180515_BENCHMARK_REPORT.md  ← Complete documentation
```

### Individual Benchmark Execution

Run specific benchmarks manually:

```bash
# After building with 'make all'
./build/bench_modadd_suite_opt      # Optimized modular addition
./build/bench_poly_mod_noopt 2048   # No-opt poly with 2048 coefficients
./build/bench_modular_opt 997 10000000  # Custom modulus and iterations
./build/bench_chacha_stream_opt 2000000 # 2M blocks (128 MB)
./build/bench_hashmix_opt 200000000 # 200M iterations
```

**Custom Parameters:**

Each benchmark accepts command-line arguments:

| Benchmark | Arguments | Example |
|-----------|-----------|---------|
| `bench_modadd_suite` | `[N] [B]` | `./bench_modadd_suite_opt 100000000 1009` |
| `bench_poly_mod` | `[N] [reps] [q]` | `./bench_poly_mod_opt 2048 10000 1000003` |
| `bench_modular` | `[B] [N]` | `./bench_modular_opt 257 10000000` |
| `bench_chacha_reist` | `[N] [B]` | `./bench_chacha_reist_opt 2000000 0xDEADBEEF` |
| `bench_chacha_stream` | `[blocks] [B]` | `./bench_chacha_stream_opt 5000000` |
| `bench_hashmix` | `[N] [B] [M]` | `./bench_hashmix_opt 500000000 6364136223846793005 1000003` |

### System Information in Results

Every benchmark output includes detailed system information:

```
========================================
REIST modular-add benchmark suite
========================================
System Information:
  Hostname: ASUSPC
  OS: GNU/Linux
  CPU Model: Intel(R) Core(TM) i9-14900K
  CPU MHz: 3187.200
  Memory:       32706668 kB
========================================
```

This ensures results are always contextualized with hardware specifications.

## 📄 Documentation Generation

### Automated Report Creation

Generate a comprehensive benchmark report:

```bash
make doc
```

The script automatically:
1. 🔍 Finds latest O0 and O3 benchmark results
2. 📊 Parses all benchmark outputs
3. 📈 Creates comparison charts (modadd, poly_mod, overall)
4. 📝 Generates markdown report with tables and embedded images

### Report Contents

The generated `*_BENCHMARK_REPORT.md` includes:

#### 1. System Information
- Hostname, OS, CPU model and frequency
- Total memory
- Timestamp of report generation

#### 2. Executive Summary
- Overview of REIST vs classical arithmetic
- Optimization levels tested (O0, O3)

#### 3. Performance Overview
- Overall comparison chart showing all benchmarks
- High-level performance summary

#### 4. Detailed Benchmark Results
For each benchmark suite:
- **Description** of what's being tested
- **Comparison charts** (O0 vs O3)
- **Data tables** with execution times and speedups
- **Side-by-side comparison** of optimization levels

#### 5. Conclusions
- Key findings from benchmark data
- Performance trends and patterns
- Recommendations for REIST usage
- Suggestions for further optimization

### Example Report Section

```markdown
## Modular Addition Suite

![Modadd Comparison](20251209_181408_comparison_modadd.png)

### Results: O0 (No Optimization)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.183826 | 0.058489 | 3.143x |
| 997 | 0.183690 | 0.056372 | 3.259x |
...

### Results: O3 (Optimized)

| Modulus | Classic Time (s) | REIST Time (s) | Speedup |
|---------|------------------|----------------|----------|
| 257 | 0.193243 | 0.021527 | 8.977x |
| 997 | 0.190182 | 0.020559 | 9.251x |
...
```

The report is **publication-ready** and suitable for:
- Research papers
- Technical documentation
- Performance analysis presentations
- GitHub repository documentation

## 🔬 Understanding the Results

### What the Benchmarks Measure

**Speedup = Classic Time / REIST Time**

- **Speedup > 1.0**: REIST is faster than classical approach
- **Speedup < 1.0**: REIST is slower (compiler may optimize classical % better in some cases)
- **Speedup variation**: Depends on modulus size, optimization level, and CPU architecture

### Key Observations

1. **REIST shines with non-power-of-two moduli**
   - Classical `%` requires division instruction (expensive)
   - REIST uses signed addition + comparison (cheap)
   - Larger moduli often show better REIST performance

2. **Optimization level matters**
   - O0: Shows raw algorithm efficiency
   - O3: Compiler may optimize away some divisions, reducing REIST advantage
   - Some benchmarks show REIST advantage increases with O3

3. **Architectural differences**
   - x86_64: Division latency 20-40 cycles
   - ARM64: Different division performance characteristics
   - Results vary significantly between architectures

### Performance Expectations

**Typical speedup ranges:**
- Modular addition: 2-10x (O0), 5-15x (O3)
- Polynomial operations: 0.8-1.5x (optimization-dependent)
- Modular remainder: 0.5-2x (varies by modulus)
- ChaCha20-like: 0.9-1.2x (mixed operations)
- Hash-mix: 0.6-1.5x (multiplication dominant)

## 🎯 Use Cases & Applications

### When to Use REIST

✅ **Cryptographic operations with frequent modular arithmetic**
- Lattice-based cryptography (NTRU, Kyber, Dilithium)
- Modular exponentiation in RSA/DSA
- Elliptic curve operations
- Polynomial ring arithmetic

✅ **Hardware implementations**
- FPGA designs (no division hardware needed)
- Custom ASICs for cryptographic accelerators
- Embedded systems with limited ALU capabilities

✅ **High-throughput scenarios**
- Bulk encryption/decryption
- Hash function implementations
- Stream cipher operations

### Limitations

⚠️ **Software simulation on standard CPUs**
- True REIST benefit expected in dedicated hardware
- Current CPUs have optimized division instructions
- Software REIST is a proof-of-concept

⚠️ **Not a replacement for standard arithmetic**
- Use standard operations for general computation
- REIST is specialized for modular arithmetic patterns

⚠️ **Not production-ready cryptography**
- Benchmarks use crypto-like operations for testing
- Not vetted by cryptographic standards bodies
- Intended as research and development tool

## 🧪 Extending the Benchmark Suite

### Adding New Benchmarks

1. **Create benchmark source** in `src/bench_yourname.cpp`
2. **Include system info collection** (copy from existing benchmarks)
3. **Output results** to stdout (captured to `.txt` files)
4. **Optional: Write CSV** for detailed data
5. **Add to Makefile** in `SOURCES` variable
6. **Update documentation generator** if custom parsing needed

### Example Benchmark Template

```cpp
#include <iostream>
#include <chrono>
#include <fstream>
#include <unistd.h>
#include <cstdio>
#include <string>

int main() {
    // Collect system info
    std::string cpu_model, cpu_mhz, mem_total, hostname, os_name;
    // ... (copy from existing benchmarks)
    
    // Print header with system info
    std::cout << "========================================\n";
    std::cout << "Your Benchmark Name\n";
    std::cout << "========================================\n";
    std::cout << "System Information:\n";
    std::cout << "  Hostname: " << hostname << "\n";
    // ... etc
    
    // Run your benchmark
    // ... your code here
    
    // Print results
    std::cout << "Classic: " << time_classic << " s\n";
    std::cout << "REIST: " << time_reist << " s\n";
    
    return 0;
}
```

### Customizing Report Generation

Edit `scripts/generate_benchmark_doc.py`:

1. **Add parser function** for your benchmark format
2. **Update `parse_benchmark_results()`** to call your parser
3. **Add chart generation** if needed
4. **Add markdown section** in report generation

## 📚 Additional Resources

- **`include/reist_mod.hpp`**: Reference implementation of REIST arithmetic
- **`docs/BENCHMARKS.md`**: Detailed benchmark methodology
- **`tests/test_reist.cpp`**: Unit tests for REIST correctness
- **Generated reports**: Check `tests/results/x86/` or `tests/results/arm/`

## 🤝 Contributing

Contributions are welcome! Areas of interest:
- Additional benchmark scenarios
- ARM NEON optimizations
- SIMD implementations (AVX2, AVX-512)
- Hardware synthesis examples
- Cryptographic application case studies

## 📖 Citation

If you use this benchmark suite in your research, please cite:

```bibtex
@software{reist_crypto_bench,
  title = {REIST Cryptographic Benchmark Suite},
  author = {Rudolf Stepan},
  year = {2025},
  url = {https://github.com/rudolfstepan/reist-crypto-bench}
}
```

## 📝 License

See `LICENSE` file for details.

## 🔗 Related Work

- **REIST Division Theory**: See `docs/reist-division.pdf`
- **Modular Arithmetic in Cryptography**: Standards like FIPS 186-4 (DSA)
- **Lattice-Based Cryptography**: NIST PQC standardization
- **Hardware Arithmetic**: Books on computer arithmetic and VLSI design
