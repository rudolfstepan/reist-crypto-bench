# Archived application build

`apple_silicon/reist_division.zip` is a historical Flutter/macOS convenience
build. Its Flutter source, build recipe, compiler metadata, and correctness
manifest are not present in this repository. The binary therefore cannot be
reproduced or verified against the current canonical interval
`[-B/2, B/2)` and **must not be used as a paper benchmark or cited artifact**.

The maintained, reportable implementation is the C++ source under `src/` and
`include/`, built with CMake or the top-level Makefile and checked by CTest plus
the manifest-based runner described in [BENCHMARKS.md](../docs/BENCHMARKS.md).
FPGA sources and the precise provenance/buildability status of the published
pin are linked from the main [README](../README.md).
