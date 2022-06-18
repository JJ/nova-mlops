

.PHONY: prespell spellcheck

English.%:
ifneq ("$(wildcard English.*)","")
	curl https://raw.githubusercontent.com/JJ/Test-Text/master/data/en_US.aff -o English.aff
        curl https://raw.githubusercontent.com/JJ/Test-Text/master/data/en_US.dic -o English.dic
endif

prespell: English.aff English.dic
	sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y libtext-hunspell-perl
	cpanm --installdeps .

spellcheck: prespell
	perl -MTAP::Harness -e 'use utf8; my $harness = TAP::Harness->new( { verbosity => 0} ); die "FAIL" if $$harness->runtests( "just_check.t" )->failed;'
