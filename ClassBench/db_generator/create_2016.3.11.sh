#!/bin/bash

filterDIR=../parameter_files

smoothness=2
address_scope=0.5
application_scope=-0.1

size1=1000
size2=5000
size3=10000
size4=20000
size5=30000

output=DB_2016.3.14_5

echo "acl1_1K"
./db_generator -bc $filterDIR/acl1_seed $size1 $smoothness $address_scope $application_scope $output/acl1_1K
echo "acl1_5K"
./db_generator -bc $filterDIR/acl1_seed $size2 $smoothness $address_scope $application_scope $output/acl1_5K
echo "acl1_10K"
./db_generator -bc $filterDIR/acl1_seed $size3 $smoothness $address_scope $application_scope $output/acl1_10K
echo "acl1_20K"
./db_generator -bc $filterDIR/acl1_seed $size4 $smoothness $address_scope $application_scope $output/acl1_20K
echo "acl1_30K"
./db_generator -bc $filterDIR/acl1_seed $size5 $smoothness $address_scope $application_scope $output/acl1_30K
echo "acl2_1K"
./db_generator -bc $filterDIR/acl2_seed $size1 $smoothness $address_scope $application_scope $output/acl2_1K
echo "acl2_5K"
./db_generator -bc $filterDIR/acl2_seed $size2 $smoothness $address_scope $application_scope $output/acl2_5K
echo "acl2_10K"
./db_generator -bc $filterDIR/acl2_seed $size3 $smoothness $address_scope $application_scope $output/acl2_10K
echo "acl2_20K"
./db_generator -bc $filterDIR/acl2_seed $size4 $smoothness $address_scope $application_scope $output/acl2_20K
echo "acl2_30K"
./db_generator -bc $filterDIR/acl2_seed $size5 $smoothness $address_scope $application_scope $output/acl2_30K
echo "acl3_1K"
./db_generator -bc $filterDIR/acl3_seed $size1 $smoothness $address_scope $application_scope $output/acl3_1K
echo "acl3_5K"
./db_generator -bc $filterDIR/acl3_seed $size2 $smoothness $address_scope $application_scope $output/acl3_5K
echo "acl3_10K"
./db_generator -bc $filterDIR/acl3_seed $size3 $smoothness $address_scope $application_scope $output/acl3_10K
echo "acl3_20K"
./db_generator -bc $filterDIR/acl3_seed $size4 $smoothness $address_scope $application_scope $output/acl3_20K
echo "acl3_30K"
./db_generator -bc $filterDIR/acl3_seed $size5 $smoothness $address_scope $application_scope $output/acl3_30K
echo "acl4_1K"
./db_generator -bc $filterDIR/acl4_seed $size1 $smoothness $address_scope $application_scope $output/acl4_1K
echo "acl4_5K"
./db_generator -bc $filterDIR/acl4_seed $size2 $smoothness $address_scope $application_scope $output/acl4_5K
echo "acl4_10K"
./db_generator -bc $filterDIR/acl4_seed $size3 $smoothness $address_scope $application_scope $output/acl4_10K
echo "acl4_20K"
./db_generator -bc $filterDIR/acl4_seed $size4 $smoothness $address_scope $application_scope $output/acl4_20K
echo "acl4_30K"
./db_generator -bc $filterDIR/acl4_seed $size5 $smoothness $address_scope $application_scope $output/acl4_30K
echo "acl5_1K"
./db_generator -bc $filterDIR/acl5_seed $size1 $smoothness $address_scope $application_scope $output/acl5_1K
echo "acl5_5K"
./db_generator -bc $filterDIR/acl5_seed $size2 $smoothness $address_scope $application_scope $output/acl5_5K
echo "acl5_10K"
./db_generator -bc $filterDIR/acl5_seed $size3 $smoothness $address_scope $application_scope $output/acl5_10K
echo "acl5_20K"
./db_generator -bc $filterDIR/acl5_seed $size4 $smoothness $address_scope $application_scope $output/acl5_20K
echo "acl5_30K"
./db_generator -bc $filterDIR/acl5_seed $size5 $smoothness $address_scope $application_scope $output/acl5_30K

