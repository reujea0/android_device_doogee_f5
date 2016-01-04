TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := F5

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/doogee/f5/device_f5.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f5
PRODUCT_NAME := cm_f5
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := F5
PRODUCT_MANUFACTURER := Doogee
