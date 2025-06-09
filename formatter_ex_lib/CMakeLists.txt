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

# Это не строго обязательно, но полезно для современных IDE
set_target_properties(formatter_ex PROPERTIES
    PUBLIC_HEADER "formatter_ex.h"
)

# ДОБАВЬТЕ ЭТИ СТРОКИ:
install(TARGETS formatter_ex DESTINATION lib)
install(FILES formatter_ex.h DESTINATION include)
