#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit common Omni configurations
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device specific configurations
$(call inherit-product, device/samsung/p3100/device.mk)

# OmniRom specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/p3100/overlay/custom
DEVICE_PACKAGE_OVERLAYS += device/samsung/p3100/overlay/custom-common

# Device identifier. This must come after all inclusions
PRODUCT_MODEL := GT-P3100
PRODUCT_BRAND := samsung
PRODUCT_NAME := omni_p3100
PRODUCT_DEVICE := p3100
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=espressorfxx \
    TARGET_DEVICE=espressorf \
    PRIVATE_BUILD_DESC="espressorfxx-user 4.2.2 JDQ39 P3100XWDNA1 release-keys" \
    BUILD_FINGERPRINT="samsung/espressorfxx/espressorf:4.2.2/JDQ39/P3100XWDNA1:user/release-keys"
