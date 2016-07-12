#!/bin/bash

filterDIR=../parameter_files/ipc2_seed
size=30000
output=../DB/ipc2_30K
echo "1"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""1
echo "2"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""2
echo "3"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""3
echo "4"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""4
echo "5"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""5
echo "6" 
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""6
echo "7"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""7
echo "8"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""8
echo "9"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""9
echo "10"
./db_generator -bc $filterDIR $size 2 0.5 -0.1 $output""10
