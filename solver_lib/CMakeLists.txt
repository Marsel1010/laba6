# lab3/solver_lib/CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(SolverLib)

add_library(solver_lib STATIC solver_lib.cpp)

target_include_directories(solver_lib PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)
