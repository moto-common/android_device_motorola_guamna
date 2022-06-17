# Copyright 2014 The Android Open Source Project
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

include device/motorola/sm4250-common/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := guamna

# Platform
PRODUCT_PLATFORM := bengal

# Kernel DTB/DTBO
BOARD_PREBUILT_DTBIMAGE_DIR := device/motorola/sm4250-common-kernel/dtb
BOARD_PREBUILT_DTBOIMAGE := device/motorola/sm4250-common-kernel/dtbo.img

# Kernel Modules
BOARD_VENDOR_KERNEL_MODULES := \
    $(wildcard device/motorola/sm4250-common-kernel/modules/*.ko)

# Partition information
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600
BOARD_DTBOIMG_PARTITION_SIZE := 25165824 # (0x1800000)

BOARD_SUPER_PARTITION_SIZE := 10267656192
BOARD_SUPER_PARTITION_GROUPS := mot_dynamic_partitions

# DYNAMIC_PARTITIONS_SIZE = (SUPER_PARTITION_SIZE / 2) - 4MB
BOARD_MOT_DYNAMIC_PARTITIONS_SIZE := 5129633792
BOARD_MOT_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    product \
    vendor
