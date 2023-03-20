# CMake Required version
cmake_minimum_required(VERSION 3.25)

# Project Name
project(libAlgorithm CXX)

# C++ Standard
set(CMAKE_CXX_STANDARD 23)

# GREP the src files
file(GLOB_RECURSE SRC_FILES src/*.cc)

# GREP the include files
file(GLOB_RECURSE INC_FILES include/*.hh)

# GREP the tcc files
file(GLOB_RECURSE TCC_FILES template/*.tcc)

# Create the library
add_library(${PROJECT_NAME} STATIC ${SRC_FILES} ${INC_FILES} ${TCC_FILES})