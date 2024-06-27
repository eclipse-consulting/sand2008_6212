# Define a variable for the library name
set(LIBRARY_NAME sand2008)

# Collect all source files for the library
file(GLOB_RECURSE LIB_SRC_FILES ${PROJECT_SOURCE_DIR}/src/lib/*.cpp)

# Create the library
add_library(${LIBRARY_NAME} STATIC ${LIB_SRC_FILES})

# Include directories for the library
target_include_directories(${LIBRARY_NAME}
    PRIVATE
        ${PROJECT_SOURCE_DIR}/include/${LIBRARY_NAME}
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Define a variable for the executable name
set(EXECUTABLE_NAME calc)

# Collect all source files for the executable
file(GLOB_RECURSE EXEC_SRC_FILES ${PROJECT_SOURCE_DIR}/src/*.cpp)
list(REMOVE_ITEM EXEC_SRC_FILES ${LIB_SRC_FILES}) # Exclude library sources

# Create the executable
add_executable(${EXECUTABLE_NAME} ${EXEC_SRC_FILES})

# Link the library to the executable
target_link_libraries(${EXECUTABLE_NAME} PRIVATE ${LIBRARY_NAME})

# Include directories for the executable
target_include_directories(${EXECUTABLE_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/include)
