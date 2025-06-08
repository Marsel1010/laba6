#include <iostream>
#include "formatter_ex.h" // Подключаем заголовочный файл formatter_ex.h

int main() {
    // Используем функцию print_hello из formatter_ex_lib.
    // Эта функция сама заботится о выводе в std::cout и использует formatter.
    print_hello(std::cout, "World"); 

    return 0;
}
