# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/mecha/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := mecha

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

#Audio related defines
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true

#Use stock libril for now
TARGET_PROVIDES_LIBRIL := vendor/htc/mecha/proprietary/libril.so

#Bluetooth Defines
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_EGL_CFG := device/htc/mecha/egl.cfg

BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true

#Board FM radio defines
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true

# AMSS version to use for GPS
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mecha
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Use RGB565 surfaces until userspace drivers are upgraded
BOARD_NO_RGBX_8888 := true

# Use PMEM for gralloc
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_LIBS := true

# cat /proc/emmc
# dev:        size     erasesize name
# mmcblk0p17: 00040000 00000200 "misc"
# mmcblk0p21: 0087f400 00000200 "recovery"
# mmcblk0p22: 00400000 00000200 "boot"
# mmcblk0p25: 35dffe00 00000200 "system"
# mmcblk0p28: 001ffe00 00000200 "local"
# mmcblk0p27: 1b4ffc00 00000200 "cache"
# mmcblk0p26: a7c00000 00000200 "userdata"
# mmcblk0p29: 014bfe00 00000200 "devlog"
# mmcblk0p30: 00040000 00000200 "pdata"

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_PREBUILT_KERNEL := device/htc/mecha/kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x05200000
BOARD_PAGE_SIZE := 4096

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/htc/mecha/recovery_ui.c
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
