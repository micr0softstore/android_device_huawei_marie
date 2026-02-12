#!/sbin/sh

echo "using emmc"
mkdir /dev/block/bootdevice
mkdir /dev/block/bootdevice/by-name
ln -sf /dev/block/platform/hi_mci.0/by-name/* /dev/block/bootdevice/by-name
