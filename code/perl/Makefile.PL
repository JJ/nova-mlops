use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Data::OSK',
    AUTHOR              => 'JJ Merelo <jjmerelo@gmail.com>',
    VERSION_FROM        => 'lib/Data/OSK.pm',
    ABSTRACT_FROM       => 'lib/Data/OSK.pm',
    PL_FILES            => {},
    PREREQ_PM => {
		  'Test::More' => 0,
		  'version'    => 0,
		  'LWP::Simple' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Data-OSK-*' },
);
