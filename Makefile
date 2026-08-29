include common.mk

TARGET = Spongey
TYPE = ps-exe
CFLAGS :=	-std=gnu11 \
			-w \
			-g \
			-fpermissive \
			$(COMMON_FLAGS)
CXXFLAGS := -std=c++20 $(CFLAGS)

SRCS := $(filter-out $(wildcard $(SRC_DIR)/**/main.cpp), $(wildcard $(SRC_DIR)/**/*.cpp)) $(SRC_DIR)/$(PLATFORM_DIR)/main.cpp

include thirdparty/nugget/common.mk
