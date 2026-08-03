cmake_minimum_required(VERSION 3.20)
project(ReistCryptoBench VERSION 1.0 LANGUAGES CXX)

option(REIST_ENABLE_SANITIZERS "Enable AddressSanitizer and UBSan" OFF)
option(REIST_WARNINGS_AS_ERRORS "Treat compiler warnings as build failures" OFF)
option(REIST_BUILD_DIAGNOSTICS
    "Build validated experiments that are excluded from paper reports" ON)
option(REIST_ENABLE_EXPLICIT_SIMD
    "Build architecture-specific AVX2/NEON intrinsic backends" ON)

add_library(reist_build_options INTERFACE)
target_compile_features(reist_build_options INTERFACE cxx_std_20)

if(MSVC)
    target_compile_options(reist_build_options INTERFACE /W4 /permissive-)
    if(REIST_WARNINGS_AS_ERRORS)
        target_compile_options(reist_build_options INTERFACE /WX)
    endif()
else()
    target_compile_options(reist_build_options INTERFACE
        -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion)
    if(REIST_WARNINGS_AS_ERRORS)
        target_compile_options(reist_build_options INTERFACE -Werror)
    endif()
endif()

if(REIST_ENABLE_SANITIZERS)
    if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
        target_compile_options(reist_build_options INTERFACE
            -fno-omit-frame-pointer -fsanitize=address,undefined)
        target_link_options(reist_build_options INTERFACE
            -fno-omit-frame-pointer -fsanitize=address,undefined)
    else()
        message(FATAL_ERROR
            "REIST_ENABLE_SANITIZERS requires a GCC- or Clang-compatible compiler")
    endif()
endif()

