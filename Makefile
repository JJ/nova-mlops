

.PHONY: prespell spellcheck

prespell:
	bin/test-install.sh

spellcheck:
	bin/spell.pl
