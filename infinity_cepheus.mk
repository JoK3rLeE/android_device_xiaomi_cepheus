#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from cepheus device
$(call inherit-product, device/xiaomi/cepheus/device.mk)

# Infinity-X Specific Flags
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := "JoKeRLeE"
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_cepheus
PRODUCT_DEVICE := cepheus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cepheus-user 11 RKQ1.200826.002 V12.5.1.0.RFAMIXM release-keys" \
    BuildFingerprint=Xiaomi/cepheus/cepheus:11/RKQ1.200826.002/V12.5.1.0.RFAMIXM:user/release-keys
