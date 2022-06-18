

.PHONY: prespell spellcheck

prespell:
	bin/test-install.sh

spellcheck: prespell
	bin/spell.pl
