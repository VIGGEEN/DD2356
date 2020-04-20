cmake_minimum_required(VERSION 3.10)
project(Exercise_3)

set(CMAKE_CXX_STANDARD 17)

add_executable(benchmark benchmark.c)
add_executable(clockgranularity clockgranularity.c)
add_compile_options(benchmark "-O2")