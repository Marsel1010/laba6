cmake_minimum_required(VERSION 3.10)
project(FormatterExLib)

# Создаем статическую библиотеку 'formatter_ex' из formatter_ex.cpp
add_library(formatter_ex STATIC formatter_ex.cpp)

# Линкуем 'formatter_ex' с 'formatter'.
target_link_libraries(formatter_ex PUBLIC formatter)

# Указываем публичные директории для заголовочных файлов 'formatter_ex'.
target_include_directories(formatter_ex PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

# Если хотите явно указать, какие заголовочные файлы предоставляются:
set_target_properties(formatter_ex PROPERTIES
    PUBLIC_HEADER "formatter_ex.h"
)
