cmake_minimum_required(VERSION 3.16)
project(Exercise_4)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenMP)

add_executable(Exercise_4 DFTW_1.cpp)

target_link_libraries(Exercise_4 PUBLIC OpenMP::OpenMP_CXX)