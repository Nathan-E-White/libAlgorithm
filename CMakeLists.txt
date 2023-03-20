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