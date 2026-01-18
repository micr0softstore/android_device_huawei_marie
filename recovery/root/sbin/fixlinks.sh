#!/sbin/sh

echo "Linking mountpoints to /dev/block/bootdevice"
mkdir /dev/block/bootdevice
ln -sf /dev/block/platform/hi_mci.0/* /dev/block/bootdevice
rm -rf /dev/block/bootdevice/by-name
mkdir /dev/block/bootdevice/by-name
ln -sf /dev/block/platform/hi_mci.0/by-name/* /dev/block/bootdevice/by-name

