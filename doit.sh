#!/bin/bash
platform=$1

cmake -B build -S .
cmake --build build

#Copy and dir for executables
mkdir -p exe

cp ./build/rle_exe ./exe
cp ./build/rle_exe_O1 ./exe
cp ./build/rle_exe_O2 ./exe
cp ./build/rle_exe_O3 ./exe
cp ./build/rle_exe_g ./exe

#Copy for add_library
#cp ./build/CMakeFiles/rle_obj_O1.dir/rle*.c.o ./stuff/obj/obj_O1
#cp ./build/CMakeFiles/rle_obj_O2.dir/rle*.c.o ./stuff/obj/obj_O2
#cp ./build/CMakeFiles/rle_obj_O3.dir/rle*.c.o ./stuff/obj/obj_O3
#cp ./build/CMakeFiles/rle_obj_g.dir/rle*.c.o ./stuff/obj/obj_g
mkdir -p ./temp/perf/ryzen
mkdir -p ./temp/obj/ryzen/obj
mkdir -p ./temp/obj/ryzen/obj_O1
mkdir -p ./temp/obj/ryzen/obj_O2
mkdir -p ./temp/obj/ryzen/obj_O3
mkdir -p ./temp/obj/ryzen/obj_g

cp ./build/CMakeFiles/rle_exe.dir/rle*.c.o ./temp/obj/ryzen/obj
cp ./build/CMakeFiles/rle_exe_O1.dir/rle*.c.o ./temp/obj/ryzen/obj_O1
cp ./build/CMakeFiles/rle_exe_O2.dir/rle*.c.o ./temp/obj/ryzen/obj_O2
cp ./build/CMakeFiles/rle_exe_O3.dir/rle*.c.o ./temp/obj/ryzen/obj_O3
cp ./build/CMakeFiles/rle_exe_g.dir/rle*.c.o ./temp/obj/ryzen/obj_g

objdump -d --source ./temp/obj/ryzen/obj/rle_arr.c.o > ./temp/obj/ryzen/obj/rle_arr.c.asm_c
objdump -d --source ./temp/obj/ryzen/obj_O1/rle_arr.c.o > ./temp/obj/ryzen/obj_O1/rle_arr_O1.c.asm_c
objdump -d --source ./temp/obj/ryzen/obj_O2/rle_arr.c.o > ./temp/obj/ryzen/obj_O2/rle_arr_O2.c.asm_c
objdump -d --source ./temp/obj/ryzen/obj_O3/rle_arr.c.o > ./temp/obj/ryzen/obj_O3/rle_arr_O3.c.asm_c
objdump -d --source ./temp/obj/ryzen/obj_g/rle_arr.c.o > .//temp/obj/ryzen/obj_g/rle_arr_g.c.asm_c

objdump -d --source ./temp/obj/ryzen/obj/rle_unpack.c.o > ./temp/obj/ryzen/obj/rle_unpack.c.asm_c
objdump -d --source ./temp/obj/ryzen/obj_O1/rle_unpack.c.o > ./temp/obj/ryzen/obj_O1/rle_unpack_O1.casm_c
objdump -d --source ./temp/obj/ryzen/obj_O2/rle_unpack.c.o > ./temp/obj/ryzen/obj_O2/rle_unpack_O2.casm_c
objdump -d --source ./temp/obj/ryzen/obj_O3/rle_unpack.c.o > ./temp/obj/ryzen/obj_O3/rle_unpack_O3.casm_c
objdump -d --source ./temp/obj/ryzen/obj_g/rle_unpack.c.o > ./temp/obj/ryzen/obj_g/rle_unpack_g.c.asm_c