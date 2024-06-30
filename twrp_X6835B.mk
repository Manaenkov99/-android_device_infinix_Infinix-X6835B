#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X6835B device
$(call inherit-product, device/infinix/X6835B/device.mk)

PRODUCT_DEVICE := X6835B
PRODUCT_NAME := twrp_X6835B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6835B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6835b_h6127-user 12 SP1A.210812.016 537949 release-keys"

BUILD_FINGERPRINT := Infinix/X6835B-GL/Infinix-X6835B:12/SP1A.210812.016/240204V1108:user/release-keys
