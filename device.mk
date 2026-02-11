#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/huawei/marie

# FastbootD
PRODUCT_SHIPPING_API_LEVEL := 28


PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fastbootd.available=true \
    ro.boot.dynamic_partitions_retrofit=true \
    ro.boot.dynamic_partitions=true
