<<<<<<< HEAD
# lab3-4/formatter_ex_lib/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(FormatterExLib)

# Создаём статическую библиотеку 'formatter_ex'
add_library(formatter_ex STATIC formatter_ex.cpp)

# Линкуем с formatter (если formatter_ex использует его функции)
target_link_libraries(formatter_ex PUBLIC formatter)

# Указываем, где искать заголовочные файлы для этой библиотеки
=======
cmake_minimum_required(VERSION 3.10)
project(FormatterExLib)

# Создаем статическую библиотеку 'formatter_ex' из formatter_ex.cpp
add_library(formatter_ex STATIC formatter_ex.cpp)

# Линкуем 'formatter_ex' с 'formatter'.
# PRIVATE означает, что зависимость нужна только для внутренней сборки formatter_ex,
# но не для тех, кто будет линковаться с formatter_ex.
# PUBLIC означает, что зависимость 'formatter' также будет доступна для тех,
# кто линкуется с 'formatter_ex' (это правильнее, если formatter_ex.h использует типы из formatter.h).
target_link_libraries(formatter_ex PUBLIC formatter)

# Указываем публичные директории для заголовочных файлов 'formatter_ex'.
>>>>>>> 720e04f1f9b4691bdc8469a10af70a8bd070fe06
target_include_directories(formatter_ex PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)
<<<<<<< HEAD

# Если хотите явно указать, какие заголовочные файлы предоставляются:
set_target_properties(formatter_ex PROPERTIES
    PUBLIC_HEADER "formatter_ex.h"
)
=======
>>>>>>> 720e04f1f9b4691bdc8469a10af70a8bd070fe06
