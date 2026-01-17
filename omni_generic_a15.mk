#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from generic_a15 device
$(call inherit-product, device/huawei/generic_a15/device.mk)

PRODUCT_DEVICE := generic_a15
PRODUCT_NAME := omni_generic_a15
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := generic_a15
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="generic_a15-user 9 PPR1.180610.011 eng.root.20190711.230804 test-keys"

BUILD_FINGERPRINT := Huawei/generic_a15/generic_a15:9/PPR1.180610.011/root201907112307:user/release-keys
