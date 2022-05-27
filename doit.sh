cmake -B build -S .
cmake --build build
mkdir -p obj
mkdir -p exe
mkdir -p obj/obj_O1
mkdir -p obj/obj_O2
mkdir -p obj/obj_O3
mkdir -p obj/obj_g
mkdir -p obj/obj_v2

cp ./build/rle_arr ./exe
cp ./build/rle_arr_c ./exe
cp ./build/rle_v2 ./exe

cp ./build/CMakeFiles/rle_arr_O1.dir/rle*.c.o ./obj/obj_O1
cp ./build/CMakeFiles/rle_arr_O2.dir/rle*.c.o ./obj/obj_O2
cp ./build/CMakeFiles/rle_arr_O3.dir/rle*.c.o ./obj/obj_O3
cp ./build/CMakeFiles/rle_arr_g.dir/rle*.c.o ./obj/obj_g
cp ./build/CMakeFiles/rle_v2.dir/rle*.c.o ./obj/obj_v2

objdump -d --source ./obj/obj_O1/rle_arr.c.o > ./obj/obj_O1/rle_O1.c.asm_c
objdump -d --source ./obj/obj_O2/rle_arr.c.o > ./obj/obj_O2/rle_O2.c.asm_c
objdump -d --source ./obj/obj_O3/rle_arr.c.o > ./obj/obj_O3/rle_O3.c.asm_c
objdump -d --source ./obj/obj_g/rle_arr.c.o > ./obj/obj_g/rle_g.c.asm_c
objdump -d --source ./obj/obj_v2/rle_v2.c.o > ./obj/obj_v2/rle_v2.c.asm_c