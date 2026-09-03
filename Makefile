VERSION = FINAL
TERRITORY = USA
USER = CDBUILD
FILE_SYSTEM = CD

boot:
	$(MAKE) -C boot VERSION=$(VERSION) TERRITORY=$(TERRITORY) USER=$(USER) FILE_SYSTEM=$(FILE_SYSTEM)
spongey:
	$(MAKE) -C src VERSION=$(VERSION) TERRITORY=$(TERRITORY) USER=$(USER) FILE_SYSTEM=$(FILE_SYSTEM)
cd:
	@dumpsxiso -x disc/$(TERRITORY) -s disc/spongebob.$(TERRITORY).xml disc/spongebob.$(TERRITORY).cue

clean:
	@rm -rf disc/USA disc/EUR disc/*.xml out
	$(MAKE) -C boot clean
	$(MAKE) -C src clean

all:
	@mkdir -p out
	@cp -r disc/$(TERRITORY) out/$(TERRITORY)
	$(MAKE) -C boot VERSION=$(VERSION) TERRITORY=$(TERRITORY) USER=$(USER) FILE_SYSTEM=$(FILE_SYSTEM)
	$(MAKE) -C src VERSION=$(VERSION) TERRITORY=$(TERRITORY) USER=$(USER) FILE_SYSTEM=$(FILE_SYSTEM)
	
# declare phony rules
.PHONY: boot spongey cd \
		clean all
