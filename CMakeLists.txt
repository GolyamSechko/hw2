cmake_minimum_required(VERSION 3.10.2)

project(home_work)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

add_library(hw_lib SHARED ${PROJECT_SOURCE_DIR}/hw.cpp)
add_executable(hw_exe ${PROJECT_SOURCE_DIR}/main.cpp)

target_link_libraries(hw_exe hw_lib)

