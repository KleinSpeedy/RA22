cmake_minimum_required(VERSION 3.16)

project (rle NONE)

enable_language(C)
#enable_language(CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_VERBOSE_MAKEFILE OFF)
set(CMAKE_SYSTEM_NAME Linux)
#set(CMAKE_C_COMPILER clang)
#set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER gcc)
#set(CMAKE_CXX_COMPILER g++)

add_executable(rle_arr main.c rle_arr.c)
target_compile_options(rle_arr PRIVATE -Wall -save-temps)

add_executable(rle_arr_O1 main.c rle_arr.c)
target_compile_options(rle_arr_O1 PRIVATE -Wall -O1 -save-temps)

add_executable(rle_arr_O2 main.c rle_arr.c)
target_compile_options(rle_arr_O2 PRIVATE -Wall -O2 -save-temps)

add_executable(rle_arr_O3 main.c rle_arr.c)
target_compile_options(rle_arr_O3 PRIVATE -Wall -O3 -save-temps)

add_executable(rle_arr_g main.c rle_arr.c)
target_compile_options(rle_arr_g PRIVATE -Wall -O2 -g -save-temps)

#fuer ENABLE_LOCAL_MAIN gedacht:
#target_compile_options(rle_arr PRIVATE -Wall -O2)

#add_library(rle_arr_O1 OBJECT rle_arr.c)
#target_compile_options(rle_arr_O1 PRIVATE -Wall -O1 -save-temps)