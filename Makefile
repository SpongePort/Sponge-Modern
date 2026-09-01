TARGET = Spongey
CPPFLAGS = -w -g -fpermissive

VERSION := FINAL
TERRITORY := USA
USER := CDBUILD
FILE_SYSTEM := PC

SRCS = $(wildcard src/**/*.cpp)) src/system/$(VERSION)/$(TERRITORY)/$(FILE_SYSTEM)/info.cpp

include common.mk