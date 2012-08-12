#!/bin/sh

echo Creating linpack binaries for Zynq-7000 EPP ...

arm-linux-gnueabi-gcc -DSP -DROLL -O4 -o linpack_sp_rolled_arm linpack.c -lm
arm-linux-gnueabi-gcc -DDP -DROLL -O4 -o linpack_dp_rolled_arm linpack.c -lm
arm-linux-gnueabi-gcc -DSP -DUNROLL -O4 -o linpack_sp_unrolled_arm linpack.c -lm
arm-linux-gnueabi-gcc -DDP -DUNROLL -O4 -o linpack_dp_unrolled_arm linpack.c -lm

echo ... Done
