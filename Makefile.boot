include common.mk

TARGET = PsxBoot
TYPE = ps-exe
CFLAGS +=	-O2 \
            -g \
            $(COMMON_FLAGS)
CXXFLAGS += -std=c++20 $(CFLAGS)

SRCS := src/fileio/filetab.cpp psx/psxboot.cpp

include thirdparty/nugget/common.mk
