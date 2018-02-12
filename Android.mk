LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),A6020)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
