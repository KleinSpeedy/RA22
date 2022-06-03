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

add_executable(rle_exe main.c rle_arr.c rle_unpack.c)
target_compile_options(rle_exe PRIVATE -Wall -save-temps)

#add_executable(rle_v2 rle_v2.c)
#target_compile_options(rle_v2 PRIVATE -Wall -D ENABLE_LOCAL_MAIN -save-temps)
#add_executable(rle_arr_c rle_arr.c)
#target_compile_options(rle_arr_c PRIVATE -Wall -D ENABLE_LOCAL_MAIN)

#optimized exe for version 1
add_executable(rle_exe_O1 main.c rle_arr.c rle_unpack.c)
target_compile_options(rle_exe_O1 PRIVATE -Wall -O1)
add_executable(rle_exe_O2 main.c rle_arr.c rle_unpack.c)
target_compile_options(rle_exe_O2 PRIVATE -Wall -O2)
add_executable(rle_exe_O3 main.c rle_arr.c rle_unpack.c)
target_compile_options(rle_exe_O3 PRIVATE -Wall -O3)
add_executable(rle_exe_g main.c rle_arr.c rle_unpack.c)
target_compile_options(rle_exe_g PRIVATE -Wall -g)

#optimized exe for version 2
#add_executable(rle_v2_O1 rle_v2.c)
#target_compile_options(rle_v2_O1 PRIVATE -Wall -D ENABLE_LOCAL_MAIN -O1)
#add_executable(rle_v2_O2 rle_v2.c)
#target_compile_options(rle_v2_O2 PRIVATE -Wall -D ENABLE_LOCAL_MAIN -O2)
#add_executable(rle_v2_O3 rle_v2.c)
#target_compile_options(rle_v2_O3 PRIVATE -Wall -D ENABLE_LOCAL_MAIN -O3)
#add_executable(rle_v2_g rle_v2.c)
#target_compile_options(rle_v2_g PRIVATE -Wall -D ENABLE_LOCAL_MAIN -g)

#Object Files for version 1
#add_library(rle_obj_O1 OBJECT rle_arr.c)
#target_compile_options(rle_obj_O1 PRIVATE -Wall -O1 -save-temps)
#add_library(rle_obj_O2 OBJECT rle_arr.c)
#target_compile_options(rle_obj_O2 PRIVATE -Wall -O2 -save-temps)
#add_library(rle_obj_O3 OBJECT rle_arr.c)
#target_compile_options(rle_obj_O3 PRIVATE -Wall -O3 -save-temps)
#add_library(rle_obj_g OBJECT rle_arr.c)
#target_compile_options(rle_obj_g PRIVATE -Wall -g -O1 -save-temps)

#Object files for version 2
#add_library(rle_objv2_O1 OBJECT rle_v2.c)
#target_compile_options(rle_objv2_O1 PRIVATE -Wall -O1 -save-temps)
#add_library(rle_objv2_O2 OBJECT rle_v2.c)
#target_compile_options(rle_objv2_O2 PRIVATE -Wall -O2 -save-temps)
#add_library(rle_objv2_O3 OBJECT rle_v2.c)
#target_compile_options(rle_objv2_O3 PRIVATE -Wall -O3 -save-temps)
#add_library(rle_objv2_g OBJECT rle_v2.c)
#target_compile_options(rle_objv2_g PRIVATE -Wall -g -O1 -save-temps)