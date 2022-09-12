#
# Copyright (C) 2018-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)

# Inherit from nx563j device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := nubia
PRODUCT_DEVICE := nx563j
PRODUCT_MANUFACTURER := nubia
PRODUCT_NAME := mokee_nx563j
PRODUCT_MODEL := Nubia Z17

PRODUCT_GMS_CLIENTID_BASE := android-nubia

TARGET_VENDOR_PRODUCT_NAME := nx563j

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="nx563j" \
    PRODUCT_NAME="nx563j" \
    BUILD_FINGERPRINT="nubia/NX563J/NX563J:9/PKQ1.181021.001/eng.nubia.20190603.171651:user/release-keys" \
    PRIVATE_BUILD_DESC="NX563J-user 9 PKQ1.181021.001 eng.nubia.20190603.171651 release-keys"
TARGET_VENDOR := nubia
