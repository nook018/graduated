#!/bin/bash

filterDIR=Synthetic_Filter

echo "acl1_100";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/acl1_100.txt
	done
echo "acl1_1K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/acl1_1K.txt
	done
echo "acl1_5K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/acl1_5K.txt
	done
echo "acl1_10K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/acl1_10K.txt
	done
echo "fw1_100";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/fw1_100.txt
	done
echo "fw1_1K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/fw1_1K.txt
	done
echo "fw1_5K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/fw1_5K.txt
	done
echo "fw1_10K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/fw1_10K.txt
	done
echo "ipc1_100";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/ipc1_100.txt
	done
echo "ipc1_1K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/ipc1_1K.txt
	done
echo "ipc1_5K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/ipc1_5K.txt
	done
echo "ipc1_10K";
	for i in $(seq 1 30)
	do
	nice -20  ./a.out $filterDIR/ipc1_10K.txt
	done

g++ compare.cpp
./a.out 2 TCDA.txt Final_NEW.txt
