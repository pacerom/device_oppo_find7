# Boot animation (XXX: find7s?)
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Specify phone tech before including full_phone
$(call inherit-product, vendor/pace/config/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/pace/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/pace/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/find7/find7.mk)


PRODUCT_DEVICE := find7
PRODUCT_NAME := pace_find7
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := Find7
PRODUCT_MANUFACTURER := OPPO

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=4.3/JLS36C/1390381364:user/release-keys PRIVATE_BUILD_DESC="msm8974-user 4.3 JLS36C eng.root.20140122.170107 release-keys"
