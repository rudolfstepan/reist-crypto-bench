# Release

This folder contains the Flutter application builds for each platform.

## About the Flutter App

The Flutter app is a mobile application that implements the cryptographic benchmarks for different platforms (iOS, Android, etc.). While the compiled binaries are provided here, **the source code for the Flutter application is not public in this repository**.

## C++ Benchmarks

The C++ benchmark implementations used in this app are based on the benchmark files in the `src/` directory of this repository. The core cryptographic algorithms and their optimizations (including NEON, AVX2, and other SIMD implementations) are similar to those found in the public benchmark suite.

## Platform-Specific Builds

Each subdirectory contains the platform-specific release builds:

- **apple_silicon/**: Builds optimized for Apple Silicon (ARM64) architecture

For more information about the benchmarks and their results, refer to the [BENCHMARKS.md](../docs/BENCHMARKS.md) documentation.
