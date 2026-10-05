CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11 -Iinclude
AR = ar
ARFLAGS = rcs

BUILD_DIR = build
LIB_NAME = $(BUILD_DIR)/libcalculator.a
TARGET = $(BUILD_DIR)/calculator_app

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(BUILD_DIR)/main.o $(LIB_NAME)
	$(CXX) $(BUILD_DIR)/main.o -L$(BUILD_DIR) -lcalculator -o $@

$(LIB_NAME): $(BUILD_DIR)/calculator.o
	$(AR) $(ARFLAGS) $@ $^

$(BUILD_DIR)/calculator.o: src/calculator.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD_DIR)/main.o: src/main.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -rf $(BUILD_DIR)
