#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Arcana stuff
$(call inherit-product, vendor/aosp/common.mk)

# maintainer flag
ARCANA_MAINTAINER := wHo_EM_i

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# prebuilt graphene camera flag, default is false
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# UDFPS ICONS/ANIMATIONS
EXTRA_UDFPS_ANIMATIONS := false

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := false

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Bloom and Living Universe Pixel Wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Pixel Now playing feature
TARGET_SUPPORTS_NOW_PLAYING := false

# Pixel charger animation
USE_PIXEL_CHARGER_IMAGES := true

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_lavender
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.5.3.0.QFGCNXM release-keys"

BUILD_FINGERPRINT := xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.5.3.0.QFGCNXM:user/release-keys
