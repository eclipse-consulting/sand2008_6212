# Download and configure Catch2
include(FetchContent)
FetchContent_Declare(
  catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG v2.13.7 # Use the desired version
)
FetchContent_MakeAvailable(catch2)

# Define a variable for the test executable name
set(TEST_EXECUTABLE_NAME run_tests)

# Collect all test source files
file(GLOB_RECURSE TEST_SRC_FILES ${PROJECT_SOURCE_DIR}/tests/*.cpp)

# Create the test executable
add_executable(${TEST_EXECUTABLE_NAME} ${TEST_SRC_FILES})

# Link Catch2 and include directories
target_link_libraries(${TEST_EXECUTABLE_NAME} PRIVATE Catch2::Catch2 ${LIBRARY_NAME})
target_include_directories(${TEST_EXECUTABLE_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/include)

# Add CTest support
add_test(NAME ${TEST_EXECUTABLE_NAME} COMMAND ${TEST_EXECUTABLE_NAME})
