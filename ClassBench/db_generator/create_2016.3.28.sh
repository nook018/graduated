#!/bin/bash

size=15000
output=test/

echo "1"
./db_generator -bc ../parameter_files/acl1_seed $size 2 0.5 -0.1 $output""acl1_15K
echo "2"
./db_generator -bc ../parameter_files/acl2_seed $size 2 0.5 -0.1 $output""acl2_15K
echo "3"
./db_generator -bc ../parameter_files/acl3_seed $size 2 0.5 -0.1 $output""acl3_15K
echo "4"
./db_generator -bc ../parameter_files/acl4_seed $size 2 0.5 -0.1 $output""acl4_15K
echo "5"
./db_generator -bc ../parameter_files/acl5_seed $size 2 0.5 -0.1 $output""acl5_15K
echo "6" 
./db_generator -bc ../parameter_files/fw1_seed $size 2 0.5 -0.1 $output""fw1_15K
echo "7"
./db_generator -bc ../parameter_files/fw2_seed $size 2 0.5 -0.1 $output""fw2_15K
echo "8"
./db_generator -bc ../parameter_files/fw3_seed $size 2 0.5 -0.1 $output""fw3_15K
echo "9"
./db_generator -bc ../parameter_files/fw4_seed $size 2 0.5 -0.1 $output""fw4_15K
echo "10"
./db_generator -bc ../parameter_files/fw5_seed $size 2 0.5 -0.1 $output""fw5_15K
echo "11"
./db_generator -bc ../parameter_files/ipc1_seed $size 2 0.5 -0.1 $output""ipc1_15K
echo "12"
./db_generator -bc ../parameter_files/ipc2_seed $size 2 0.5 -0.1 $output""ipc2_15K
