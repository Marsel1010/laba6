cmake_minimum_required(VERSION 3.10)
project(FormatterLib)

# Создаем статическую библиотеку 'formatter' из formatter.cpp
add_library(formatter STATIC formatter.cpp)

# Указываем публичные директории для заголовочных файлов.
# Это позволяет другим проектам, которые линкуются с 'formatter',
# находить 'formatter.h' без явного добавления include_directories.
target_include_directories(formatter PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}> # Для сборки
    $<INSTALL_INTERFACE:include> # Для установки (если будет)
)
