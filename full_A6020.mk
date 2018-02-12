#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/kernel:kernel

# sdcardfs
RODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A6020
PRODUCT_NAME := full_A6020
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Vibe K5/K5 PLUS
PRODUCT_MANUFACTURER := Lenovo
