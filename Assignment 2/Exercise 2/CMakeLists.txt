cmake_minimum_required(VERSION 3.16)
project(Exercise_1)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenMP)

add_executable(Exercise_2 stream.cpp)

target_link_libraries(Exercise_2 PUBLIC OpenMP::OpenMP_CXX)