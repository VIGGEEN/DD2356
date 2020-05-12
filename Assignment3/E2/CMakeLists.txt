cmake_minimum_required(VERSION 3.16)
project(E2)

set(CMAKE_C_COMPILER mpicc)
set(CMAKE_CXX_COMPILER mpic++)
set(CMAKE_CXX_STANDARD 17)

add_executable(SEQ pi_seq.cpp)
add_executable(blockinglinear blockinglinear.cpp)
add_executable(blockingbinary blockingbinary.cpp)