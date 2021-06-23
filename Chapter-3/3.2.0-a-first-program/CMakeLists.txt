cmake_minimum_required(VERSION 3.19)
project(3.2 CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(3.2 main.cu)

set_target_properties(
        3.2
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)