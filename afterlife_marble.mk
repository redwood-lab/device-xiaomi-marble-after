#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common afterlife stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

# AfterLife flags
AFTERLIFE_MAINTAINER := JYR_RC-SuperXorn
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
AFTERLIFE_GAPPS := true

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := afterlife_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
