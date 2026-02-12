#!/sbin/sh

echo "using emmc"
mkdir /dev/block/bootdevice
mkdir /dev/block/bootdevice/by-name
ln -sf /dev/block/platform/hi_mci.0/by-name/* /dev/block/bootdevice/by-name
echo "removing real blocks used by retrofit dynamic"
rm -rf /dev/block/bootdevice/by-name/system
rm -rf /dev/block/bootdevice/by-name/vendor
rm -rf /dev/block/bootdevice/by-name/product
rm -rf /dev/block/bootdevice/by-name/odm
rm -rf /dev/block/bootdevice/by-name/cust
rm -rf /dev/block/bootdevice/by-name/eng_system
rm -rf /dev/block/bootdevice/by-name/eng_vendor
rm -rf /dev/block/bootdevice/by-name/patch
rm -rf /dev/block/bootdevice/by-name/preas
rm -rf /dev/block/bootdevice/by-name/preavs
echo "linking real dynamic partitions"
ln -sf /dev/block/mapper/* /dev/block/bootdevice/by-name
