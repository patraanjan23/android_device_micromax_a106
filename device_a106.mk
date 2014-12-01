$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/micromax/a106/a106-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/micromax/a106/overlay

LOCAL_PATH := device/micromax/a106
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

#rootfs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/default.prop:root/default.prop \
    $(LOCAL_PATH)/recovery/fstab:root/fstab \
    $(LOCAL_PATH)/recovery/fstab.fat.nand:root/fstab.fat.nand \
    $(LOCAL_PATH)/recovery/fstab.nand:root/fstab.nand \
    $(LOCAL_PATH)/recovery/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/recovery/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/recovery/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/recovery/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/recovery/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/recovery/ueventd.rc:root/ueventd.rc

#SELinux
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/file_contexts:root/file_contexts \
    $(LOCAL_PATH)/recovery/seapp_contexts:root/seapp_contexts \
    $(LOCAL_PATH)/recovery/property_contexts:root/property_contexts

#twrp
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_a106
PRODUCT_DEVICE := a106
