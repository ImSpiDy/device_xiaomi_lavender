#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/arrow_lavender.mk \
    $(LOCAL_DIR)/derp_lavender.mk \
    $(LOCAL_DIR)/voltage_lavender.mk \
    $(LOCAL_DIR)/banana_lavender.mk

COMMON_LUNCH_CHOICES := \
    arrow_lavender-user \
    arrow_lavender-userdebug \
    arrow_lavender-eng \
    derp_lavender-user \
    derp_lavender-userdebug \
    derp_lavender-eng \
    voltage_lavender-user \
    voltage_lavender-userdebug \
    voltage_lavender-eng \
    banana_lavender-user \
    banana_lavender-userdebug \
    banana_lavender-eng
