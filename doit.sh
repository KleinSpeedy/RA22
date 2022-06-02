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
cp ./build/rle_v2 ./exe

cp ./build/rle_exe_O1 ./exe/exe_O1
cp ./build/rle_exe_O2 ./exe/exe_O2
cp ./build/rle_exe_O3 ./exe/exe_O3
cp ./build/rle_exe_g ./exe/exe_g

cp ./build/rle_v2_O1 ./exe/exe_O1
cp ./build/rle_v2_O2 ./exe/exe_O2
cp ./build/rle_v2_O3 ./exe/exe_O3
cp ./build/rle_v2_g ./exe/exe_g

cp ./build/CMakeFiles/rle_exe_O1.dir/rle*.c.o ./obj/obj_O1
cp ./build/CMakeFiles/rle_exe_O2.dir/rle*.c.o ./obj/obj_O2
cp ./build/CMakeFiles/rle_exe_O3.dir/rle*.c.o ./obj/obj_O3
cp ./build/CMakeFiles/rle_exe_g.dir/rle*.c.o ./obj/obj_g

cp ./build/CMakeFiles/rle_objv2_O1.dir/rle*.c.o ./obj/obj_O1
cp ./build/CMakeFiles/rle_objv2_O2.dir/rle*.c.o ./obj/obj_O2
cp ./build/CMakeFiles/rle_objv2_O3.dir/rle*.c.o ./obj/obj_O3
cp ./build/CMakeFiles/rle_objv2_g.dir/rle*.c.o ./obj/obj_g

#Copy for add_library
#cp ./build/CMakeFiles/rle_obj_O1.dir/rle*.c.o ./obj/obj_O1
#cp ./build/CMakeFiles/rle_obj_O2.dir/rle*.c.o ./obj/obj_O2
#cp ./build/CMakeFiles/rle_obj_O3.dir/rle*.c.o ./obj/obj_O3
#cp ./build/CMakeFiles/rle_obj_g.dir/rle*.c.o ./obj/obj_g

#cp ./build/CMakeFiles/rle_objv2_O1.dir/rle*.c.o ./obj/obj_O1
#cp ./build/CMakeFiles/rle_objv2_O2.dir/rle*.c.o ./obj/obj_O2
#cp ./build/CMakeFiles/rle_objv2_O3.dir/rle*.c.o ./obj/obj_O3
#cp ./build/CMakeFiles/rle_objv2_g.dir/rle*.c.o ./obj/obj_g

objdump -d --source ./obj/obj_O1/rle_arr.c.o > ./obj/obj_O1/rle_O1.c.asm_c
objdump -d --source ./obj/obj_O2/rle_arr.c.o > ./obj/obj_O2/rle_O2.c.asm_c
objdump -d --source ./obj/obj_O3/rle_arr.c.o > ./obj/obj_O3/rle_O3.c.asm_c
objdump -d --source ./obj/obj_g/rle_arr.c.o > ./obj/obj_g/rle_g.c.asm_c

objdump -d --source ./obj/obj_O1/rle_v2.c.o > ./obj/obj_O1/rle_v2_O1.c.asm_c
objdump -d --source ./obj/obj_O2/rle_v2.c.o > ./obj/obj_O2/rle_v2_O2.c.asm_c
objdump -d --source ./obj/obj_O3/rle_v2.c.o > ./obj/obj_O3/rle_v2_O3.c.asm_c
objdump -d --source ./obj/obj_g/rle_v2.c.o > ./obj/obj_g/rle_v2_g.c.asm_c