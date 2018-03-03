#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit common rr stuff
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Kernel device configurations
TARGET_KERNEL_CONFIG := aosp_tone_kagura_defconfig

# Inherit device configurations
$(call inherit-product, device/sony/kagura/device.mk)

# Inherit target configurations
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# Fingerprint from Stock
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=kagura
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/kagura/kagura:8.0.0/OPR1.170623.026/1:user/dev-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="kagura-user 8.0.0 OPR1.170623.026 1 dev-keys"

# Device identifications
PRODUCT_DEVICE := kagura
PRODUCT_NAME := rr_kagura
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia XZ


