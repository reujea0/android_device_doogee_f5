# Release name
PRODUCT_RELEASE_NAME := F5

# Specify MT6753 variant
TARGET_IS_MT6753 := true

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/doogee/f5/f5.mk)

# Include generic Mediatek MT6753 part
$(call inherit-product, device/mediatek/mt6753_common/BoardConfigMT6753_common.mk)

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f5
PRODUCT_NAME := cm_f5
PRODUCT_BRAND := doogee
PRODUCT_MODEL := F5
PRODUCT_MANUFACTURER := DOOGEE
