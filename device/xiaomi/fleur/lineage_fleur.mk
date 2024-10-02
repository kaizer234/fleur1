#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from common makefile
$(call inherit-product, device/xiaomi/mt6781-common/mt6781.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/fleur/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device configs
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true

# Matrixx
MATRIXX_MAINTAINER := rusyd4
MATRIXX_CHIPSET := MT6781
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 1080X2400
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := lineage_fleur
PRODUCT_DEVICE := fleur
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11S

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint stuff
BUILD_FINGERPRINT := Redmi/fleur_global/fleur:13/SP1A.210812.016/V816.0.2.0.TKEMIXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fleur_global-user 13 SP1A.210812.016 V816.0.2.0.TKEMIXM release-keys"
