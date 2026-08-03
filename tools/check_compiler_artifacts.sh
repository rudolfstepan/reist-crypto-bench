#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: tools/check_compiler_artifacts.sh <source.cpp>" >&2
    echo "Optional: ARTIFACT_KERNELS, ARTIFACT_MAGIC_KERNELS, ARTIFACT_INTEGER_SIMD_KERNELS," >&2
    echo "          ARTIFACT_CXXFLAGS, ARTIFACT_COMPILERS, ARTIFACT_ARCH, ARTIFACT_OUTDIR" >&2
    exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
SRC_INPUT="$1"

if [[ "$SRC_INPUT" = /* ]]; then
    SRC="$SRC_INPUT"
else
    SRC="$ROOT_DIR/$SRC_INPUT"
fi

if [[ ! -f "$SRC" ]]; then
    echo "Error: source '$SRC_INPUT' not found." >&2
    exit 2
fi

SOURCE_NAME="$(basename "$SRC")"
SOURCE_STEM="${SOURCE_NAME%.cpp}"
OUTDIR="${ARTIFACT_OUTDIR:-$ROOT_DIR/compiler_reports}"
mkdir -p "$OUTDIR"

# Explicit per-source function manifest.  Do not fall back to classifying an
# entire translation unit: timing, I/O and library code would create positives.
case "$SOURCE_NAME" in
    bench_modadd_suite.cpp)
        DEFAULT_KERNELS='^(classic_modadd_runtime_kernel|reist_modadd_runtime_kernel|classic_modadd_const_[[:digit:]]+|reist_modadd_const_[[:digit:]]+)$'
        ;;
    bench_modadd_suite_neon.cpp)
        DEFAULT_KERNELS='^(classic_modadd_4stream_runtime_kernel|reist_modadd_4stream_runtime_kernel|reist_modadd_neon_4stream_runtime_kernel)$'
        ;;
    bench_poly_mod.cpp)
        DEFAULT_KERNELS='^(classic_poly_runtime_kernel|reist_poly_runtime_kernel|classic_poly_const_[[:digit:]]+|reist_poly_const_[[:digit:]]+)$'
        ;;
    bench_modular.cpp)
        DEFAULT_KERNELS='classic_checksum|centered_checksum'
        ;;
    bench_hashmix.cpp)
        DEFAULT_KERNELS='classic_step|centered_step'
        ;;
    bench_montgomery.cpp)
        DEFAULT_KERNELS='classic_modadd|classic_modmul|centered_modmul_reference|MontgomeryContext.*(add|multiply)'
        ;;
    bench_barret_reist.cpp)
        DEFAULT_KERNELS='classic_modadd|BarrettContext(32|64).*reduce_centered|barrett_reduce32_avx2|reist_add_avx2'
        ;;
    bench_reist_arm.cpp)
        DEFAULT_KERNELS='classic_poly_scalar|reist_poly_scalar|reist_poly_neon'
        ;;
    bench_reist_intrinsics_const_portable.cpp)
        DEFAULT_KERNELS='^compiler_const_percent_[[:digit:]]+_portable$'
        ;;
    bench_reist_intrinsics_const_avx2.cpp)
        DEFAULT_KERNELS='^compiler_const_percent_[[:digit:]]+_avx2$'
        ;;
    bench_reist_intrinsics_const_neon.cpp)
        DEFAULT_KERNELS='^compiler_const_percent_[[:digit:]]+_neon$'
        ;;
    reist_intrinsics_avx2.cpp)
        DEFAULT_KERNELS='add_i32_(compiler_auto|explicit)_avx2'
        ;;
    reist_intrinsics_neon.cpp)
        DEFAULT_KERNELS='add_i32_(compiler_auto|explicit)_neon'
        ;;
    *)
        DEFAULT_KERNELS=''
        ;;
esac

KERNEL_REGEX="${ARTIFACT_KERNELS:-$DEFAULT_KERNELS}"
if [[ -z "$KERNEL_REGEX" ]]; then
    echo "Error: no kernel manifest for '$SOURCE_NAME'; set ARTIFACT_KERNELS to an explicit function-name regex." >&2
    exit 2
fi

case "$SOURCE_NAME" in
    bench_modadd_suite.cpp)
        DEFAULT_MAGIC_KERNELS='^classic_modadd_const_[[:digit:]]+$'
        ;;
    bench_poly_mod.cpp)
        DEFAULT_MAGIC_KERNELS='^classic_poly_const_[[:digit:]]+$'
        ;;
    bench_reist_intrinsics_const_portable.cpp)
        DEFAULT_MAGIC_KERNELS='^compiler_const_percent_(257|12289|65537|1000000|1000003|1000000007|2147483647)_portable$'
        ;;
    bench_reist_intrinsics_const_avx2.cpp)
        DEFAULT_MAGIC_KERNELS='^compiler_const_percent_(257|12289|65537|1000000|1000003|1000000007|2147483647)_avx2$'
        ;;
    bench_reist_intrinsics_const_neon.cpp)
        DEFAULT_MAGIC_KERNELS='^compiler_const_percent_(257|12289|65537|1000000|1000003|1000000007|2147483647)_neon$'
        ;;
    *)
        DEFAULT_MAGIC_KERNELS=''
        ;;
esac
MAGIC_KERNEL_REGEX="${ARTIFACT_MAGIC_KERNELS:-$DEFAULT_MAGIC_KERNELS}"

case "$SOURCE_NAME" in
    reist_intrinsics_avx2.cpp)
        DEFAULT_INTEGER_SIMD_KERNELS='add_i32_(compiler_auto|explicit)_avx2'
        ;;
    reist_intrinsics_neon.cpp)
        DEFAULT_INTEGER_SIMD_KERNELS='add_i32_(compiler_auto|explicit)_neon'
        ;;
    *)
        DEFAULT_INTEGER_SIMD_KERNELS=''
        ;;
esac
INTEGER_SIMD_KERNEL_REGEX="${ARTIFACT_INTEGER_SIMD_KERNELS:-$DEFAULT_INTEGER_SIMD_KERNELS}"

if [[ -n "${ARTIFACT_COMPILERS:-}" ]]; then
    read -r -a COMPILERS <<< "$ARTIFACT_COMPILERS"
else
    COMPILERS=("clang++" "g++")
fi

ARCH="${ARTIFACT_ARCH:-$(uname -m 2>/dev/null || echo unknown)}"
BENCH_O0=(-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O0 -g -fno-tree-vectorize)
BENCH_O3=(-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -march=native)

# Backend sources are intentionally guarded so a generic dispatcher can be
# built safely.  Artifact-only compilation must opt into the same ISA and
# definition that the build system applies to the backend translation unit.
case "$SOURCE_NAME" in
    bench_reist_intrinsics_const_portable.cpp)
        # The portable diagnostic object is built without a target-specific
        # ISA option in both CMake and Make.
        BENCH_O3=(-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG)
        ;;
    bench_reist_intrinsics_const_avx2.cpp)
        # Match the AVX2 REIST backend translation unit exactly; do not enable
        # AVX2 for the dispatcher or the rest of the executable.
        BENCH_O0+=(-mavx2)
        BENCH_O3=(-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -mavx2)
        ;;
    bench_reist_intrinsics_const_neon.cpp)
        # Match the AArch64 REIST backend translation unit exactly.
        BENCH_O0+=(-march=armv8-a+simd)
        BENCH_O3=(-Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -march=armv8-a+simd)
        ;;
    reist_intrinsics_avx2.cpp)
        BENCH_O0+=(-mavx2 -DREIST_HAVE_AVX2_BACKEND=1)
        BENCH_O3+=(-mavx2 -DREIST_HAVE_AVX2_BACKEND=1)
        ;;
    reist_intrinsics_neon.cpp)
        BENCH_O0+=(-march=armv8-a+simd -DREIST_HAVE_NEON_BACKEND=1)
        BENCH_O3+=(-march=armv8-a+simd -DREIST_HAVE_NEON_BACKEND=1)
        ;;
esac

# These profiles mirror CPPFLAGS + COMMON_FLAGS + NOOPT_FLAGS/OPT_FLAGS in the
# Makefile.  A compiler-dialect translation is applied below only when needed
# for source-level assembly emission and is recorded in the manifest.
ANALYSIS_O0=("${BENCH_O0[@]}")
ANALYSIS_O3=("${BENCH_O3[@]}")

if [[ -n "${ARTIFACT_CXXFLAGS:-}" ]]; then
    read -r -a CUSTOM_FLAGS <<< "$ARTIFACT_CXXFLAGS"
    PROFILES=("CUSTOM")
else
    PROFILES=("O0" "O3")
fi

REPORT="$OUTDIR/report.md"
MANIFEST="$OUTDIR/manifest.tsv"

source_hash() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum "$SRC" | awk '{print $1}'
    elif command -v shasum >/dev/null 2>&1; then
        shasum -a 256 "$SRC" | awk '{print $1}'
    else
        echo unavailable
    fi
}

SOURCE_SHA256="$(source_hash)"
REPO_REVISION="$(git -C "$ROOT_DIR" rev-parse HEAD 2>/dev/null || echo unavailable)"

{
    echo "# Compiler Artifact Report"
    echo
    echo "- Source: \`$SOURCE_NAME\`"
    echo "- Source SHA-256: \`$SOURCE_SHA256\`"
    echo "- Repository revision: \`$REPO_REVISION\`"
    echo "- Architecture: \`$ARCH\`"
    echo "- Kernel manifest: \`$KERNEL_REGEX\`"
    echo "- Multiply/shift eligibility manifest: \`${MAGIC_KERNEL_REGEX:-none}\`"
    echo "- Integer-SIMD eligibility manifest: \`${INTEGER_SIMD_KERNEL_REGEX:-none}\`"
    echo "- Flag note: benchmark and analysis profiles mirror the Makefile; any compiler-dialect translation is recorded separately."
    echo
    echo "| Compiler | Profile | Emitted kernel | Role | DIV | Sign-mask | Multiply+shift candidate | Centered-correction candidate | Integer SIMD | Assembly |"
    echo "|---|---|---|---|---|---|---|---|---|---|"
} > "$REPORT"

printf 'source\tsha256\trepository_revision\tarchitecture\tcompiler\tcompiler_version\tprofile\tbenchmark_flags\tanalysis_flags\tcommand\tkernel\trole\tdiv\tsignmask\tmultiply_shift_candidate\tcentered_correction_candidate\tinteger_simd\n' > "$MANIFEST"

command_string() {
    local output=''
    local arg
    for arg in "$@"; do
        printf -v output '%s%q ' "$output" "$arg"
    done
    printf '%s' "${output% }"
}

flags_string() {
    local output=''
    local flag
    for flag in "$@"; do
        output+="${output:+ }$flag"
    done
    printf '%s' "$output"
}

extract_kernel() {
    local asm_file="$1"
    local symbol="$2"
    awk -v wanted="$symbol" '
        function external_label_name(line, name) {
            if (line !~ /^[_A-Za-z$][[:alnum:]_.$@]*:[[:space:]]*(#.*)?$/) return ""
            name = line
            sub(/:.*/, "", name)
            if (name ~ /^\.L/ || name ~ /^LBB/ || name ~ /^Ltmp/ || name ~ /^LC/) return ""
            return name
        }
        {
            label = external_label_name($0)
            if (!active && label == wanted) active = 1
            else if (active && label != "") exit
            if (active) print
        }
    ' "$asm_file"
}

