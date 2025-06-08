#include <iostream>
#include "formatter_ex.h" // Подключаем заголовочный файл formatter_ex.h
#include "formatter.h"    // Подключаем заголовочный файл formatter.h (для прямого использования formatter)
#include "solver_lib.h"   // Подключите заголовок вашей библиотеки solver_lib

int main() {
    std::cout << "Solver application started." << std::endl;

    // Пример использования функции из formatter_ex_lib (print_hello)
    print_hello(std::cout, "Problem solution process");

    // Пример прямого использования функции formatter из formatter_lib
    std::string formatted_message_direct = formatter("Step 1: Analyzing data...");
    std::cout << formatted_message_direct << std::endl;

    // Вызов функции из solver_lib
    // Убедитесь, что файл solver_lib.h существует и объявляет функцию solve(),
    // а также что solver_lib.cpp содержит ее реализацию.
    // Кроме того, CMake должен быть настроен для сборки и линковки solver_lib.
    solve(); // Предположим, что у вас есть функция solve() в solver_lib

    std::cout << "Solver application finished." << std::endl;
    return 0;
}
