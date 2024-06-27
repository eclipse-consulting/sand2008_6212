#!/bin/bash

# Ensure the script is run from the project root directory
PROJECT_ROOT="$(dirname "$0")/.."
cd "$PROJECT_ROOT" || exit 1

# Create the build directory if it does not exist
BUILD_DIR="build"
if [ ! -d "$BUILD_DIR" ]; then
  mkdir "$BUILD_DIR"
fi

# Run the CMake configuration and build process using Ninja and all available cores
cmake -B "$BUILD_DIR" -G Ninja
cmake --build "$BUILD_DIR" -- -j$(nproc)

# Run the tests
cd "$BUILD_DIR" || exit 1
ctest --output-on-failure
