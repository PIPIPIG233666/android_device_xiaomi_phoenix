#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/phoenix

# Display density
TARGET_SCREEN_DENSITY := 440

# Inherit from sm6150-common
-include device/xiaomi/sm6150-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := phoenix,phoenixin

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_phoenix
TARGET_RECOVERY_DEVICE_MODULES := libinit_phoenix

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_KERNEL_CONFIG := vendor/lineage_phoenix_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114934394880
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := 16384
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
BOARD_USES_METADATA_PARTITION := true

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
-include vendor/xiaomi/phoenix/BoardConfigVendor.mk
