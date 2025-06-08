# lab3-4/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(Lab3 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(hello_world)
add_subdirectory(solver_lib)
add_subdirectory(solver)

# Указываем пути к заголовкам
target_include_directories(hello_world PRIVATE ${PROJECT_SOURCE_DIR}/formatter_ex_lib)
target_include_directories(solver PRIVATE ${PROJECT_SOURCE_DIR}/formatter_ex_lib)
target_include_directories(solver PRIVATE ${PROJECT_SOURCE_DIR}/solver_lib)

# Чтобы formatter_ex "знала", где её заголовки:
target_include_directories(formatter_ex PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/formatter_ex_lib>)

# Настройка CPack
set(CPACK_PROJECT_CONFIG_FILE "${PROJECT_SOURCE_DIR}/CPackConfig.cmake")
include(CPack)
