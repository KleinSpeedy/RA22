cmake -B build -S .
cmake --build build
<<<<<<< HEAD
mkdir -p obj
mkdir -p obj/obj_O1
mkdir -p obj/obj_O2
mkdir -p obj/obj_O3
mkdir -p obj/obj_g

cp ./build/CMakeFiles/rle_arr_O1.dir/*.c.o ./obj/obj_O1
cp ./build/CMakeFiles/rle_arr_O2.dir/*.c.o ./obj/obj_O2
cp ./build/CMakeFiles/rle_arr_O3.dir/*.c.o ./obj/obj_O3
cp ./build/CMakeFiles/rle_arr_g.dir/*.c.o ./obj/obj_g

#cp ./build/*.s ./obj
#cp ./build/*.i ./obj

objdump -d --source ./obj/obj_O1/rle_arr.c.o > ./obj/obj_O1/rle_O1.c.asm_c
objdump -d --source ./obj/obj_O2/rle_arr.c.o > ./obj/obj_O2/rle_O2.c.asm_c
objdump -d --source ./obj/obj_O3/rle_arr.c.o > ./obj/obj_O3/rle_O3.c.asm_c
objdump -d --source ./obj/obj_g/rle_arr.c.o > ./obj/obj_g/rle_g.c.asm_c
=======
mkdir -p obj_O2
mkdir -p obj_g
cp ./build/CMakeFiles/test_rle_O2.dir/*.c.o ./obj_O2
cp ./build/CMakeFiles/test_rle_g.dir/*.c.o ./obj_g
>>>>>>> 8b4736bcc111f78055ce2f357ffa35e59a500d95
