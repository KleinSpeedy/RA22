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

if [ $platform = pi ]
then
    echo "Raspberry Pi"
    mkdir -p ./stuff/perf/pi
    mkdir -p ./stuff/obj/pi/obj
    mkdir -p ./stuff/obj/pi/obj_O1
    mkdir -p ./stuff/obj/pi/obj_O2
    mkdir -p ./stuff/obj/pi/obj_O3
    mkdir -p ./stuff/obj/pi/obj_g

    perf_5.10 stat -o ./stuff/perf/pi/rle_pi.md -r 50 ./exe/rle_exe
    perf_5.10 stat -o ./stuff/perf/pi/rle_O1_pi.md -r 50 ./exe/rle_exe_O1
    perf_5.10 stat -o ./stuff/perf/pi/rle_O_pi.md -r 50 ./exe/rle_exe_O2
    perf_5.10 stat -o ./stuff/perf/pi/rle_O3_pi.md -r 50 ./exe/rle_exe_O3

    cp ./build/CMakeFiles/rle_exe.dir/rle*.c.o ./stuff/obj/pi/obj
    cp ./build/CMakeFiles/rle_exe_O1.dir/rle*.c.o ./stuff/obj/pi/obj_O1
    cp ./build/CMakeFiles/rle_exe_O2.dir/rle*.c.o ./stuff/obj/pi/obj_O2
    cp ./build/CMakeFiles/rle_exe_O3.dir/rle*.c.o ./stuff/obj/pi/obj_O3
    cp ./build/CMakeFiles/rle_exe_g.dir/rle*.c.o ./stuff/obj/pi/obj_g

    objdump -d --source ./stuff/obj/pi/obj/rle_arr.c.o > ./stuff/obj/pi/obj/rle_arr.c.asm_c
    objdump -d --source ./stuff/obj/pi/obj_O1/rle_arr.c.o > ./stuff/obj/pi/obj_O1/rle_arr_O1.c.asm_c
    objdump -d --source ./stuff/obj/pi/obj_O2/rle_arr.c.o > ./stuff/obj/pi/obj_O2/rle_arr_O2.c.asm_c
    objdump -d --source ./stuff/obj/pi/obj_O3/rle_arr.c.o > ./stuff/obj/pi/obj_O3/rle_arr_O3.c.asm_c
    objdump -d --source ./stuff/obj/pi/obj_g/rle_arr.c.o > ./stuff/obj/pi/obj_g/rle_arr_g.c.asm_c

    objdump -d --source ./stuff/obj/pi/obj/rle_unpack.c.o > ./stuff/obj/pi/obj/rle_unpack.c.asm_c
    objdump -d --source ./stuff/obj/pi/obj_O1/rle_unpack.c.o > ./stuff/obj/pi/obj_O1/rle_unpack_O1.c.asm_c
    objdump -d --source ./stuff/obj/pi/obj_O2/rle_unpack.c.o > ./stuff/obj/pi/obj_O2/rle_unpack_O2.c.asm_c
    objdump -d --source ./stuff/obj/pi/obj_O3/rle_unpack.c.o > ./stuff/obj/pi/obj_O3/rle_unpack_O3.c.asm_c
    objdump -d --source ./stuff/obj/pi/obj_g/rle_unpack.c.o > ./stuff/obj/pi/obj_g/rle_unpack_g.c.asm_c

