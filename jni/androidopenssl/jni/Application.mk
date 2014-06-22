#APP_ABI := armeabi,armeabi-v7a		Notice how you can comma separate architectures.
APP_ABI := all
APP_PROJECT_PATH := $(shell pwd)
APP_BUILD_SCRIPT := $(APP_PROJECT_PATH)/Android.mk
