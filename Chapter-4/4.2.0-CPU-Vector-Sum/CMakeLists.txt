cmake_minimum_required(VERSION 3.19)
project(4.2.0 CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(cpu-vector-sum main.cu)

set_target_properties(
        cpu-vector-sum
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)