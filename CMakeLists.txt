cmake_minimum_required(VERSION 3.10)

project(link11_project)

# set the build type
set(CMAKE_BUILD_TYPE Debug)

# Add compiler options for debugging
add_compile_options(-g)
add_executable(Link11 main.cpp src/encode_hamming.cpp src/mod_dqpsk.cpp src/files_opration.cpp src/doppler_correction.cpp)
