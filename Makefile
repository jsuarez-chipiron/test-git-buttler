# Compiler and flags
CXX = clang++
CXXFLAGS = -Wall -std=c++23

# Output binary name
TARGET = main

# Source files
SRC = main.cpp

# Object files
OBJ = $(SRC:.cpp=.o)

# Default rule
all: $(TARGET)

# Rule to link the object files into the final executable
$(TARGET): $(OBJ)
	$(CXX) $(OBJ) -o $(TARGET)

# Rule to compile the .cpp files to .o
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up object files and executable
clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean
