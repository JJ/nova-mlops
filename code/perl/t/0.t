use lib qw(lib ../lib);

use Test::More tests => 1;

use Data::OSK;

ok( download_osk(), "Can be downloaded properly");

