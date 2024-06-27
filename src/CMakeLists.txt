# Define a variable for the executable name
set(EXECUTABLE_NAME calc)

# Collect all source files
file(GLOB_RECURSE SRC_FILES ${PROJECT_SOURCE_DIR}/src/*.cpp)

# Create the executable
add_executable(${EXECUTABLE_NAME} ${SRC_FILES})

# Include directories
target_include_directories(${EXECUTABLE_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/include)
