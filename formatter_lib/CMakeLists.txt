cmake_minimum_required(VERSION 3.10)
project(FormatterLib)

# Создаем статическую библиотеку 'formatter' из formatter.cpp
add_library(formatter STATIC formatter.cpp)

# Указываем публичные директории для заголовочных файлов
target_include_directories(formatter PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)
