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

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=270

# Camera
PRODUCT_PACKAGES += \
    com.qti.sensormodule.mot_guam_s5k3l6_ofilm.bin

# Fingerprint
TARGET_USES_CHIPONE_FINGERPRINT := true
TARGET_USES_FPC_FINGERPRINT := true
TARGET_USES_GOODIX_FINGERPRINT := true

# Model
PRODUCT_MODEL := moto g play 2021

# Recovery
AB_OTA_PARTITIONS += recovery

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/sm4250-common/platform.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/motorola/guamna/guamna-vendor.mk)
