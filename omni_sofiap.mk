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

# Inherit from sofiap device
$(call inherit-product, device/motorola/sofiap/device.mk)

PRODUCT_DEVICE := sofiap
PRODUCT_NAME := omni_sofiap
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g stylus
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sofiap_t-user 11 RPRS31.Q1-56-9-15 36628 release-keys"

BUILD_FINGERPRINT := motorola/sofiap_t/sofiap:11/RPRS31.Q1-56-9-15/36628:user/release-keys
