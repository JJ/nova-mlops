

.PHONY: prespell spellcheck

prespell:
	sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y libtext-hunspell-perl
	cpanm --installdeps .

spellcheck: prespell
	bin/spell.pl
