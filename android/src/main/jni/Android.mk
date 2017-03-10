LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := rnupdate
LOCAL_LDFLAGS := -Wl,--build-id
LOCAL_LDLIBS := \
	-llog \

LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/blocksort.c \
	$(LOCAL_PATH)/bspatch.c \
	$(LOCAL_PATH)/bzlib.c \
	$(LOCAL_PATH)/compress.c \
	$(LOCAL_PATH)/crctable.c \
	$(LOCAL_PATH)/decompress.c \
	$(LOCAL_PATH)/DownloadTask.c \
	$(LOCAL_PATH)/huffman.c \
	$(LOCAL_PATH)/randtable.c \

LOCAL_C_INCLUDES += $(LOCAL_PATH)

TARGET_PLATFORM := android-16

include $(BUILD_SHARED_LIBRARY)
