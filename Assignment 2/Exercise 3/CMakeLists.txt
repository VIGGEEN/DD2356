cmake_minimum_required(VERSION 3.16)
project(Exercise_3)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenMP)

add_executable(Exercise_3 main.cpp)

target_link_libraries(Exercise_3 PUBLIC OpenMP::OpenMP_CXX)