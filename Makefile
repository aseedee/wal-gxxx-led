PREFIX ?= $$HOME/.local/bin

PROJECT = wal-gxxx-led

all: install

install:
	install -Dm755 $(PROJECT) $(PREFIX)/$(PROJECT)
	@echo
	@echo 'installed to $(PREFIX), make sure it is in your $$PATH'
	@echo 'or uninstall and run again with desired desired prefix:'
	@echo '$$ make uninstall '
	@echo '$$ PREFIX=<your prefix> make install'

uninstall:
	rm -f "$(PREFIX)/$(PROJECT)"

.PHONY: all install uninstall
