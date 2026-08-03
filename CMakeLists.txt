cmake_minimum_required(VERSION 3.20)
project(ReistCryptoBench VERSION 1.0 LANGUAGES CXX)

option(REIST_ENABLE_SANITIZERS "Enable AddressSanitizer and UBSan" OFF)
option(REIST_WARNINGS_AS_ERRORS "Treat compiler warnings as build failures" OFF)
option(REIST_BUILD_DIAGNOSTICS
    "Build validated experiments that are excluded from paper reports" ON)

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

string(TOLOWER "${CMAKE_SYSTEM_PROCESSOR}" REIST_PROCESSOR)
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

    add_test(NAME reist.unit COMMAND reist_unit_tests)
    set_tests_properties(reist.unit PROPERTIES LABELS "correctness")

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
        set_tests_properties(
            reist.diagnostic.tree reist.diagnostic.arm
            reist.diagnostic.tree_scalar
            PROPERTIES LABELS "diagnostic" TIMEOUT 120)

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