role_for_kernel() {
    local lower
    lower="$(printf '%s' "$1" | tr '[:upper:]' '[:lower:]')"
    if [[ "$lower" == *reist* ]]; then
        echo REIST
    elif [[ "$lower" == *montgomery* || "$lower" == *mont_* ]]; then
        echo Montgomery
    elif [[ "$lower" == *barrett* || "$lower" == *barret* ]]; then
        echo Barrett
    elif [[ "$lower" == *centered* || "$lower" == *signed_remainder* ]]; then
        echo centered
    elif [[ "$lower" == *classic* ]]; then
        echo classic
    else
        echo other
    fi
}

yes_no() {
    [[ "$1" == 1 ]] && echo YES || echo no
}

TMP_KERNEL=''
cleanup() {
    [[ -n "$TMP_KERNEL" && -f "$TMP_KERNEL" ]] && rm -f -- "$TMP_KERNEL"
    return 0
}
trap cleanup EXIT

pushd "$ROOT_DIR" >/dev/null

compiled_any=0
for CC in "${COMPILERS[@]}"; do
    if ! command -v "$CC" >/dev/null 2>&1; then
        echo "Skipping $CC (not installed)"
        continue
    fi
    compiled_any=1
    CC_ID="$(basename "$CC" | tr -c '[:alnum:]_.-' '_')"
    CC_VERSION="$($CC --version 2>&1 | head -n 1 | tr '\t' ' ')"

    for PROFILE in "${PROFILES[@]}"; do
        case "$PROFILE" in
            O0)
                BENCH_FLAGS=("${BENCH_O0[@]}")
                ANALYSIS_FLAGS=("${ANALYSIS_O0[@]}")
                ;;
            O3)
                BENCH_FLAGS=("${BENCH_O3[@]}")
                ANALYSIS_FLAGS=("${ANALYSIS_O3[@]}")
                ;;
            CUSTOM)
                BENCH_FLAGS=("${CUSTOM_FLAGS[@]}")
                ANALYSIS_FLAGS=("${CUSTOM_FLAGS[@]}")
                ;;
        esac

        # Preserve the Makefile spelling in BENCH_FLAGS, but use the compiler's
        # equivalent source-assembly option where command-line dialects differ.
        if [[ "$CC_VERSION" == *clang* && "$PROFILE" != CUSTOM ]]; then
            TRANSLATED_FLAGS=()
            for flag in "${ANALYSIS_FLAGS[@]}"; do
                if [[ "$flag" == "-fno-tree-vectorize" ]]; then
                    TRANSLATED_FLAGS+=("-fno-vectorize" "-fno-slp-vectorize")
                else
                    TRANSLATED_FLAGS+=("$flag")
                fi
            done
            ANALYSIS_FLAGS=("${TRANSLATED_FLAGS[@]}")
        elif [[ "$ARCH" =~ ^(arm64|aarch64)$ && "$CC_VERSION" != *clang* && "$PROFILE" != CUSTOM ]]; then
            TRANSLATED_FLAGS=()
            for flag in "${ANALYSIS_FLAGS[@]}"; do
                [[ "$flag" == "-fvectorize" ]] && flag="-ftree-vectorize"
                TRANSLATED_FLAGS+=("$flag")
            done
            ANALYSIS_FLAGS=("${TRANSLATED_FLAGS[@]}")
        fi

        ASM="$OUTDIR/${SOURCE_STEM}_${CC_ID}_${PROFILE}.s"
        COMMAND=("$CC" "${ANALYSIS_FLAGS[@]}" -S "$SRC" -o "$ASM")
        echo "Compiling: $(command_string "${COMMAND[@]}")"
        "${COMMAND[@]}"

        BENCH_TEXT="$(flags_string "${BENCH_FLAGS[@]}")"
        ANALYSIS_TEXT="$(flags_string "${ANALYSIS_FLAGS[@]}")"
        COMMAND_TEXT="$(command_string "${COMMAND[@]}")"

        mapfile -t SYMBOLS < <(
            sed -n -E 's/^([_A-Za-z$][[:alnum:]_.$@]*):[[:space:]]*(#.*)?$/\1/p' "$ASM" \
                | grep -Ev '^(\.L|LBB|Ltmp|LC)' || true
        )

        found=0
        for SYMBOL in "${SYMBOLS[@]}"; do
            MATCH_SYMBOL="${SYMBOL#_}"
            RAW_MATCH=0
            NORMALIZED_MATCH=0
            [[ "$SYMBOL" =~ $KERNEL_REGEX ]] && RAW_MATCH=1
            [[ "$MATCH_SYMBOL" =~ $KERNEL_REGEX ]] && NORMALIZED_MATCH=1
            if [[ $RAW_MATCH -eq 0 && $NORMALIZED_MATCH -eq 0 ]]; then
                continue
            fi
            if command -v c++filt >/dev/null 2>&1; then
                DEMANGLED="$(printf '%s\n' "$SYMBOL" | c++filt)"
            else
                DEMANGLED="$SYMBOL"
            fi
            KERNEL_NAME="$DEMANGLED"
            if [[ $RAW_MATCH -eq 0 && $NORMALIZED_MATCH -eq 1 ]]; then
                KERNEL_NAME="$MATCH_SYMBOL"
            fi

            found=1
            TMP_KERNEL="$(mktemp "$OUTDIR/.kernel.XXXXXX")"
            extract_kernel "$ASM" "$SYMBOL" > "$TMP_KERNEL"

            DIV=0
            SIGNMASK=0
            MAGIC=0
            CORRECTION=0
            INTEGER_SIMD=0

            grep -Eqi '^[[:space:]]*(idiv(b|w|l|q)?|div(b|w|l|q)?|sdiv|udiv)([[:space:]]|$)' "$TMP_KERNEL" && DIV=1
            grep -Eqi '^[[:space:]]*(sar(b|w|l|q)?|asr)[[:space:]].*(\$|#)?(31|63)([^0-9]|$)' "$TMP_KERNEL" && SIGNMASK=1

            HAS_MUL=0
            HAS_SHIFT=0
            grep -Eqi '^[[:space:]]*(imul(b|w|l|q)?|mul(b|w|l|q)?|smulh|umulh)([[:space:]]|$)' "$TMP_KERNEL" && HAS_MUL=1
            grep -Eqi '^[[:space:]]*(sar(b|w|l|q)?|shr(b|w|l|q)?|asr|lsr)([[:space:]]|$)' "$TMP_KERNEL" && HAS_SHIFT=1
            if [[ -n "$MAGIC_KERNEL_REGEX" ]] \
                && { [[ "$KERNEL_NAME" =~ $MAGIC_KERNEL_REGEX ]] \
                    || [[ "$SYMBOL" =~ $MAGIC_KERNEL_REGEX ]]; }; then
                [[ $DIV -eq 0 && $HAS_MUL -eq 1 && $HAS_SHIFT -eq 1 ]] && MAGIC=1
            fi

            ROLE="$(role_for_kernel "$KERNEL_NAME")"
            HAS_CMP=0
            HAS_SELECT=0
            HAS_ADD_SUB=0
            grep -Eqi '^[[:space:]]*(cmp(b|w|l|q)?|cmn|tst)([[:space:]]|$)' "$TMP_KERNEL" && HAS_CMP=1
            grep -Eqi '^[[:space:]]*(cmov[a-z]*|set(g|ge|l|le|a|ae|b|be)[a-z]*|csel|csinc|cset|csetm)([[:space:]]|$)' "$TMP_KERNEL" && HAS_SELECT=1
            grep -Eqi '^[[:space:]]*(add(b|w|l|q)?|sub(b|w|l|q)?)([[:space:]]|$)' "$TMP_KERNEL" && HAS_ADD_SUB=1
            if [[ "$ROLE" == REIST || "$ROLE" == centered ]]; then
                [[ $HAS_CMP -eq 1 && $HAS_SELECT -eq 1 && $HAS_ADD_SUB -eq 1 ]] && CORRECTION=1
            fi

            # Require both a packed integer add and a packed integer compare.
            # This avoids treating scalar VEX instructions or vector moves as
            # evidence that the modular correction itself was vectorized.
            HAS_VECTOR_ADD=0
            HAS_VECTOR_CMP=0
            grep -Eqi '^[[:space:]]*vpadd(b|w|d|q)([[:space:]]|$)|^[[:space:]]*add[[:space:]]+v[0-9]+\.(2d|[248](b|h|s))' "$TMP_KERNEL" && HAS_VECTOR_ADD=1
            grep -Eqi '^[[:space:]]*vpcmp[a-z0-9]*[[:space:]]|^[[:space:]]*cm(eq|ge|gt|hi|hs|le|lt)[[:space:]]+v[0-9]+\.(2d|[248](b|h|s))' "$TMP_KERNEL" && HAS_VECTOR_CMP=1
            if [[ -n "$INTEGER_SIMD_KERNEL_REGEX" ]] \
                && { [[ "$KERNEL_NAME" =~ $INTEGER_SIMD_KERNEL_REGEX ]] \
                    || [[ "$SYMBOL" =~ $INTEGER_SIMD_KERNEL_REGEX ]]; }; then
                [[ $HAS_VECTOR_ADD -eq 1 && $HAS_VECTOR_CMP -eq 1 ]] && INTEGER_SIMD=1
            fi

            DISPLAY_NAME="${KERNEL_NAME//|/\\|}"
            ASM_NAME="$(basename "$ASM")"
            printf '| `%s` | %s | `%s` | %s | %s | %s | %s | %s | %s | [asm](%s) |\n' \
                "$CC" "$PROFILE" "$DISPLAY_NAME" "$ROLE" "$(yes_no "$DIV")" \
                "$(yes_no "$SIGNMASK")" "$([[ $MAGIC -eq 1 ]] && echo candidate || echo no)" \
                "$([[ $CORRECTION -eq 1 ]] && echo candidate || echo no)" \
                "$(yes_no "$INTEGER_SIMD")" "$ASM_NAME" >> "$REPORT"

            printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' \
                "$SOURCE_NAME" "$SOURCE_SHA256" "$REPO_REVISION" "$ARCH" "$CC" "$CC_VERSION" \
                "$PROFILE" "$BENCH_TEXT" "$ANALYSIS_TEXT" "$COMMAND_TEXT" "$KERNEL_NAME" "$ROLE" \
                "$DIV" "$SIGNMASK" "$MAGIC" "$CORRECTION" "$INTEGER_SIMD" >> "$MANIFEST"

            rm -f -- "$TMP_KERNEL"
            TMP_KERNEL=''
        done

        if [[ $found -eq 0 ]]; then
            ASM_NAME="$(basename "$ASM")"
            printf '| `%s` | %s | not emitted/inlined (`%s`) | - | - | - | - | - | - | [asm](%s) |\n' \
                "$CC" "$PROFILE" "$KERNEL_REGEX" "$ASM_NAME" >> "$REPORT"
            printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' \
                "$SOURCE_NAME" "$SOURCE_SHA256" "$REPO_REVISION" "$ARCH" "$CC" "$CC_VERSION" \
                "$PROFILE" "$BENCH_TEXT" "$ANALYSIS_TEXT" "$COMMAND_TEXT" "not-emitted" "-" \
                "-" "-" "-" "-" "-" >> "$MANIFEST"
        fi
    done
done

popd >/dev/null

if [[ $compiled_any -eq 0 ]]; then
    echo "Error: none of the requested compilers is installed." >&2
    exit 1
fi

cat >> "$REPORT" <<'EOF'

## Interpretation

- DIV recognizes x86 `div`/`idiv` suffix variants and AArch64 `sdiv`/`udiv`.
- Sign-mask requires an arithmetic right shift by exactly 31 or 63 bits.
- Multiply plus shift is a strength-reduction candidate, not proof of compiler intent.
- Centered correction requires a REIST/centered function plus compare, conditional selection, and add/sub instructions.
- Integer SIMD requires both a packed integer add and a packed integer compare in a source-specific eligible kernel.
- A missing kernel may have been inlined or optimized away; no whole-file inference is substituted.
- Assembly shape does not by itself establish constant-time or side-channel behavior.
EOF

echo "Report written to: $REPORT"
echo "Manifest written to: $MANIFEST"
