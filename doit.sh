cmake -B build -S .
cmake --build build
mkdir -p obj
cp ./build/CMakeFiles/test_rle_arr.dir/*.c.o ./obj
cp ./build/*.s ./obj
cp ./build/*.i ./obj