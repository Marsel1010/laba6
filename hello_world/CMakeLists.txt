cmake_minimum_required(VERSION 3.10)
project(HelloWorld)

# Создаем исполняемый файл 'hello_world' из main.cpp
add_executable(hello_world main.cpp)

# Линкуем 'hello_world' с библиотекой 'formatter_ex'.
# PRIVATE означает, что исполняемый файл 'hello_world' нуждается в 'formatter_ex' для своей работы,
# но 'formatter_ex' не становится транзитивной зависимостью для других проектов через 'hello_world'.
target_link_libraries(hello_world PRIVATE formatter_ex)

# ДОБАВЬТЕ ЭТУ СТРОКУ:
install(TARGETS hello_world DESTINATION bin)
