cmake -B build -S .
cmake --build build
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
