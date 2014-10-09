## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a106

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/micromax/a106/device_a106.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a106
PRODUCT_NAME := cm_a106
PRODUCT_BRAND := micromax
PRODUCT_MODEL := a106
PRODUCT_MANUFACTURER := micromax
