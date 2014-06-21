#APP_ABI := armeabi,armeabi-v7a		Notice how you can comma separate architectures.
APP_ABI := all
NDK_APP_DST_DIR := $(NDK_PROJECT_PATH)/../../libs/$(TARGET_ARCH_ABI)
