#!/usr/bin/env bash

set -e

SRC="$1"

if [ -z "$SRC" ]; then
    echo "Usage: ./check_compiler_artifacts.sh <source.cpp>"
    exit 1
fi

if [ ! -f "$SRC" ]; then
    echo "Error: file '$SRC' not found."
    exit 1
fi

OUTDIR="compiler_reports"
mkdir -p "$OUTDIR"

# root of repo (one level up from tools/)
ROOT_DIR="$(dirname "$0")/.."
INCLUDE="-I$ROOT_DIR/src"

COMPILERS=("clang++" "g++")
OPT_LEVELS=("-O0" "-O3")

echo "# Compiler Artifact Report" > "$OUTDIR/report.md"
echo "Source: \`$SRC\`" >> "$OUTDIR/report.md"
echo "" >> "$OUTDIR/report.md"

for CC in "${COMPILERS[@]}"; do
    if ! command -v "$CC" &> /dev/null; then
        echo "Skipping $CC (not installed)"
        continue
    fi

    for OPT in "${OPT_LEVELS[@]}"; do

        ASM="$OUTDIR/asm_${CC}_${OPT//-/}.s"

        echo "Compiling: $CC $OPT ..."
        $CC $INCLUDE $OPT -S "$SRC" -o "$ASM"

        echo "## $CC $OPT" >> "$OUTDIR/report.md"
        echo "" >> "$OUTDIR/report.md"

        FOUND_DIV="no"
        FOUND_SIGNMASK="no"
        FOUND_MAGIC="no"
        FOUND_REIST_CORR="no"

        grep -qiE '\bidiv\b|\bdiv\b' "$ASM" && FOUND_DIV="YES"
        grep -qiE 'sar.*31|cdq|mov.*edx.*eax|xor.*edx' "$ASM" && FOUND_SIGNMASK="YES"
        grep -qiE 'imul.*[0-9]+' "$ASM" && FOUND_MAGIC="YES"
        grep -qiE 'cmp|cmov|setg|setl' "$ASM" && FOUND_REIST_CORR="Possible"

        echo "| Property | Status |" >> "$OUTDIR/report.md"
        echo "|----------|--------|" >> "$OUTDIR/report.md"
        echo "| DIV instruction used | $FOUND_DIV |" >> "$OUTDIR/report.md"
        echo "| Sign-mask path detected | $FOUND_SIGNMASK |" >> "$OUTDIR/report.md"
        echo "| Magic multiply (strength reduction) | $FOUND_MAGIC |" >> "$OUTDIR/report.md"
        echo "| REIST-style correction pattern | $FOUND_REIST_CORR |" >> "$OUTDIR/report.md"
        echo "" >> "$OUTDIR/report.md"
    done
done

echo "Report written to: $OUTDIR/report.md"
