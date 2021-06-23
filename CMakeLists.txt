cmake_minimum_required(VERSION 3.19)
project(cuda_by_example CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(cuda_by_example main.cu)

set_target_properties(
        cuda_by_example
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)