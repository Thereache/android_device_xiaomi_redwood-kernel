#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_DEVICE),redwood)

include $(CLEAR_VARS)

PREBUILT_KERNEL_MODULES_VENDOR := $(TARGET_OUT_VENDOR)/lib/modules
$(PREBUILT_KERNEL_MODULES_VENDOR):
	@mkdir -p $(TARGET_OUT_VENDOR)/lib/modules
	@cp -r $(DEVICE_PATH)-kernel/vendor/* $(PREBUILT_KERNEL_MODULES_VENDOR)

PREBUILT_KERNEL_MODULES_RAMDISK := $(TARGET_VENDOR_RAMDISK_OUT)/lib/modules
$(PREBUILT_KERNEL_MODULES_RAMDISK):
	@mkdir -p $(TARGET_VENDOR_RAMDISK_OUT)/lib/modules
	@cp -r $(DEVICE_PATH)-kernel/ramdisk/* $(PREBUILT_KERNEL_MODULES_RAMDISK)
	
ALL_DEFAULT_INSTALLED_MODULES += $(PREBUILT_KERNEL_MODULES_VENDOR) $(PREBUILT_KERNEL_MODULES_RAMDISK)

endif