add_library(reist_mod INTERFACE)
target_include_directories(reist_mod INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(reist_mod INTERFACE reist_build_options)

# Simple public REIST API with a portable compiler-optimized backend and
# optional explicit SIMD backends.  ISA-specific code lives in its own
# translation unit so the dispatcher remains safe on older CPUs.
add_library(reist_intrinsics STATIC src/reist_intrinsics_dispatch.cpp)
target_link_libraries(reist_intrinsics PUBLIC reist_mod)
add_library(reist::intrinsics ALIAS reist_intrinsics)

function(reist_add_benchmark target source)
    add_executable(${target} ${source})
    target_link_libraries(${target} PRIVATE reist_mod)
endfunction()

# These are the validated, reportable programs.
reist_add_benchmark(bench_modadd_suite src/bench_modadd_suite.cpp)
reist_add_benchmark(bench_poly_mod src/bench_poly_mod.cpp)
reist_add_benchmark(bench_modular src/bench_modular.cpp)
reist_add_benchmark(bench_chacha_stream src/bench_chacha_stream.cpp)
reist_add_benchmark(bench_hashmix src/bench_hashmix.cpp)

include(CheckCXXSourceCompiles)
check_cxx_source_compiles(
    "int main() { __int128 value = 1; return static_cast<int>(value - 1); }"
    REIST_HAS_INT128)
if(REIST_HAS_INT128)
    reist_add_benchmark(bench_montgomery src/bench_montgomery.cpp)
    reist_add_benchmark(bench_barret_reist src/bench_barret_reist.cpp)
else()
    message(STATUS
        "Skipping Montgomery/Barrett benchmarks: compiler has no __int128")
endif()

set(REIST_TARGET_PROCESSOR "${CMAKE_SYSTEM_PROCESSOR}")
# MSVC cross-builds can retain the host processor in CMAKE_SYSTEM_PROCESSOR.
# The compiler architecture ID identifies the code-generation target instead.
if(MSVC AND CMAKE_CXX_COMPILER_ARCHITECTURE_ID)
    set(REIST_TARGET_PROCESSOR
        "${CMAKE_CXX_COMPILER_ARCHITECTURE_ID}")
endif()
string(TOLOWER "${REIST_TARGET_PROCESSOR}" REIST_PROCESSOR)

include(CheckCXXCompilerFlag)
include(CheckCXXSourceCompiles)
set(REIST_INTRINSIC_CONST_SOURCES
    src/bench_reist_intrinsics_const_portable.cpp)
set(REIST_INTRINSIC_CONST_MAIN_DEFINITIONS)
if(REIST_ENABLE_EXPLICIT_SIMD AND
   REIST_PROCESSOR MATCHES "^(x86_64|amd64|x64)$")
    if(MSVC)
        set(REIST_AVX2_FLAG "/arch:AVX2")
        set(REIST_HAS_AVX2_BACKEND TRUE)
    else()
        check_cxx_compiler_flag("-mavx2" REIST_HAS_AVX2_BACKEND)
        set(REIST_AVX2_FLAG "-mavx2")
    endif()
    if(REIST_HAS_AVX2_BACKEND)
        target_sources(reist_intrinsics PRIVATE src/reist_intrinsics_avx2.cpp)
        list(APPEND REIST_INTRINSIC_CONST_SOURCES
            src/bench_reist_intrinsics_const_avx2.cpp)
        list(APPEND REIST_INTRINSIC_CONST_MAIN_DEFINITIONS
            REIST_BENCH_HAVE_AVX2_CONST=1)
        set_source_files_properties(
            src/reist_intrinsics_avx2.cpp
            src/bench_reist_intrinsics_const_avx2.cpp
            PROPERTIES COMPILE_OPTIONS "${REIST_AVX2_FLAG}")
        target_compile_definitions(reist_intrinsics PRIVATE
            REIST_HAVE_AVX2_BACKEND=1)
    endif()
elseif(REIST_ENABLE_EXPLICIT_SIMD AND
       REIST_PROCESSOR MATCHES "^(aarch64|arm64)$")
    if(MSVC)
        set(REIST_HAS_NEON_BACKEND TRUE)
        set(REIST_NEON_FLAG "")
    else()
        check_cxx_compiler_flag("-march=armv8-a+simd"
            REIST_HAS_NEON_ARCH_FLAG)
        if(REIST_HAS_NEON_ARCH_FLAG)
            set(REIST_HAS_NEON_BACKEND TRUE)
            set(REIST_NEON_FLAG "-march=armv8-a+simd")
        else()
            check_cxx_source_compiles(
                "#include <arm_neon.h>
                 int main() {
                     int32x4_t value = vdupq_n_s32(1);
                     return vgetq_lane_s32(value, 0) - 1;
                 }"
                REIST_HAS_DEFAULT_NEON)
            set(REIST_HAS_NEON_BACKEND ${REIST_HAS_DEFAULT_NEON})
            set(REIST_NEON_FLAG "")
        endif()
    endif()
    if(REIST_HAS_NEON_BACKEND)
        target_sources(reist_intrinsics PRIVATE src/reist_intrinsics_neon.cpp)
        list(APPEND REIST_INTRINSIC_CONST_SOURCES
            src/bench_reist_intrinsics_const_neon.cpp)
        list(APPEND REIST_INTRINSIC_CONST_MAIN_DEFINITIONS
            REIST_BENCH_HAVE_NEON_CONST=1)
        if(REIST_NEON_FLAG)
            set_source_files_properties(
                src/reist_intrinsics_neon.cpp
                src/bench_reist_intrinsics_const_neon.cpp
                PROPERTIES COMPILE_OPTIONS "${REIST_NEON_FLAG}")
        endif()
        target_compile_definitions(reist_intrinsics PRIVATE
            REIST_HAVE_NEON_BACKEND=1)
    endif()
endif()

if(REIST_PROCESSOR MATCHES "^(aarch64|arm64)$")
    reist_add_benchmark(bench_modadd_suite_neon
        src/bench_modadd_suite_neon.cpp)
endif()

if(REIST_BUILD_DIAGNOSTICS)
    # Correctness-checked microbenchmarks with deliberately narrower scope.
    # The manifest runner does not treat them as paper measurements.
    reist_add_benchmark(bench_mont_vs_reist_tree_ntt
        src/bench_mont_vs_reist_tree_ntt.cpp)
    reist_add_benchmark(bench_reist_arm src/bench_reist_arm.cpp)
    reist_add_benchmark(bench_tree_reist src/bench_tree_reist.cpp)
    reist_add_benchmark(bench_tree_reist_avx2 src/bench_tree_reist_avx2.cpp)
    reist_add_benchmark(bench_tree_reist_neon src/bench_tree_reist_neon.cpp)
    reist_add_benchmark(reist_neon_diag_mt src/reist_neon_diag_mt.cpp)
    add_executable(bench_reist_intrinsics
        src/bench_reist_intrinsics.cpp
        ${REIST_INTRINSIC_CONST_SOURCES})
    target_link_libraries(bench_reist_intrinsics PRIVATE reist_intrinsics)
    if(REIST_INTRINSIC_CONST_MAIN_DEFINITIONS)
        set_property(SOURCE src/bench_reist_intrinsics.cpp APPEND PROPERTY
            COMPILE_DEFINITIONS
                ${REIST_INTRINSIC_CONST_MAIN_DEFINITIONS})
    endif()
    set_property(TARGET bench_reist_intrinsics PROPERTY
        INTERPROCEDURAL_OPTIMIZATION FALSE)
    foreach(REIST_OPTIMIZED_CONFIG Release RelWithDebInfo MinSizeRel)
        target_compile_definitions(bench_reist_intrinsics PRIVATE
            $<$<CONFIG:${REIST_OPTIMIZED_CONFIG}>:REIST_INTRINSIC_BENCH_OPTIMIZED=1>)
    endforeach()

    if(REIST_PROCESSOR MATCHES "^(x86_64|amd64|x64)$")
        if(MSVC)
            target_compile_options(bench_tree_reist_avx2 PRIVATE /arch:AVX2)
        else()
            target_compile_options(bench_tree_reist_avx2 PRIVATE -mavx2)
        endif()
    endif()
    find_package(Threads REQUIRED)
    target_link_libraries(reist_neon_diag_mt PRIVATE Threads::Threads)
endif()

include(CTest)
if(BUILD_TESTING)
    add_executable(reist_unit_tests tests/test_reist.cpp)
    target_link_libraries(reist_unit_tests PRIVATE reist_mod)

    add_executable(reist_intrinsic_tests tests/test_reist_intrinsics.cpp)
    target_link_libraries(reist_intrinsic_tests PRIVATE reist_intrinsics)

    add_test(NAME reist.unit COMMAND reist_unit_tests)
    set_tests_properties(reist.unit PROPERTIES LABELS "correctness")
    add_test(NAME reist.intrinsics.unit COMMAND reist_intrinsic_tests)
    set_tests_properties(reist.intrinsics.unit PROPERTIES
        LABELS "correctness;intrinsic" TIMEOUT 120)

    add_test(NAME reist.smoke.modadd
        COMMAND bench_modadd_suite 20000 257)
    add_test(NAME reist.smoke.poly
        COMMAND bench_poly_mod 128 1 257)
    add_test(NAME reist.smoke.modular
        COMMAND bench_modular 257 20000)
    add_test(NAME reist.smoke.chacha
        COMMAND bench_chacha_stream 10)
    add_test(NAME reist.smoke.hashmix
        COMMAND bench_hashmix 20000 1000003)
    if(TARGET bench_modadd_suite_neon)
        add_test(NAME reist.smoke.modadd_neon
            COMMAND bench_modadd_suite_neon 20000 257)
        set_tests_properties(reist.smoke.modadd_neon
            PROPERTIES LABELS "smoke;neon" TIMEOUT 120)
    endif()
    if(TARGET bench_montgomery)
        add_test(NAME reist.smoke.montgomery
            COMMAND bench_montgomery 1000)
        add_test(NAME reist.smoke.barrett
            COMMAND bench_barret_reist 8000)
        set_tests_properties(
            reist.smoke.montgomery reist.smoke.barrett
            PROPERTIES LABELS "smoke" TIMEOUT 120)
    endif()
    set_tests_properties(
        reist.smoke.modadd reist.smoke.poly reist.smoke.modular
        reist.smoke.chacha reist.smoke.hashmix
        PROPERTIES LABELS "smoke" TIMEOUT 120)

    if(TARGET bench_mont_vs_reist_tree_ntt)
        add_test(NAME reist.diagnostic.tree
            COMMAND bench_mont_vs_reist_tree_ntt 64 2 257)
        add_test(NAME reist.diagnostic.arm
            COMMAND bench_reist_arm 64 256 2)
        add_test(NAME reist.diagnostic.tree_scalar
            COMMAND bench_tree_reist 10000)
        add_test(NAME reist.diagnostic.modulo_vs_automatic
            COMMAND bench_reist_intrinsics
                --elements 100003 --repetitions 16 --modulus 257 --trials 12)
        set_tests_properties(
            reist.diagnostic.tree reist.diagnostic.arm
            reist.diagnostic.tree_scalar
            reist.diagnostic.modulo_vs_automatic
            PROPERTIES LABELS "diagnostic" TIMEOUT 120)
        set_tests_properties(reist.diagnostic.modulo_vs_automatic PROPERTIES
            LABELS "diagnostic;intrinsic;modulo" SKIP_RETURN_CODE 77)

        if(REIST_PROCESSOR MATCHES "^(aarch64|arm64)$")
            add_test(NAME reist.diagnostic.tree_neon
                COMMAND bench_tree_reist_neon 4000)
            add_test(NAME reist.diagnostic.neon_mt
                COMMAND reist_neon_diag_mt 2 4000)
            set_tests_properties(
                reist.diagnostic.tree_neon reist.diagnostic.neon_mt
                PROPERTIES LABELS "diagnostic;neon" TIMEOUT 120)
        endif()
    endif()
endif()
