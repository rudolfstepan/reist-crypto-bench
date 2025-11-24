#!/usr/bin/env bash
set -e

BUILD_DIR="build"
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

cmake ..
cmake --build . --config Release

echo
echo "Running bench_modular..."
./bench_modular

echo
echo "Running bench_chacha_reist..."
./bench_chacha_reist


echo
echo "Running bench_modadd_suite..."
./bench_modadd_suite 20000000

echo
echo "Running bench_poly_mod..."
./bench_poly_mod

