#!/bin/sh

perl -MText::Hunspell -e 1
if [ $? -ge 1 ]; then
    sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y libtext-hunspell-perl
fi

perl -MTest::Text -e 1
if [ $? -ge 1 ]; then
    cpanm --installdeps .
fi
