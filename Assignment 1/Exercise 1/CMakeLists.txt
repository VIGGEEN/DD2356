cmake_minimum_required(VERSION 3.10)
project(Exercise_1 C)

set(CMAKE_C_STANDARD 11)

add_executable(spmv spmv.c)

add_executable(stream stream.c)