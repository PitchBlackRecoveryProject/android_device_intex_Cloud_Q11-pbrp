#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from Cloud_Q11 device
$(call inherit-product, device/intex/Cloud_Q11/device.mk)

# Inherit some common PitchBlack stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Cloud_Q11
PRODUCT_NAME := omni_Cloud_Q11
PRODUCT_BRAND := Intex
PRODUCT_MODEL := Cloud Q11
PRODUCT_MANUFACTURER := intex
PRODUCT_RELEASE_NAME := Intex Cloud Q11


# Made PitchBlack Official
PB_OFFICIAL := true
MAINTAINER := Aryan Karan
PB_TORCH_MAX_BRIGHTNESS := 127
TW_DEFAULT_BRIGHTNESS := 90
TWRP_INCLUDE_LOGCAT := true
#PLATFORM_SDK_VERSION := 23
#PB_DEVICE_MODEL := Aryan_rolex
