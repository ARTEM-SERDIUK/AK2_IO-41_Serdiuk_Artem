#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    int a = 12;
    int b = 4;

    std::cout << "Calculator" << std::endl;
    std::cout << a << " + " << b << " = " << calc.add(a, b) << std::endl;
    std::cout << a << " - " << b << " = " << calc.sub(a, b) << std::endl;
    std::cout << a << " * " << b << " = " << calc.mul(a, b) << std::endl;
    std::cout << a << " / " << b << " = " << calc.div(a, b) << std::endl;

    return 0;
}
