cmake_minimum_required(VERSION 3.16)
project(Exercise_5)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenMP)

add_executable(Exercise_5 main.cpp)

target_link_libraries(Exercise_5 PUBLIC OpenMP::OpenMP_CXX)