#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pri6750_66_m device
$(call inherit-product, device/koobee/pri6750_66_m/device.mk)

PRODUCT_DEVICE := pri6750_66_m
PRODUCT_NAME := omni_pri6750_66_m
PRODUCT_BRAND := koobee
PRODUCT_MODEL := koobee S12
PRODUCT_MANUFACTURER := koobee

PRODUCT_GMS_CLIENTID_BASE := android-koobee

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_pri6750_66_m-user 6.0 MRA58K 1545907304 test-keys"

BUILD_FINGERPRINT := koobee/full_pri6750_66_m/pri6750_66_m:6.0/MRA58K/1545907304:user/test-keys
