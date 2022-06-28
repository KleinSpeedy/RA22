#!/bin/bash
platform=$1

./doit.sh
mkdir -p temp

if [ $platform = ryzen ]
then
    echo $platform
    mkdir -p ./temp/O0
    mkdir -p ./temp/O1
    mkdir -p ./temp/O2
    mkdir -p ./temp/O3

    cd ./temp/O0
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O0 -save-temps
    cd ../O1
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O1 -save-temps
    cd ../O2
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O2 -save-temps
    cd ../O3
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O3 -save-temps
    cd ../../
    pwd

    mkdir -p ./stuff/inCount/ryzen
    ./counter.sh ./temp/O0/*_arr.s ./stuff/inCount/ryzen/ryzen_arr_O0.csv
    ./counter.sh ./temp/O1/*_arr.s ./stuff/inCount/ryzen/ryzen_arr_O1.csv
    ./counter.sh ./temp/O2/*_arr.s ./stuff/inCount/ryzen/ryzen_arr_O2.csv
    ./counter.sh ./temp/O3/*_arr.s ./stuff/inCount/ryzen/ryzen_arr_O3.csv

    ./counter.sh ./temp/O0/*_unpack.s ./stuff/inCount/ryzen/ryzen_unpack_O0.csv
    ./counter.sh ./temp/O1/*_unpack.s ./stuff/inCount/ryzen/ryzen_unpack_O1.csv
    ./counter.sh ./temp/O2/*_unpack.s ./stuff/inCount/ryzen/ryzen_unpack_O2.csv
    ./counter.sh ./temp/O3/*_unpack.s ./stuff/inCount/ryzen/ryzen_unpack_O3.csv 

elif [ $platform = opteron ]
then
    echo $platform
    mkdir -p ./temp/O0
    mkdir -p ./temp/O1
    mkdir -p ./temp/O2
    mkdir -p ./temp/O3

    cd ./temp/O0
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O0 -save-temps
    cd ../O1
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O1 -save-temps
    cd ../O2
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O2 -save-temps
    cd ../O3
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O3 -save-temps
    cd ../../

    mkdir -p ./stuff/inCount/opteron
    ./counter.sh ./temp/O0/*_arr.s ./stuff/inCount/opteron/opteron_arr_O0.csv
    ./counter.sh ./temp/O1/*_arr.s ./stuff/inCount/opteron/opteron_arr_O1.csv
    ./counter.sh ./temp/O2/*_arr.s ./stuff/inCount/opteron/opteron_arr_O2.csv
    ./counter.sh ./temp/O3/*_arr.s ./stuff/inCount/opteron/opteron_arr_O3.csv

    ./counter.sh ./temp/O0/*_unpack.s ./stuff/inCount/opteron/opteron_unpack_O0.csv
    ./counter.sh ./temp/O1/*_unpack.s ./stuff/inCount/opteron/opteron_unpack_O1.csv
    ./counter.sh ./temp/O2/*_unpack.s ./stuff/inCount/opteron/opteron_unpack_O2.csv
    ./counter.sh ./temp/O3/*_unpack.s ./stuff/inCount/opteron/opteron_unpack_O3.csv

elif [ $platform = athlon ]
then
    echo $platform
    mkdir -p ./temp/O0
    mkdir -p ./temp/O1
    mkdir -p ./temp/O2
    mkdir -p ./temp/O3

    cd ./temp/O0
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O0 -save-temps
    cd ../O1
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O1 -save-temps
    cd ../O2
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O2 -save-temps
    cd ../O3
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O3 -save-temps
    cd ../../

    mkdir -p ./stuff/inCount/athlon
    ./counter.sh ./temp/O0/*_arr.s ./stuff/inCount/athlon/athlon_arr_O0.csv
    ./counter.sh ./temp/O1/*_arr.s ./stuff/inCount/athlon/athlon_arr_O1.csv
    ./counter.sh ./temp/O2/*_arr.s ./stuff/inCount/athlon/athlon_arr_O2.csv
    ./counter.sh ./temp/O3/*_arr.s ./stuff/inCount/athlon/athlon_arr_O3.csv

    ./counter.sh ./temp/O0/*_unpack.s ./stuff/inCount/athlon/athlon_unpack_O0.csv
    ./counter.sh ./temp/O1/*_unpack.s ./stuff/inCount/athlon/athlon_unpack_O1.csv
    ./counter.sh ./temp/O2/*_unpack.s ./stuff/inCount/athlon/athlon_unpack_O2.csv
    ./counter.sh ./temp/O3/*_unpack.s ./stuff/inCount/athlon/athlon_unpack_O3.csv

elif [ $platform = pi ]
then
    echo $platform
    mkdir -p ./temp/O0
    mkdir -p ./temp/O1
    mkdir -p ./temp/O2
    mkdir -p ./temp/O3

    cd ./temp/O0
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O0 -save-temps
    cd ../O1
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O1 -save-temps
    cd ../O2
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O2 -save-temps
    cd ../O3
    gcc ../../main.c ../../rle_arr.c ../../rle_unpack.c -Wall -O3 -save-temps
    cd ../../

    mkdir -p ./stuff/inCount/pi
    ./counter.sh ./temp/O0/*_arr.s ./stuff/inCount/pi/pi_arr_O0.csv
    ./counter.sh ./temp/O1/*_arr.s ./stuff/inCount/pi/pi_arr_O1.csv
    ./counter.sh ./temp/O2/*_arr.s ./stuff/inCount/pi/pi_arr_O2.csv
    ./counter.sh ./temp/O3/*_arr.s ./stuff/inCount/pi/pi_arr_O3.csv

    ./counter.sh ./temp/O0/*_unpack.s ./stuff/inCount/pi/pi_unpack_O0.csv
    ./counter.sh ./temp/O1/*_unpack.s ./stuff/inCount/pi/pi_unpack_O1.csv
    ./counter.sh ./temp/O2/*_unpack.s ./stuff/inCount/pi/pi_unpack_O2.csv
    ./counter.sh ./temp/O3/*_unpack.s ./stuff/inCount/pi/pi_unpack_O3.csv

fi

./clean.sh