#!/bin/bash

filterDIR=DB

echo "fw2_5K";
nice -20  ./rsfr CD $filterDIR/fw2_5K

echo "fw3_5K";
nice -20  ./rsfr CD $filterDIR/fw3_5K
echo "fw3_20K";
nice -20  ./rsfr CD $filterDIR/fw3_20K
