include common.mk

TARGET = Spongey
CPPFLAGS +=	-w -g -fpermissive

SRCS += $(wildcard src/**/*.cpp))

include thirdparty/nugget/common.mk
