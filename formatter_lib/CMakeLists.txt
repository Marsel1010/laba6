<<<<<<< HEAD
# formatter_lib/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(FormatterLib)

# Создаём статическую библиотеку 'formatter'
add_library(formatter STATIC formatter.cpp)

# Указываем, где находятся заголовочные файлы для этой библиотеки
target_include_directories(formatter PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
=======
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
>>>>>>> 720e04f1f9b4691bdc8469a10af70a8bd070fe06
)
