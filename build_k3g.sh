#Build script for G900H

#!/bin/bash
RDIR=$(pwd)
# GCC
export CROSS_COMPILE=/home/cnkzlyr/arm-eabi-4.8/bin/arm-eabi-
# Cleanup
make clean && make mrproper
# G900H Config
make lineage_k3gxx_defconfig
# Make zImage
make ARCH=arm -j8

echo G900H Kernel Done
