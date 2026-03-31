#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/cepheus

# Assert
TARGET_OTA_ASSERT_DEVICE := cepheus

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/cepheus.config

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/prop/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/prop/vendor.prop

# Reserve space for gapps install
ifneq ($(WITH_GMS),true)
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_SYSTEM_EXTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 703718400
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 545259520
endif

# Inherit from the proprietary version
include vendor/xiaomi/cepheus/BoardConfigVendor.mk
