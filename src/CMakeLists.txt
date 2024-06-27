file(GLOB_RECURSE SRC_FILES *.cpp)

add_executable(YourExecutableName ${SRC_FILES})
target_include_directories(YourExecutableName PRIVATE ../include)

