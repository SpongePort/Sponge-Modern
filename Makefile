TARGET = Spongey
CPPFLAGS = -w -g -fpermissive -fno-use-cxa-atexit

VERSION := FINAL
TERRITORY := USA
USER := CDBUILD
FILE_SYSTEM := CD

SRCS = $(wildcard src/**/*.cpp)) src/system/$(VERSION)/$(TERRITORY)/$(FILE_SYSTEM)/info.cpp

include common.mk