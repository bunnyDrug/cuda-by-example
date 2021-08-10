cmake_minimum_required(VERSION 3.19)
project(4.2.1 CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(gpu-vector-sum main.cu)

set_target_properties(
        gpu-vector-sum
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)