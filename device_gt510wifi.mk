$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/gt510wifi/gt510wifi-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/gt510wifi/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.bms.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.factory.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.target.rc \
    ueventd.qcom.rc

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    ro.sys.usb.default.config=mtp \
    persist.sys.isUsbOtgEnabled=true

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/gt510wifi/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    
# Default.prop overrides to get adb working at boot   
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_gt510wifi
PRODUCT_DEVICE := gt510wifi
