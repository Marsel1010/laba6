#include "formatter_ex.h"
#include "formatter.h"  // Зависимость от formatter

void print_hello(std::ostream& os, const std::string& message) {
    os << formatter("Hello, " + message + "!");  // Используем функцию из formatter
}
