include common.mk

TARGET = Spongey
TYPE = ps-exe
CFLAGS +=	-std=gnu11 \
			-w \
			-g \
			-fpermissive \
			$(COMMON_FLAGS)
CXXFLAGS += -std=c++20 $(CFLAGS)

SRCS := $(wildcard $(SRC_DIR)/**/*.cpp))

include thirdparty/nugget/common.mk
