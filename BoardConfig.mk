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

# inherit from common shooter
-include device/htc/shooter-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/shooterk/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/htc/shooterk/include

TARGET_BOOTLOADER_BOARD_NAME := shooterk

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooterk

# CDMA Ril and Wimax Support
BOARD_USES_LEGACY_RIL := true
COMMON_GLOBAL_CFLAGS += -DBOARD_HAVE_SQN_WIMAX
BOARD_HAVE_SQN_WIMAX := true

# Kernel Details
TARGET_KERNEL_CONFIG := shooter_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooterk no_console_suspend=1

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/shooterk

# cat /proc/emmc
#dev:        size     erasesize name
# mmcblk0p35: 00040000 00000200 "misc"
# mmcblk0p22: 00fffc00 00000200 "recovery"
# mmcblk0p21: 01000000 00000200 "boot"
# mmcblk0p23: 31fffc00 00000200 "system"
# mmcblk0p33: 00140200 00000200 "local"
# mmcblk0p25: 06ebde00 00000200 "cache"
# mmcblk0p24: 4aabc400 00000200 "userdata"
# mmcblk0p29: 01400000 00000200 "devlog"
# mmcblk0p31: 00040000 00000200 "pdata"
# mmcblk0p26: 00008000 00000200 "extra"
# mmcblk0p18: 02800000 00000200 "radio"
# mmcblk0p20: 01000000 00000200 "adsp"
# mmcblk0p19: 007ffa00 00000200 "radio_config"
# mmcblk0p27: 00400000 00000200 "modem_st1"
# mmcblk0p28: 00400000 00000200 "modem_st2"
# mmcblk0p8:  00c00200 00000200 "wimax"
# mmcblk0p34: 007ffa00 00000200 "udata_wimax"

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880

RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/htc/shooterk/ramdisk/fstab.shooterk
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_shooterk
TARGET_RECOVERY_INITRC := device/htc/shooterk/recovery/init.rc
