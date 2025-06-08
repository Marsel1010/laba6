<<<<<<< HEAD
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
set(CPACK_PROJECT_CONFIG_FILE "${PROJECT_SOURCE_DIR}/CPackConfig.cmake")
# Установка целей для CPack
include(CPack)

=======
cmake_minimum_required(VERSION 3.10) # Минимальная требуемая версия CMake

project(Lab3 LANGUAGES CXX) # Объявляем проект и указываем язык C++

# Установка стандарта C++ (например, C++17)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_POSITION_INDEPENDENT_CODE ON) # Важно для общих библиотек

# Добавляем подкаталоги с библиотеками
add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)

# Добавляем подкаталоги с приложениями
add_subdirectory(hello_world)
add_subdirectory(solver_lib)
add_subdirectory(solver)
>>>>>>> 720e04f1f9b4691bdc8469a10af70a8bd070fe06
