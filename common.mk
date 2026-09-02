# If you change this to exe, you'll have to rename the file ./thirdparty/nugget/ps-exe.ld too.
TYPE = ps-exe

THISDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

SRCS += $(THISDIR)thirdparty/nugget/common/crt0/crt0.s
SRCS += $(THISDIR)thirdparty/nugget/common/syscalls/printf.s 

CPPFLAGS += -I$(THISDIR)thirdparty/nugget/psyq/include -I$(THISDIR)psyq-4_7-converted/include -I$(THISDIR)psyq-4.7-converted-full/include -I$(THISDIR)psyq/include 
LDFLAGS += -L$(THISDIR)thirdparty/nugget/psyq/lib -L$(THISDIR)psyq-4_7-converted/lib -L$(THISDIR)psyq-4.7-converted-full/lib -L$(THISDIR)psyq/lib

CPPFLAGS += -I$(THISDIR)include -I$(THISDIR)src \
			-D__USER_$(USER)__ \
			-D__VERSION_$(VERSION)__ \
			-D__TERRITORY_$(TERRITORY)__ \
			-D__FILE_SYSTEM_$(FILE_SYSTEM)__ \
			-D__VERSION_STR__=$(VERSION) \
			-D__TERRITORY_STR__=$(TERRITORY) \
			-D__FILE_SYSTEM_STR__=$(FILE_SYSTEM) \
			-DPSX \
			-D_LANGUAGE_C_PLUS_PLUS

LDFLAGS +=  -L$(THISDIR)lib \
			-Wl,--start-group \
			-lc -lapi -letc -lspu -lsnd \
            -lgpu -lcard -lpress \
            -lcd -lmcrd \
            -lgte -lpad -lds -lxmplay -lvlc_bit \
			-Wl,--end-group


include $(THISDIR)thirdparty/nugget/common.mk

define OBJCOPYME
$(PREFIX)-objcopy -I binary --set-section-alignment .data=4 --rename-section .data=.rodata,alloc,load,readonly,data,contents -O $(FORMAT) -B mips $< $@
endef
