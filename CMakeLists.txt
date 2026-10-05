cmake_minimum_required(VERSION 3.10)
project(calculator LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(include)

add_library(calculator STATIC src/calculator.cpp)

add_executable(calculator_app src/main.cpp)
target_link_libraries(calculator_app PRIVATE calculator)
