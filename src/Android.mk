LOCAL_PATH:= $(call my-dir)

FILE_SRC_FILES := \
	apprentice.c	\
	apptype.c	\
	ascmagic.c	\
	asprintf.c	\
	cdf.c	\
	cdf_time.c	\
	compress.c	\
	encoding.c	\
	file.c	\
	fsmagic.c	\
	funcs.c	\
	getline.c	\
	getopt_long.c	\
	is_tar.c	\
	magic.c	\
	print.c	\
	readcdf.c	\
	readelf.c	\
	softmagic.c	\
	strlcat.c	\
	strlcpy.c	\
	vasprintf.c	\

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := $(FILE_SRC_FILES)

LOCAL_CFLAGS :=	\
	-DHAVE_CONFIG_H	\
	-DANDROID

LOCAL_MODULE:= file

LOCAL_MODULE_TAGS:= optional

LOCAL_C_INCLUDES := $(LOCAL_PATH)	\
	$(LOCAL_PATH)/../	\
	$(TOP)/external/zlib/

LOCAL_SHARED_LIBRARIES	:=	\
	libz


include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(FILE_SRC_FILES)

LOCAL_CFLAGS :=	\
	-DHAVE_CONFIG_H	\
	-DANDROID

LOCAL_MODULE:= file

LOCAL_MODULE_TAGS:= optional

LOCAL_C_INCLUDES := $(LOCAL_PATH)	\
	$(LOCAL_PATH)/../	\
	$(TOP)/external/zlib/

LOCAL_LDLIBS += -lz

include $(BUILD_HOST_EXECUTABLE)
