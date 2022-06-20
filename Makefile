

.PHONY: prespell spellcheck prehtml html
UNAME_S := $(shell uname -s)

prespell:
	bin/test-install.sh

spellcheck:
	bin/spell.pl

prehtml:
	 Rscript -e 'install.packages("rmarkdown")'

html:
	bin/md2html

pretestperl:
	cpanm Module::Build Test::Perl::Critic Test::Pod::Coverage

testperl:
	cd code/perl/ && perl Build.PL && ./Build test