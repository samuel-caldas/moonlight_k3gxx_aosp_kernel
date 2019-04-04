#Build script for G900H

#!/bin/bash
RDIR=$(pwd)
# GCC
export CROSS_COMPILE=/home/angelo/gcc-linaro-4.9/bin/arm-linux-gnueabi-
# Cleanup
make clean && make mrproper
# G900H Config
make lineage_k3gxx_defconfig
# Make zImage
make ARCH=arm -j4

echo G900H Kernel Done
