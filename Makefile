# BombPatch - Football Tournament Simulator Makefile
# Author: Edmundo Neto (emalon)

# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -O2
DEBUG_FLAGS = -g -DDEBUG
RELEASE_FLAGS = -O2 -DNDEBUG

# Target executable
TARGET = bombpatch
SOURCE = src/bombpatch.c

# Default target
all: $(TARGET)

# Build release version
$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) $(RELEASE_FLAGS) -o $(TARGET) $(SOURCE)

# Build debug version
debug: $(SOURCE)
	$(CC) $(CFLAGS) $(DEBUG_FLAGS) -o $(TARGET)_debug $(SOURCE)

# Build for Windows
windows: $(SOURCE)
	$(CC) $(CFLAGS) $(RELEASE_FLAGS) -o $(TARGET).exe $(SOURCE)

# Clean build artifacts
clean:
	rm -f $(TARGET) $(TARGET)_debug $(TARGET).exe
	rm -rf $(TARGET).dSYM

# Install (copy to /usr/local/bin)
install: $(TARGET)
	cp $(TARGET) /usr/local/bin/

# Uninstall
uninstall:
	rm -f /usr/local/bin/$(TARGET)

# Run the program
run: $(TARGET)
	./$(TARGET)

# Run debug version
run-debug: debug
	./$(TARGET)_debug

# Check for memory leaks (requires valgrind)
memcheck: debug
	valgrind --leak-check=full --show-leak-kinds=all ./$(TARGET)_debug

# Format code (requires clang-format)
format:
	clang-format -i $(SOURCE)

# Static analysis (requires cppcheck)
analyze:
	cppcheck --enable=all --std=c99 $(SOURCE)

# Help
help:
	@echo "Available targets:"
	@echo "  all        - Build release version (default)"
	@echo "  debug      - Build debug version"
	@echo "  windows    - Build for Windows"
	@echo "  clean      - Remove build artifacts"
	@echo "  install    - Install to /usr/local/bin"
	@echo "  uninstall  - Remove from /usr/local/bin"
	@echo "  run        - Build and run the program"
	@echo "  run-debug  - Build debug version and run"
	@echo "  memcheck   - Run with valgrind memory check"
	@echo "  format     - Format source code"
	@echo "  analyze    - Run static analysis"
	@echo "  help       - Show this help message"

.PHONY: all debug windows clean install uninstall run run-debug memcheck format analyze help
