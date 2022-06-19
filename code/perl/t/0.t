use lib qw(lib ../lib); # -*- mode:cperl -*-

use Test::More tests => 1;

use Data::OSK;

my $page = download_osk();

ok( $page, "Can be downloaded properly");


