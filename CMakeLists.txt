cmake_minimum_required(VERSION 3.10)
project(sand2008 VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Use Ninja as the default generator for better parallel builds
if(NOT CMAKE_GENERATOR)
    set(CMAKE_GENERATOR "Ninja")
endif()

# Enable parallel builds
if("${CMAKE_GENERATOR}" STREQUAL "Ninja")
    set(CMAKE_JOB_POOLS single=1)
    set(CMAKE_JOB_POOL_COMPILE single)
endif()

# Define project source and binary directories
set(PROJECT_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(PROJECT_BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR})

# Add source and test directories
add_subdirectory(src)
add_subdirectory(tests)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)

# Enable testing
enable_testing()
