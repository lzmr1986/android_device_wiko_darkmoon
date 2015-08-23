# inherit from the proprietary version
-include vendor/wiko/darkmoon/BoardConfigVendor.mk

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/wiko/darkmoon/include

# Board
TARGET_BOARD_PLATFORM := mt6582
TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
DEVICE_RESOLUTION := 720x1280
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_BOOTLOADER_BOARD_NAME := mt6582


# Partitions
# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8629568
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 891289600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048


# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_KMODULES := true

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

TARGET_PREBUILT_KERNEL := device/wiko/darkmoon/kernel
TARGET_RECOVERY_FSTAB := device/wiko/darkmoon/rootdir/root/recovery.fstab

# Deodex
WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/wiko/darkmoon/bluetooth

# EGL settings
BOARD_EGL_CFG := device/wiko/darkmoon/rootdir/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# SELINUX
BOARD_SEPOLICY_DIRS := \
       device/wiko/darkmoon/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       netd.te \
       system.te \
       file_contexts

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# RIL
BOARD_RIL_CLASS := ../../../device/wiko/darkmoon/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Libwebviewchromium hack 
#PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
