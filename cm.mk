# Release name
PRODUCT_RELEASE_NAME := x5607_dg_a32

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/doogee/x5607_dg_a32/device_x5607_dg_a32.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x5607_dg_a32
PRODUCT_NAME := cm_x5607_dg_a32
PRODUCT_BRAND := doogee
PRODUCT_MODEL := x5607_dg_a32
PRODUCT_MANUFACTURER := doogee
