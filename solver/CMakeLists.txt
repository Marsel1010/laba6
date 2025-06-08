cmake_minimum_required(VERSION 3.10)
project(Solver)

# Создаем исполняемый файл 'solver' из main.cpp
add_executable(solver main.cpp)

# Линкуем 'solver' с библиотеками
target_link_libraries(solver PRIVATE formatter_ex solver_lib)

# Установка исполняемого файла в /bin
install(TARGETS solver DESTINATION bin)

# Опционально: установка README
install(FILES README.md DESTINATION . OPTIONAL)
