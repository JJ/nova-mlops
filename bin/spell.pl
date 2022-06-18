#!/usr/bin/perl

use utf8;
use TAP::Harness;

my $harness = TAP::Harness->new( { verbosity => 0} );
die "FAIL" if $harness->runtests( "t/just_check.t" )->failed;
