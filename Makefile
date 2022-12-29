PREFIX ?= $$HOME/.local

PROJECT = wal-gxxx-led

all: install

install:
	install -Dm755 $(PROJECT) $(PREFIX)/bin/$(PROJECT)
	@echo
	@echo 'installed to $(PREFIX)/bin, make sure it is in your $$PATH'
	@echo 'or uninstall and run again with desired desired prefix:'
	@echo '$$ make uninstall '
	@echo '$$ PREFIX=<your prefix> make install'

uninstall:
	rm -f $(PREFIX)/bin/$(PROJECT)

.PHONY: all install uninstall
