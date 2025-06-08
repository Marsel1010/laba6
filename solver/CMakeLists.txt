
# lab3-4/solver/CMakeLists.txt

add_executable(solver main.cpp)

# Линкуемся с правильными целями: formatter, а не formatter_lib
target_link_libraries(solver PRIVATE formatter_ex formatter solver_lib)

# Установка исполняемого файла в /bin
install(TARGETS solver DESTINATION bin)

# Если хочешь, можно установить и README или другие файлы:
install(FILES README.md DESTINATION . OPTIONAL)
kk
