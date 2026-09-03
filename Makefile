VERSION = FINAL
TERRITORY = USA
USER = CDBUILD
FILE_SYSTEM = CD

OVERLAYSCRIPT  ?= overlay.ld
OVERLAYSECTION ?= .spongey

# Assets rule
# Use generated xml as .assets file so it won't extract more than once
disc/$(TERRITORY)/.assets:
	@dumpsxiso -x disc/$(TERRITORY) -s disc/$(TERRITORY)/.assets disc/spongebob.$(TERRITORY).cue

# Boot executable rule
# Builds PsxBoot
boot:
	$(MAKE) -C boot VERSION=$(VERSION) TERRITORY=$(TERRITORY) USER=$(USER) FILE_SYSTEM=$(FILE_SYSTEM)

# Game overlay rule
# Builds SPONGEY.BIN
source:
	$(MAKE) -C src VERSION=$(VERSION) TERRITORY=$(TERRITORY) USER=$(USER) FILE_SYSTEM=$(FILE_SYSTEM)

# Cleans everything up
clean:
	rm -rf spongebob.*.bin spongebob.*.cue
	$(MAKE) -C boot clean
	$(MAKE) -C src clean

# Builds the game
all: disc/$(TERRITORY)/.assets
	$(MAKE) boot
	$(MAKE) source
	@mkpsxiso spongebob.$(TERRITORY).xml

# Phony rules
.PHONY: boot source clean all
