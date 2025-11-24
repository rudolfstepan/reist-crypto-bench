cmake_minimum_required(VERSION 3.12)
project(ReistCryptoBench CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(reist_mod INTERFACE)
target_include_directories(reist_mod INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_executable(bench_modular src/bench_modular.cpp)
target_link_libraries(bench_modular PRIVATE reist_mod)

add_executable(bench_chacha_reist src/bench_chacha_reist.cpp)
target_link_libraries(bench_chacha_reist PRIVATE reist_mod)


add_executable(bench_modadd_suite src/bench_modadd_suite.cpp)
target_link_libraries(bench_modadd_suite PRIVATE reist_mod)

add_executable(bench_poly_mod src/bench_poly_mod.cpp)
target_link_libraries(bench_poly_mod PRIVATE reist_mod)
