#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'URL::Check',
    AUTHOR             => q{Alexandre Masselot <alexmass@cpan.org>},
    VERSION_FROM       => 'lib/URL/Check.pm',
    ABSTRACT_FROM      => 'lib/URL/Check.pm',
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM        => {
        'Test::More'     => 0,
        'Mail::Sendmail' => 0,
        'Time::HiRes'    => 0,
        'LWP::Simple'    => 0
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'URL-Check-*' },
);
