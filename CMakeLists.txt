cmake_minimum_required(VERSION 3.10)
project(sand2008)

set(CMAKE_CXX_STANDARD 17)

# Add source files
add_subdirectory(src)
add_subdirectory(tests)

# Include directories
include_directories(include)

# Add third-party libraries if necessary
add_subdirectory(third_party/catch2)