echo "fw1_1K"
./db_generator -bc $filterDIR/fw1_seed $size1 $smoothness $address_scope $application_scope $output/fw1_1K
echo "fw1_5K"
./db_generator -bc $filterDIR/fw1_seed $size2 $smoothness $address_scope $application_scope $output/fw1_5K
echo "fw1_10K"
./db_generator -bc $filterDIR/fw1_seed $size3 $smoothness $address_scope $application_scope $output/fw1_10K
echo "fw1_20K"
./db_generator -bc $filterDIR/fw1_seed $size4 $smoothness $address_scope $application_scope $output/fw1_20K
echo "fw1_30K"
./db_generator -bc $filterDIR/fw1_seed $size5 $smoothness $address_scope $application_scope $output/fw1_30K
echo "fw2_1K"
./db_generator -bc $filterDIR/fw2_seed $size1 $smoothness $address_scope $application_scope $output/fw2_1K
echo "fw2_5K"
./db_generator -bc $filterDIR/fw2_seed $size2 $smoothness $address_scope $application_scope $output/fw2_5K
echo "fw2_10K"
./db_generator -bc $filterDIR/fw2_seed $size3 $smoothness $address_scope $application_scope $output/fw2_10K
echo "fw2_20K"
./db_generator -bc $filterDIR/fw2_seed $size4 $smoothness $address_scope $application_scope $output/fw2_20K
echo "fw2_30K"
./db_generator -bc $filterDIR/fw2_seed $size5 $smoothness $address_scope $application_scope $output/fw2_30K
echo "fw3_1K"
./db_generator -bc $filterDIR/fw3_seed $size1 $smoothness $address_scope $application_scope $output/fw3_1K
echo "fw3_5K"
./db_generator -bc $filterDIR/fw3_seed $size2 $smoothness $address_scope $application_scope $output/fw3_5K
echo "fw3_10K"
./db_generator -bc $filterDIR/fw3_seed $size3 $smoothness $address_scope $application_scope $output/fw3_10K
echo "fw3_20K"
./db_generator -bc $filterDIR/fw3_seed $size4 $smoothness $address_scope $application_scope $output/fw3_20K
echo "fw3_30K"
./db_generator -bc $filterDIR/fw3_seed $size5 $smoothness $address_scope $application_scope $output/fw3_30K
echo "fw4_1K"
./db_generator -bc $filterDIR/fw4_seed $size1 $smoothness $address_scope $application_scope $output/fw4_1K
echo "fw4_5K"
./db_generator -bc $filterDIR/fw4_seed $size2 $smoothness $address_scope $application_scope $output/fw4_5K
echo "fw4_10K"
./db_generator -bc $filterDIR/fw4_seed $size3 $smoothness $address_scope $application_scope $output/fw4_10K
echo "fw4_20K"
./db_generator -bc $filterDIR/fw4_seed $size4 $smoothness $address_scope $application_scope $output/fw4_20K
echo "fw4_30K"
./db_generator -bc $filterDIR/fw4_seed $size5 $smoothness $address_scope $application_scope $output/fw4_30K
echo "fw5_1K"
./db_generator -bc $filterDIR/fw5_seed $size1 $smoothness $address_scope $application_scope $output/fw5_1K
echo "fw5_5K"
./db_generator -bc $filterDIR/fw5_seed $size2 $smoothness $address_scope $application_scope $output/fw5_5K
echo "fw5_10K"
./db_generator -bc $filterDIR/fw5_seed $size3 $smoothness $address_scope $application_scope $output/fw5_10K
echo "fw5_20K"
./db_generator -bc $filterDIR/fw5_seed $size4 $smoothness $address_scope $application_scope $output/fw5_20K
echo "fw5_30K"
./db_generator -bc $filterDIR/fw5_seed $size5 $smoothness $address_scope $application_scope $output/fw5_30K

echo "ipc1_1K"
./db_generator -bc $filterDIR/ipc1_seed $size1 $smoothness $address_scope $application_scope $output/ipc1_1K
echo "ipc1_5K"
./db_generator -bc $filterDIR/ipc1_seed $size2 $smoothness $address_scope $application_scope $output/ipc1_5K
echo "ipc1_10K"
./db_generator -bc $filterDIR/ipc1_seed $size3 $smoothness $address_scope $application_scope $output/ipc1_10K
echo "ipc1_20K"
./db_generator -bc $filterDIR/ipc1_seed $size4 $smoothness $address_scope $application_scope $output/ipc1_20K
echo "ipc1_30K"
./db_generator -bc $filterDIR/ipc1_seed $size5 $smoothness $address_scope $application_scope $output/ipc1_30K
echo "ipc2_1K"
./db_generator -bc $filterDIR/ipc2_seed $size1 $smoothness $address_scope $application_scope $output/ipc2_1K
echo "ipc2_5K"
./db_generator -bc $filterDIR/ipc2_seed $size2 $smoothness $address_scope $application_scope $output/ipc2_5K
echo "ipc2_10K"
./db_generator -bc $filterDIR/ipc2_seed $size3 $smoothness $address_scope $application_scope $output/ipc2_10K
echo "ipc2_20K"
./db_generator -bc $filterDIR/ipc2_seed $size4 $smoothness $address_scope $application_scope $output/ipc2_20K
echo "ipc2_30K"
./db_generator -bc $filterDIR/ipc2_seed $size5 $smoothness $address_scope $application_scope $output/ipc2_30K
