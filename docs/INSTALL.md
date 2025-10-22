# Installation Guide

## Prerequisites

Before installing BombPatch, ensure you have the following:

- A C compiler (GCC, Clang, or MSVC)
- Terminal/Command Prompt access
- Git (for cloning the repository)

## Installation Methods

### Method 1: Using Make (Recommended)

```bash
# Clone the repository
git clone https://github.com/emal0n/bombpatch.git
cd bombpatch

# Build the project
make

# Run the program
make run
```

### Method 2: Manual Compilation

#### Linux/macOS
```bash
gcc -Wall -Wextra -std=c99 -O2 -o bombpatch src/bombpatch.c
./bombpatch
```

#### Windows
```cmd
gcc -Wall -Wextra -std=c99 -O2 -o bombpatch.exe src/bombpatch.c
bombpatch.exe
```

### Method 3: Debug Build

```bash
# Build debug version
make debug

# Run with debugging
make run-debug
```

## Installation Options

### System-wide Installation

```bash
# Install to /usr/local/bin (Linux/macOS)
make install

# Uninstall
make uninstall
```

### Windows Installation

For Windows, you can:
1. Copy the executable to a directory in your PATH
2. Create a desktop shortcut
3. Add the directory to your system PATH

## Troubleshooting

### Common Issues

1. **Compiler not found**
   - Install GCC: `sudo apt install gcc` (Ubuntu/Debian)
   - Install Xcode Command Line Tools (macOS)
   - Install MinGW-w64 (Windows)

2. **Permission denied**
   - Use `chmod +x bombpatch` to make executable executable
   - Check file permissions

3. **Missing dependencies**
   - Ensure you have a C99 compatible compiler
   - Check that all required headers are available

### Platform-Specific Notes

#### Linux
- Works with any modern Linux distribution
- Requires standard C library
- Tested on Ubuntu, Debian, Fedora

#### macOS
- Requires Xcode Command Line Tools
- Compatible with macOS 10.12+
- May generate .dSYM debug symbols

#### Windows
- Works with MinGW-w64, MSVC, or Clang
- Tested on Windows 10/11
- May require Visual C++ Redistributable

## Verification

After installation, verify the installation works:

```bash
# Check if executable exists
ls -la bombpatch

# Run a quick test
./bombpatch
```

The program should display the ASCII art logo and main menu.

## Uninstallation

To remove BombPatch:

```bash
# Remove executable
rm bombpatch

# Remove from system (if installed)
make uninstall
```

## Development Setup

For developers who want to contribute:

```bash
# Clone with submodules (if any)
git clone --recursive https://github.com/emal0n/bombpatch.git

# Build debug version
make debug

# Run static analysis
make analyze

# Format code
make format
```
