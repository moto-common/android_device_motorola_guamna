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

# Device path
DEVICE_PATH := device/motorola/guamna/rootdir

# Kernel
PRODUCT_COPY_FILES += \
    device/motorola/guamna-kernel/Image.gz:kernel

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/vendor/etc/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(DEVICE_PATH)/vendor/etc/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(DEVICE_PATH)/vendor/etc/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Device Init
PRODUCT_PACKAGES += \
    fstab.guamna \
    ramdisk-fstab.guamna \
    init.recovery.qcom.rc \
    init.guamna.rc \
    init.guamna.sh

# Overlays
PRODUCT_PACKAGES += \
   guamnaFrameworkOverlay \
   guamnaMotoActionsOverlay \
   guamnaSystemUIOverlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=270

# Fingerprint
TARGET_USES_CHIPONE_FINGERPRINT := true
TARGET_USES_FPC_FINGERPRINT := true
TARGET_USES_GOODIX_FINGERPRINT := true

# Camera
PRODUCT_PACKAGES += \
    com.qti.sensormodule.mot_guam_s5k3l6_ofilm.bin

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/sm4250-common/platform.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/motorola/guamna/guamna-vendor.mk)
