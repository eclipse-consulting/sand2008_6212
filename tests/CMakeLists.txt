file(GLOB_RECURSE TEST_SRC_FILES *.cpp)

# Download and configure Catch2
include(FetchContent)
FetchContent_Declare(
  catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG v2.13.7 # Use the desired version
)
FetchContent_MakeAvailable(catch2)

# Add Catch2 library
add_library(Catch2 INTERFACE)
target_include_directories(Catch2 INTERFACE ${catch2_SOURCE_DIR}/single_include)

# Add the test executable
add_executable(YourProjectTests ${TEST_SRC_FILES})
target_link_libraries(YourProjectTests PRIVATE Catch2)
target_include_directories(YourProjectTests PRIVATE ../include)

# Add CTest support
include(CTest)
add_test(NAME YourProjectTests COMMAND YourProjectTests)


