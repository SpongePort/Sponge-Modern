VERSION := DEBUG
TERRITORY := USA
USER := CDBUILD
FILE_SYSTEM := PC
PLATFORM := PC

INCS :=  	-Iinclude -Isrc -Ipsyq/include

DEFS :=  	-D__USER_$(USER)__ \
			-D__VERSION_$(VERSION)__ \
			-D__TERRITORY_$(TERRITORY)__ \
			-D__FILE_SYSTEM_$(FILE_SYSTEM)__ \
			-D__VERSION_STR__=$(VERSION) \
			-D__TERRITORY_STR__=$(TERRITORY) \
			-D__FILE_SYSTEM_STR__=$(FILE_SYSTEM) \
			-DTARGET_${TARGET} \
			-D_LANGUAGE_C_PLUS_PLUS

LIBS :=     -Lpsyq/lib -Llib \
			-lc -lapi -letc -lspu -lsnd \
            -lgpu -lcard -lpress \
            -lcd -ltap -lcomb -lmcrd \
            -lgte -lpad -lds -lxmplay

COMMON_FLAGS := $(INCS) $(DEFS) $(LIBS)

SRC_DIR := src
BUILD_DIR := build
PLATFORM_DIR := $(shell echo $(PLATFORM) | tr A-Z a-z)