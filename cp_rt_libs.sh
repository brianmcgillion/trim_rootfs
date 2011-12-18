#!/bin/sh

# Copy the run time libraries for arm to the lib directory
# in our target rootfs

if [ -d /usr/arm-linux-gnueabi/lib/ ]; then
    sudo cp -v -r /usr/arm-linux-gnueabi/lib/* rootfs/lib
else
    echo ""
    echo "Library path not found"
    echo "Maybe try:"
    echo "apt-get install gcc-arm-linux-gnueabi"
    echo ""
fi