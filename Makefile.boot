include common.mk

TARGET = PsxBoot
TYPE = ps-exe
CFLAGS +=	-O2 \
            -g \
            $(COMMON_FLAGS)
CXXFLAGS += -std=c++20 $(CFLAGS)

SRCS := psx/psxboot.cpp

include thirdparty/nugget/common.mk
