VERSION := FINAL
TERRITORY := USA
USER := CDBUILD
FILE_SYSTEM := PC

boot:
	$(MAKE) -C boot
spongey:
	$(MAKE) -C src

clean:
	$(MAKE) -C boot clean
	$(MAKE) -C src clean

all:
	$(MAKE) -C boot
	$(MAKE) -C src
	
# declare phony rules
.PHONY: boot spongey \
		clean all
