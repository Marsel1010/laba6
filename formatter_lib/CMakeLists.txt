# formatter_lib/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(FormatterLib)

# Создаём статическую библиотеку 'formatter'
add_library(formatter STATIC formatter.cpp)

# Указываем, где находятся заголовочные файлы для этой библиотеки
target_include_directories(formatter PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)
