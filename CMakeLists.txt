cmake_minimum_required(VERSION 3.17)
project(flakyTest C)

set(CMAKE_C_STANDARD 99)

add_library(flakyTest library.c library.h)