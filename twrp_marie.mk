#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from marie device
$(call inherit-product, device/huawei/marie/device.mk)

PRODUCT_DEVICE := marie
PRODUCT_NAME := twrp_marie
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := twrp_marie
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="generic_a15-user 9 PPR1.180610.011 eng.root.20190711.230804 test-keys"

BUILD_FINGERPRINT := Huawei/generic_a15/generic_a15:9/PPR1.180610.011/root201907112307:user/release-keys
