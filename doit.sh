cmake -B build -S .
cmake --build build
mkdir -p obj_O2
mkdir -p obj_g
cp ./build/CMakeFiles/rle_arr_O2.dir/*.c.o ./obj_O2
#cp ./build/*.s ./obj
#cp ./build/*.i ./obj

cp ./build/CMakeFiles/rle_arr_g.dir/*.c.o ./obj_g