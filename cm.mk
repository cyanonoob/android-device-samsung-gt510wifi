# Release name
PRODUCT_RELEASE_NAME := gt510wifi

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/gt510wifi/device_gt510wifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gt510wifi
PRODUCT_NAME := cm_gt510wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := gt510wifi
PRODUCT_MANUFACTURER := samsung
