cmake_minimum_required(VERSION 3.4...3.18)
project(cmake_example)

add_subdirectory(thirdparty)
pybind11_add_module(cmake_example src/cmake_example.cpp)

# EXAMPLE_VERSION_INFO is defined by setup.py and passed into the C++ code as a
# define (VERSION_INFO) here.
set(EXAMPLE_VERSION_INFO 1.1.1)
target_compile_definitions(cmake_example
                           PRIVATE VERSION_INFO=${EXAMPLE_VERSION_INFO})
