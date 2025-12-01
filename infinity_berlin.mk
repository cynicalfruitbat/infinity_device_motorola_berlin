#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from berlin device
$(call inherit-product, device/motorola/berlin/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_berlin
PRODUCT_DEVICE := berlin
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 20

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="berlin_global-user 13 T1RGS33.135-109-9-29 695e0-d4b251 release-keys" \
    BuildFingerprint=motorola/berlin_global/berlin:13/T1RGS33.135-109-9-29/695e0-d4b251:user/release-keys \
    DeviceProduct=berlin_retail

# Project Infinity X flags
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := "cynicalfruitbat"
TARGET_SUPPORTS_BLUR := true
TARGET_SHIPS_FULL_GAPPS := true
TARGET_SHIPS_GOOGLE_DIALER := true
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true