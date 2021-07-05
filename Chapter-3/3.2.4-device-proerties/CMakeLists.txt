cmake_minimum_required(VERSION 3.19)
project(3.2.4 CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(3.2.4 main.cu)

set_target_properties(
        3.2.4
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)