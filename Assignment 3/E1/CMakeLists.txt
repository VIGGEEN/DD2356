cmake_minimum_required(VERSION 3.16)
project(E1)

set(CMAKE_C_COMPILER mpicc)
set(CMAKE_CXX_COMPILER mpic++)
set(CMAKE_CXX_STANDARD 17)

add_executable(E1 main.cpp)