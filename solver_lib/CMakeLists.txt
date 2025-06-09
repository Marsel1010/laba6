# ~/lab6/lab3-4/solver_lib/CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(SolverLib)

add_library(solver_lib STATIC solver_lib.cpp)

# ЭТО ОЧЕНЬ ВАЖНАЯ НОВАЯ СТРОКА:
# Указываем, где искать заголовочные файлы для тех, кто использует solver_lib.
# $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}> - для поиска во время сборки (в текущей директории).
# $<INSTALL_INTERFACE:include> - для поиска после установки (в '/usr/include').
target_include_directories(solver_lib PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

install(TARGETS solver_lib DESTINATION lib)
install(FILES solver_lib.h DESTINATION include)

