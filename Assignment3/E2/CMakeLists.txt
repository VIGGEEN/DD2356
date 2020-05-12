cmake_minimum_required(VERSION 3.16)
project(E2)

set(CMAKE_C_COMPILER mpicc)
set(CMAKE_CXX_COMPILER mpic++)
set(CMAKE_CXX_STANDARD 17)

add_executable(sequential sequential.cpp)
add_executable(blockinglinear blockinglinear.cpp)
add_executable(blockingbinary blockingbinary.cpp)
add_executable(nblockinglinear nblockinglinear.cpp)