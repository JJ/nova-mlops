

.PHONY: prespell spellcheck

prespell:
	bin/test-install.sh

spellcheck:
	bin/spell.pl

prehtml:
	 Rscript -e 'install.packages("rmarkdown")'

html:
	bin/md2html
