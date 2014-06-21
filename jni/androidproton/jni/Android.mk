LOCAL_PATH := $(call my-dir)



include $(CLEAR_VARS)
LOCAL_MODULE    := ext2_uuid-prebuilt
LOCAL_SRC_FILES := ../../androiduuid/libs/armeabi/libext2_uuid.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := crypto-prebuilt
LOCAL_SRC_FILES := ../../androidopenssl/libs/armeabi/libcrypto.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := ssl-prebuilt
LOCAL_SRC_FILES := ../../androidopenssl/libs/armeabi/libssl.so
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_CFLAGS := -DUSE_CLOCK_GETTIME -DUSE_UUID_GENERATE -DUSE_STRERROR_R -DUSE_ATOLL -std=gnu99 -g

LOCAL_C_INCLUDES := $(LOCAL_PATH)/includes \
$(LOCAL_PATH)/includes/proton

LOCAL_MODULE    := proton-jni
LOCAL_SRC_FILES := src/error.c \
src/types.c \
src/buffer.c \
src/transport/transport.c \
src/platform.c \
src/scanner.c \
src/parser.c \
src/util.c \
src/posix/driver.c \
src/engine/engine.c \
src/message/message.c \
src/codec/codec.c \
src/codec/encoder.c \
src/codec/decoder.c \
src/framing/framing.c \
src/sasl/sasl.c \
src/dispatcher/dispatcher.c \
src/ssl/openssl.c \
src/messenger/messenger.c \
src/messenger/transform.c \
src/messenger/subscription.c \
src/messenger/store.c \
src/object/object.c \
src/javaJAVA_wrap.c    #INCLUDED 6/10 TO TRY SWIG BINDINGS.
LOCAL_SHARED_LIBRARIES += crypto-prebuilt \
ssl-prebuilt \
ext2_uuid-prebuilt
LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)

