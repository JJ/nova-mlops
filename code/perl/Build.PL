use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Data::OSK',
    license             => 'perl',
    dist_author         => 'JJ Merelo <jjmerelo@gmail.com>',
    dist_version_from   => 'lib/Data/OSK.pm',
    requires => {
		 'Test::More' => 0,
		 'LWP::Simple' => 0,
		 'Test::Perl::Critic' => 0,
		 
    },
    add_to_cleanup      => [ 'Data-OSK-*' ],
);

$builder->create_build_script();
