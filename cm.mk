## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a200

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/acer/a200/device_a200.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a200
PRODUCT_NAME := cm_a200
PRODUCT_BRAND := acer
PRODUCT_MODEL := a200
PRODUCT_MANUFACTURER := acer
