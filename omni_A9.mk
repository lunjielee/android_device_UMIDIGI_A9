#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from A9 device
$(call inherit-product, device/hxy/A9/device.mk)

PRODUCT_DEVICE := A9
PRODUCT_NAME := omni_A9
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := A9
PRODUCT_MANUFACTURER := hxy

PRODUCT_GMS_CLIENTID_BASE := android-sanmu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_g2039dpr_v2_gb_a9_ym_r-user 11 RP1A.200720.0112101211515release-keys"

BUILD_FINGERPRINT := UMIDIGI/A9/A9:11/RP1A.200720.011/2101211515:user/release-keys
