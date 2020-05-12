cmake_minimum_required(VERSION 3.16)
project(E3)

set(CMAKE_C_COMPILER mpicc)
set(CMAKE_CXX_COMPILER mpic++)
set(CMAKE_CXX_STANDARD 17)

add_executable(E3 ping_pong.cpp)