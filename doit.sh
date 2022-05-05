cmake -B build -S .
cmake --build build
mkdir -p obj_O2
mkdir -p obj_g
cp ./build/CMakeFiles/test_rle_O2.dir/*.c.o ./obj_O2
cp ./build/CMakeFiles/test_rle_g.dir/*.c.o ./obj_g
