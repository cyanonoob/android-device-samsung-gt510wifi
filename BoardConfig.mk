# Copyright (C) 2015 The CyanogenMod Project
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

# inherit from qcom-common
-include device/samsung/qcom-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gt510wifi

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Arch
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

BOARD_CUSTOM_BOOTIMG_MK      := device/samsung/gt510wifi/mkbootimg.mk
BOARD_KERNEL_CMDLINE         := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE            := 0x80000000
BOARD_RAMDISK_OFFSET         := 0x02000000
BOARD_KERNEL_TAGS_OFFSET     := 0x01e00000
BOARD_KERNEL_SEPARATED_DT    := true
BOARD_KERNEL_PAGESIZE        := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138295296
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP
# Display
TW_THEME := portrait_mdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_BRIGHTNESS_PATH := "/sys/devices/soc.0/1a00000.qcom\x2cmdss_mdp/qcom\x2cmdss_fb_primary.130/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true

# Misc.
BOARD_USES_MMC_UTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_MISC_PARTITION := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_RECOVERY_SWIPE := true

# Keys
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_PREBUILT_KERNEL := device/samsung/gt510wifi/kernel
