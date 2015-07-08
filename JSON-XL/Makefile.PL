use 5.008002;
use ExtUtils::MakeMaker;

WriteMakefile(
    dist	 => {
	             PREOP	=> 'pod2text XL.pm | tee README >$(DISTVNAME)/README; chmod -R u=rwX,go=rX . ;',
	             COMPRESS	=> 'gzip -9v',
	             SUFFIX	=> '.gz',
	            },
    EXE_FILES    => [ "bin/json_xl" ],
    VERSION_FROM => "XL.pm",
    NAME         => "JSON::XL",
    PREREQ_PM    => {
       common::sense     => 0,
       Types::Serialiser => 0,
    },
);

