#include "calculator.h"
#include <stdexcept>

int Calculator::add(int a, int b) {
    return a + b;
}

int Calculator::sub(int a, int b) {
    return a - b;
}

int Calculator::mul(int a, int b) {
    return a * b;
}

double Calculator::div(int a, int b) {
    if (b == 0) {
        throw std::invalid_argument("Ділення на нуль неможливе!");
    }
    return static_cast<double>(a) / b;
}
