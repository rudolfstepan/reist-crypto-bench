#!/usr/bin/env bash
set -euo pipefail

repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
build_dir=${REIST_BUILD_DIR:-"$repo_root/build/cmake-release"}
result_dir=${REIST_RESULT_DIR:-}
make_cxx=${CXX:-g++}
result_args=()
if [[ -n $result_dir ]]; then
  result_args=(--result-dir "$result_dir")
fi

if [[ -n ${PYTHON:-} ]]; then
  python_bin=$PYTHON
elif command -v python3 >/dev/null 2>&1 \
    && python3 -c 'import sys; raise SystemExit(sys.version_info < (3, 10))' \
      >/dev/null 2>&1; then
  python_bin=python3
elif command -v python >/dev/null 2>&1 \
    && python -c 'import sys; raise SystemExit(sys.version_info < (3, 10))' \
      >/dev/null 2>&1; then
  python_bin=python
else
  echo "Python 3.10 or newer is required (set PYTHON to its executable)." >&2
  exit 2
fi

quick=0
if [[ $# -eq 1 && $1 == "--quick" ]]; then
  quick=1
elif [[ $# -ne 0 ]]; then
  echo "Usage: $0 [--quick]" >&2
  exit 2
fi

cd "$repo_root"

cmake -S "$repo_root" -B "$build_dir" \
  -DCMAKE_BUILD_TYPE=Release \
  -DREIST_WARNINGS_AS_ERRORS=ON \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
cmake --build "$build_dir" --config Release --parallel
ctest --test-dir "$build_dir" -C Release --output-on-failure

# Multi-config generators place executables below the configuration directory.
cmake_binary_dir=$build_dir
for candidate in "$build_dir/Release" "$build_dir/release"; do
  if [[ -f "$candidate/bench_modadd_suite" || \
        -f "$candidate/bench_modadd_suite.exe" ]]; then
    cmake_binary_dir=$candidate
    break
  fi
done

session_id=$(
  "$python_bin" -c \
    'import datetime; print(datetime.datetime.now().strftime("%Y%m%d_%H%M%S_%f"))'
)

if [[ $quick -eq 1 ]]; then
  cmake_compiler=$(
    "$python_bin" -c \
      'import pathlib,sys; lines=pathlib.Path(sys.argv[1]).read_text(errors="replace").splitlines(); print(next((line.split("=",1)[1] for line in lines if line.startswith("CMAKE_CXX_COMPILER:") and "=" in line), ""))' \
      "$build_dir/CMakeCache.txt"
  )
  if [[ -z $cmake_compiler ]]; then
    echo "Could not determine CMAKE_CXX_COMPILER from CMakeCache.txt." >&2
    exit 2
  fi
  cmake_compiler_version=$(
    "$python_bin" -c \
      'import pathlib,re,sys; files=sorted((pathlib.Path(sys.argv[1])/"CMakeFiles").glob("*/CMakeCXXCompiler.cmake")); text=files[-1].read_text(errors="replace") if files else ""; get=lambda key: (re.search(r"set\("+key+r" \"([^\"]*)\"\)",text).group(1) if re.search(r"set\("+key+r" \"([^\"]*)\"\)",text) else "unknown"); print(get("CMAKE_CXX_COMPILER_ID")+" "+get("CMAKE_CXX_COMPILER_VERSION")+" (declared by CMake)")' \
      "$build_dir"
  )
  cmake_cache_hash=$(
    "$python_bin" -c \
      'import hashlib,pathlib,sys; print(hashlib.sha256(pathlib.Path(sys.argv[1]).read_bytes()).hexdigest())' \
      "$build_dir/CMakeCache.txt"
  )
  # Five benchmarks are portable C++20. Montgomery and Barrett require
  # __int128 and are therefore absent from CMake builds such as MSVC.
  required_quick_benches=(
    bench_modadd_suite bench_poly_mod bench_modular
    bench_chacha_stream bench_hashmix
  )
  optional_quick_benches=(
    bench_montgomery bench_barret_reist bench_modadd_suite_neon
  )
  quick_bench_args=()
  for bench in "${required_quick_benches[@]}"; do
    if [[ ! -f "$cmake_binary_dir/$bench" && \
          ! -f "$cmake_binary_dir/$bench.exe" ]]; then
      echo "Required CMake smoke binary is missing: $bench" >&2
      exit 1
    fi
    quick_bench_args+=(--bench "$bench")
  done
  for bench in "${optional_quick_benches[@]}"; do
    if [[ -f "$cmake_binary_dir/$bench" || \
          -f "$cmake_binary_dir/$bench.exe" ]]; then
      quick_bench_args+=(--bench "$bench")
    else
      echo "Skipping unavailable optional CMake smoke binary: $bench"
    fi
  done
  "$python_bin" "$repo_root/scripts/run_benchmarks.py" \
    --build-dir "$cmake_binary_dir" --suffix "" \
    --label CMake-O3-smoke --session-id "$session_id" --quick \
    --compiler "$cmake_compiler" --build-system CMake \
    --compiler-executable "$cmake_compiler" \
    --compiler-version "$cmake_compiler_version" \
    --build-profile Release --build-provenance declared \
    --build-flags="CMake configuration=Release; CMakeCache.txt sha256=$cmake_cache_hash" \
    "${result_args[@]}" "${quick_bench_args[@]}"
  echo "Quick/smoke run completed; no report was generated from smoke timings."
  exit 0
fi

# A report compares profiles from one explicit session. Build and run all three
# Makefile profiles. Their compile recipes create sidecars which the runner
# verifies against every timed binary before starting it.
make_args=(-C "$repo_root" run PYTHON="$python_bin" CXX="$make_cxx" \
  RUN_SESSION="$session_id")
if [[ -n $result_dir ]]; then
  make_args+=(RUN_RESULT_DIR="$result_dir")
fi
make "${make_args[@]}"

"$python_bin" "$repo_root/scripts/generate_benchmark_report.py" \
  --prefix "$session_id" --compiler "$make_cxx" "${result_args[@]}"