elif [ $platform = ryzen ]
then
    echo "Ryzen"
    mkdir -p ./stuff/perf/ryzen
    mkdir -p ./stuff/obj/ryzen/obj
    mkdir -p ./stuff/obj/ryzen/obj_O1
    mkdir -p ./stuff/obj/ryzen/obj_O2
    mkdir -p ./stuff/obj/ryzen/obj_O3
    mkdir -p ./stuff/obj/ryzen/obj_g

    perf stat -o ./stuff/perf/ryzen/rle_rz.md -r 50 ./exe/rle_exe
    perf stat -o ./stuff/perf/ryzen/rle_O1_rz.md -r 50 ./exe/rle_exe_O1
    perf stat -o ./stuff/perf/ryzen/rle_O2_rz.md -r 50 ./exe/rle_exe_O2
    perf stat -o ./stuff/perf/ryzen/rle_O3_rz.md -r 50 ./exe/rle_exe_O3

    cp ./build/CMakeFiles/rle_exe.dir/rle*.c.o ./stuff/obj/ryzen/obj
    cp ./build/CMakeFiles/rle_exe_O1.dir/rle*.c.o ./stuff/obj/ryzen/obj_O1
    cp ./build/CMakeFiles/rle_exe_O2.dir/rle*.c.o ./stuff/obj/ryzen/obj_O2
    cp ./build/CMakeFiles/rle_exe_O3.dir/rle*.c.o ./stuff/obj/ryzen/obj_O3
    cp ./build/CMakeFiles/rle_exe_g.dir/rle*.c.o ./stuff/obj/ryzen/obj_g

    objdump -d --source ./stuff/obj/ryzen/obj/rle_arr.c.o > ./stuff/obj/ryzen/obj/rle_arr.c.asm_c
    objdump -d --source ./stuff/obj/ryzen/obj_O1/rle_arr.c.o > ./stuff/obj/ryzen/obj_O1/rle_arr_O1.c.asm_c
    objdump -d --source ./stuff/obj/ryzen/obj_O2/rle_arr.c.o > ./stuff/obj/ryzen/obj_O2/rle_arr_O2.c.asm_c
    objdump -d --source ./stuff/obj/ryzen/obj_O3/rle_arr.c.o > ./stuff/obj/ryzen/obj_O3/rle_arr_O3.c.asm_c
    objdump -d --source ./stuff/obj/ryzen/obj_g/rle_arr.c.o > .//stuff/obj/ryzen/obj_g/rle_arr_g.c.asm_c

    objdump -d --source ./stuff/obj/ryzen/obj/rle_unpack.c.o > ./stuff/obj/ryzen/obj/rle_unpack.c.asm_c
    objdump -d --source ./stuff/obj/ryzen/obj_O1/rle_unpack.c.o > ./stuff/obj/ryzen/obj_O1/rle_unpack_O1.c.asm_c
    objdump -d --source ./stuff/obj/ryzen/obj_O2/rle_unpack.c.o > ./stuff/obj/ryzen/obj_O2/rle_unpack_O2.c.asm_c
    objdump -d --source ./stuff/obj/ryzen/obj_O3/rle_unpack.c.o > ./stuff/obj/ryzen/obj_O3/rle_unpack_O3.c.asm_c
    objdump -d --source ./stuff/obj/ryzen/obj_g/rle_unpack.c.o > ./stuff/obj/ryzen/obj_g/rle_unpack_g.c.asm_c

elif [ $platform = athlon ]
then
    echo "Athlon"
    mkdir -p ./stuff/perf/athlon
    mkdir -p ./stuff/obj/athlon/obj
    mkdir -p ./stuff/obj/athlon/obj_O1
    mkdir -p ./stuff/obj/athlon/obj_O2
    mkdir -p ./stuff/obj/athlon/obj_O3
    mkdir -p ./stuff/obj/athlon/obj_g

    perf stat -o ./stuff/perf/athlon/rle_ath.md -r 50 ./exe/rle_exe
    perf stat -o ./stuff/perf/athlon/rle_O1_ath.md -r 50 ./exe/rle_exe_O1
    perf stat -o ./stuff/perf/athlon/rle_O2_ath.md -r 50 ./exe/rle_exe_O2
    perf stat -o ./stuff/perf/athlon/rle_O3_ath.md -r 50 ./exe/rle_exe_O3

    cp ./build/CMakeFiles/rle_exe.dir/rle*.c.o ./stuff/obj/athlon/obj
    cp ./build/CMakeFiles/rle_exe_O1.dir/rle*.c.o ./stuff/obj/athlon/obj_O1
    cp ./build/CMakeFiles/rle_exe_O2.dir/rle*.c.o ./stuff/obj/athlon/obj_O2
    cp ./build/CMakeFiles/rle_exe_O3.dir/rle*.c.o ./stuff/obj/athlon/obj_O3
    cp ./build/CMakeFiles/rle_exe_g.dir/rle*.c.o ./stuff/obj/athlon/obj_g

    objdump -d --source ./stuff/obj/athlon/obj/rle_arr.c.o > ./stuff/obj/athlon/obj/rle_arr.c.asm_c
    objdump -d --source ./stuff/obj/athlon/obj_O1/rle_arr.c.o > ./stuff/obj/athlon/obj_O1/rle_arr_O1.c.asm_c
    objdump -d --source ./stuff/obj/athlon/obj_O2/rle_arr.c.o > ./stuff/obj/athlon/obj_O2/rle_arr_O2.c.asm_c
    objdump -d --source ./stuff/obj/athlon/obj_O3/rle_arr.c.o > ./stuff/obj/athlon/obj_O3/rle_arr_O3.c.asm_c
    objdump -d --source ./stuff/obj/athlon/obj_g/rle_arr.c.o > .//stuff/obj/athlon/obj_g/rle_arr_g.c.asm_c

    objdump -d --source ./stuff/obj/athlon/obj/rle_unpack.c.o > ./stuff/obj/athlon/obj/rle_unpack.c.asm_c
    objdump -d --source ./stuff/obj/athlon/obj_O1/rle_unpack.c.o > ./stuff/obj/athlon/obj_O1/rle_unpack_O1.c.asm_c
    objdump -d --source ./stuff/obj/athlon/obj_O2/rle_unpack.c.o > ./stuff/obj/athlon/obj_O2/rle_unpack_O2.c.asm_c
    objdump -d --source ./stuff/obj/athlon/obj_O3/rle_unpack.c.o > ./stuff/obj/athlon/obj_O3/rle_unpack_O3.c.asm_c
    objdump -d --source ./stuff/obj/athlon/obj_g/rle_unpack.c.o > ./stuff/obj/athlon/obj_g/rle_unpack_g.c.asm_c

