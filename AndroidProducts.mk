#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_lavender.mk \
    $(LOCAL_DIR)/lineage_lavender.mk \
    $(LOCAL_DIR)/xdroid_lavender.mk

COMMON_LUNCH_CHOICES := \
    aosp_lavender-user \
    aosp_lavender-userdebug \
    aosp_lavender-eng \
    lineage_lavender-user \
    lineage_lavender-userdebug \
    lineage_lavender-eng \
    xdroid_lavender-eng \
    xdroid_lavender-userdebug \
    xdroid_lavender-user
