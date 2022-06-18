#!/bin/sh


/usr/bin/perl -MText::Hunspell -e 1
if [ $? -ge 1 ]; then
    sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y libtext-hunspell-perl
fi

/usr/bin/perl -MTest::Text -e 1
if [ $? -ge 1 ]; then
    sudo cpan Test::Text TAP::Harness
fi
