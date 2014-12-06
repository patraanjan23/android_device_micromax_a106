LOCAL_PATH := device/micromax/a106
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/micromax/a106/BoardConfigVendor.mk

#board info
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true
TARGET_BOARD_PLATFORM := mt6582
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := a106

#kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

#Use CM PowerHAL by default
TARGET_POWERHAL_VARIANT := cm

#partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 943718400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 968884224
BOARD_FLASH_BLOCK_SIZE := 512

#set proper ramdisk address
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

#recovery stuff
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/fstab.mt6582
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/kernel

BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/boot.mk
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

#patches from C3C0
#CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
#CWM_EMMC_BOOT_DEVICE_SIZE := 0x001000000
#CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
#CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x001000000
#CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
#CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00060000

#neon cflags for cortex-a7
#TARGET_GLOBAL_CFLAGS   += -mcpu=cortex-a7 -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mcpu=cortex-a7 -mfpu=neon -mfloat-abi=softfp

#user image is ext4
TARGET_USERIMAGES_USE_EXT4:=true

#######
#philz#
#######
#BOARD_USE_MTK_LAYOUT := true
#BOARD_MTK_BOOT_LABEL := "/bootimg"
#BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"



########################
#TeamWinRecoveryProject#
########################

#DEVICE_RESOLUTION := 480x800
#  dual storage
#TW_INTERNAL_STORAGE_PATH := "/emmc"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#  flipped screen
# RECOVERY_TOUCHSCREEN_SWAP_XY := true
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true
#BOARD_HAS_FLIPPED_SCREEN := true