elif [ $platform = opteron ]
then
    echo "Opteron"
    mkdir -p ./stuff/perf/opteron
    mkdir -p ./stuff/obj/opteron/obj
    mkdir -p ./stuff/obj/opteron/obj_O1
    mkdir -p ./stuff/obj/opteron/obj_O2
    mkdir -p ./stuff/obj/opteron/obj_O3
    mkdir -p ./stuff/obj/opteron/obj_g

    perf stat -o ./stuff/perf/opteron/rle_opt.md -r 50 ./exe/rle_exe
    perf stat -o ./stuff/perf/opteron/rle_O1_opt.md -r 50 ./exe/rle_exe_O1
    perf stat -o ./stuff/perf/opteron/rle_O2_opt.md -r 50 ./exe/rle_exe_O2
    perf stat -o ./stuff/perf/opteron/rle_O3_opt.md -r 50 ./exe/rle_exe_O3

    cp ./build/CMakeFiles/rle_exe.dir/rle*.c.o ./stuff/obj/opteron/obj
    cp ./build/CMakeFiles/rle_exe_O1.dir/rle*.c.o ./stuff/obj/opteron/obj_O1
    cp ./build/CMakeFiles/rle_exe_O2.dir/rle*.c.o ./stuff/obj/opteron/obj_O2
    cp ./build/CMakeFiles/rle_exe_O3.dir/rle*.c.o ./stuff/obj/opteron/obj_O3
    cp ./build/CMakeFiles/rle_exe_g.dir/rle*.c.o ./stuff/obj/opteron/obj_g

    objdump -d --source ./stuff/obj/opteron/obj/rle_arr.c.o > ./stuff/obj/opteron/obj/rle_arr.c.asm_c
    objdump -d --source ./stuff/obj/opteron/obj_O1/rle_arr.c.o > ./stuff/obj/opteron/obj_O1/rle_arr_O1.c.asm_c
    objdump -d --source ./stuff/obj/opteron/obj_O2/rle_arr.c.o > ./stuff/obj/opteron/obj_O2/rle_arr_O2.c.asm_c
    objdump -d --source ./stuff/obj/opteron/obj_O3/rle_arr.c.o > ./stuff/obj/opteron/obj_O3/rle_arr_O3.c.asm_c
    objdump -d --source ./stuff/obj/opteron/obj_g/rle_arr.c.o > .//stuff/obj/opteron/obj_g/rle_arr_g.c.asm_c

    objdump -d --source ./stuff/obj/opteron/obj/rle_unpack.c.o > ./stuff/obj/opteron/obj/rle_unpack.c.asm_c
    objdump -d --source ./stuff/obj/opteron/obj_O1/rle_unpack.c.o > ./stuff/obj/opteron/obj_O1/rle_unpack_O1.c.asm_c
    objdump -d --source ./stuff/obj/opteron/obj_O2/rle_unpack.c.o > ./stuff/obj/opteron/obj_O2/rle_unpack_O2.c.asm_c
    objdump -d --source ./stuff/obj/opteron/obj_O3/rle_unpack.c.o > ./stuff/obj/opteron/obj_O3/rle_unpack_O3.c.asm_c
    objdump -d --source ./stuff/obj/opteron/obj_g/rle_unpack.c.o > ./stuff/obj/opteron/obj_g/rle_unpack_g.c.asm_c

fi