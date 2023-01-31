ifeq (guamna,$(TARGET_DEVICE))

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles)

include $(CLEAR_VARS)
LOCAL_MODULE := com.qti.sensormodule.mot_guam_s5k3l6_ofilm.bin
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)

LOCAL_POST_INSTALL_CMD := mkdir -p $(TARGET_OUT_VENDOR)/lib64/camera; \
                          touch $(TARGET_OUT_VENDOR)/lib64/camera/com.qti.sensormodule.mot_guam_s5k3l6_ofilm.bin

include $(BUILD_PHONY_PACKAGE)

endif
