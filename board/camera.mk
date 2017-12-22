# Camera
# Force camera module to be compiled only in 32-bit mode on 64-bit systems
# Once camera module can run in the native mode of the system (either
# 32-bit or 64-bit), the following line should be deleted
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_TS_MAKEUP := true
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_FLASHLIGHT_CONTROL := true
TARGET_FLASHLIGHT_CONTROL_ID := 0
TARGET_FLASHLIGHT_CONTROL_PATH := /dev/v4l-subdev7
TARGET_FLASHLIGHT_CURRENT_VALUE0 := 195
TARGET_FLASHLIGHT_CURRENT_VALUE1 := 78
