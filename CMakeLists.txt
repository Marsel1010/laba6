cmake_minimum_required(VERSION 3.10)
project(Lab3 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Подключаем подкаталоги
add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(hello_world)
add_subdirectory(solver_lib)
add_subdirectory(solver)

# Настройки CPack
set(CPACK_PROJECT_CONFIG_FILE "${PROJECT_SOURCE_DIR}/CPackConfig.cmake")
include(CPack)
