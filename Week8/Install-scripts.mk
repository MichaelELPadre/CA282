sources := $(wildcard [a-z]*)
destination := $(HOME)/local/bin
targets := $(addprefix $(destination)/,$(notdir $(sources)))

.PHONY: install

install: $(targets)

$(destination)/%: %
	@mkdir -p $(destination)
	@install -v -m 0755 $< $@