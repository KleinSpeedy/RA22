#!/bin/bash

cmake -B build -S .
cmake --build build
mkdir -p obj
mkdir -p exe
mkdir -p obj/obj_O1
mkdir -p obj/obj_O2
mkdir -p obj/obj_O3
mkdir -p obj/obj_g

mkdir -p exe/exe_O1
mkdir -p exe/exe_O2
mkdir -p exe/exe_O3
mkdir -p exe/exe_g

#cp ./build/rle_arr_c ./exe
cp ./build/rle_exe ./exe

cp ./build/rle_exe_O1 ./exe/exe_O1
cp ./build/rle_exe_O2 ./exe/exe_O2
cp ./build/rle_exe_O3 ./exe/exe_O3
cp ./build/rle_exe_g ./exe/exe_g

cp ./build/CMakeFiles/rle_exe_O1.dir/rle*.c.o ./obj/obj_O1
cp ./build/CMakeFiles/rle_exe_O2.dir/rle*.c.o ./obj/obj_O2
cp ./build/CMakeFiles/rle_exe_O3.dir/rle*.c.o ./obj/obj_O3
cp ./build/CMakeFiles/rle_exe_g.dir/rle*.c.o ./obj/obj_g

#Copy for add_library
#cp ./build/CMakeFiles/rle_obj_O1.dir/rle*.c.o ./obj/obj_O1
#cp ./build/CMakeFiles/rle_obj_O2.dir/rle*.c.o ./obj/obj_O2
#cp ./build/CMakeFiles/rle_obj_O3.dir/rle*.c.o ./obj/obj_O3
#cp ./build/CMakeFiles/rle_obj_g.dir/rle*.c.o ./obj/obj_g

objdump -d --source ./obj/obj_O1/rle_arr.c.o > ./obj/obj_O1/rle_arr_O1.c.asm_c
objdump -d --source ./obj/obj_O2/rle_arr.c.o > ./obj/obj_O2/rle_arr_O2.c.asm_c
objdump -d --source ./obj/obj_O3/rle_arr.c.o > ./obj/obj_O3/rle_arr_O3.c.asm_c
objdump -d --source ./obj/obj_g/rle_arr.c.o > ./obj/obj_g/rle_arr_g.c.asm_c

objdump -d --source ./obj/obj_O1/rle_unpack.c.o > ./obj/obj_O1/rle_unpack_O1.c.asm_c
objdump -d --source ./obj/obj_O2/rle_unpack.c.o > ./obj/obj_O2/rle_unpack_O2.c.asm_c
objdump -d --source ./obj/obj_O3/rle_unpack.c.o > ./obj/obj_O3/rle_unpack_O3.c.asm_c
objdump -d --source ./obj/obj_g/rle_unpack.c.o > ./obj/obj_g/rle_unpack_g.c.asm_c

mkdir inCount
./counter.sh ./build/CMakeFiles/rle_exe.dir/rle_arr.c.s ./inCount/rle_default.csv
./counter.sh ./build/CMakeFiles/rle_exe_O1.dir/rle_arr.c.s ./inCount/rle_O1.csv
./counter.sh ./build/CMakeFiles/rle_exe_O2.dir/rle_arr.c.s ./inCount/rle_O2.csv
./counter.sh ./build/CMakeFiles/rle_exe_O3.dir/rle_arr.c.s ./inCount/rle_O3.csv

if [ $1 = pi ]
then
    echo "Raspberry Pi"
    mkdir ./perf/pi
    perf_5.10 stat -o ./perf/pi/rle_pi.md -r 50 ./exe/rle_exe
    perf_5.10 stat -o ./perf/pi/rle_O1_pi.md -r 50 ./exe/exe_O1/rle_exe_O1
    perf_5.10 stat -o ./perf/pi/rle_O_pi.md -r 50 ./exe/exe_O2/rle_exe_O2
    perf_5.10 stat -o ./perf/pi/rle_O3_pi.md -r 50 ./exe/exe_O3/rle_exe_O3

elif [ $1 = ryzen ]
then
    echo "Ryzen"
    mkdir ./perf/ryzen
    perf stat -o ./perf/ryzen/rle_rz.md -r 50 ./exe/rle_exe
    perf stat -o ./perf/ryzen/rle_O1_rz.md -r 50 ./exe/exe_O1/rle_exe_O1
    perf stat -o ./perf/ryzen/rle_O2_rz.md -r 50 ./exe/exe_O2/rle_exe_O2
    perf stat -o ./perf/ryzen/rle_O3_rz.md -r 50 ./exe/exe_O3/rle_exe_O3

elif [ $1 = athlon ]
then
    echo "Athlon"
    mkdir ./perf/athlon
    perf stat -o ./perf/athlon/rle_ath.md -r 50 ./exe/rle_exe
    perf stat -o ./perf/athlon/rle_O1_ath.md -r 50 ./exe/exe_O1/rle_exe_O1
    perf stat -o ./perf/athlon/rle_O2_ath.md -r 50 ./exe/exe_O2/rle_exe_O2
    perf stat -o ./perf/athlon/rle_O3_ath.md -r 50 ./exe/exe_O3/rle_exe_O3

elif [ $1 = opteron ]
then
    echo "Opteron"
    mkdir ./perf/opteron
    perf stat -o ./perf/opteron/rle_opt.md -r 50 ./exe/rle_exe
    perf stat -o ./perf/opteron/rle_O1_opt.md -r 50 ./exe/exe_O1/rle_exe_O1
    perf stat -o ./perf/opteron/rle_O2_opt.md -r 50 ./exe/exe_O2/rle_exe_O2
    perf stat -o ./perf/opteron/rle_O3_opt.md -r 50 ./exe/exe_O3/rle_exe_O3

fi

