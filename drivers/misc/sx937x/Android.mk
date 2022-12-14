DLKM_DIR := motorola/kernel/modules
LOCAL_PATH := $(call my-dir)

ifeq ($(SX937X_USB_CAL),true)
	KBUILD_OPTIONS += CONFIG_SX937X_USB_CAL=y
endif

ifeq ($(SX937X_USB_USE_ONLINE),true)
	KBUILD_OPTIONS += CONFIG_SX937X_POWER_SUPPLY_ONLINE=y
endif

ifeq ($(SX937X_FLIP_CAL),true)
	KBUILD_OPTIONS += CONFIG_SX937X_FLIP_CAL=y
endif

include $(CLEAR_VARS)
LOCAL_MODULE := sx937x_sar.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
LOCAL_ADDITIONAL_DEPENDENCIES := $(KERNEL_MODULES_OUT)/sensors_class.ko
KBUILD_OPTIONS_GKI += GKI_OBJ_MODULE_DIR=gki
include $(DLKM_DIR)/AndroidKernelModule.mk
