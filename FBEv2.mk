# Casefolding
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Spoofed Shipping API for FBEv2
  PRODUCT_SHIPPING_API_LEVEL := 30

# fscrypt policy
   TW_USE_FSCRYPT_POLICY := 2

# Props for a Successful Casefold Format 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2 \
    ro.crypto.volume.metadata.method=dm-default-key \
    ro.crypto.volume.options=::v2 

# Default FS type
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Prebuilt Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Fstab and flags
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/fstab/recovery-fbev2.fstab
PRODUCT_COPY_FILES += $(DEVICE_PATH)/fstab/twrp-fbev2.flags:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/twrp.flags
