# Release name
PRODUCT_RELEASE_NAME := F5

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/doogee/x5607_dg_a32/device_x5607_dg_a32.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x5607_dg_a32
PRODUCT_NAME := cm_F5
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := F5
PRODUCT_MANUFACTURER := Doogee
