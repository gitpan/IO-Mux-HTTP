#!/usr/bin/env perl
use ExtUtils::MakeMaker;

use 5.008;

my $version = '0.10';

WriteMakefile
 ( NAME	 	=> 'IO::Mux::HTTP'
 , VERSION	=> $version
 , PREREQ_PM    =>
    { Test::More  => 0.80
    , IO::Mux     => 0.11
    , Log::Report => 0.91
    , LWP         => 5.834
    , Time::HiRes => 1.9719
    }
 , EXE_FILES    => []
 , AUTHOR       => 'Mark Overmeer'
 , ABSTRACT     => 'IO::Mux based HTTP'
 , LICENSE      => 'perl'
 );

### used by oodist during production of distribution
sub MY::postamble { <<'__POSTAMBLE' }

# for DIST
RAWDIR          = ../public_html/io-mux-http/raw
DISTDIR         = ../public_html/io-mux-http/source
LICENSE         = artistic

# for POD
FIRST_YEAR      = 2011
EMAIL           = perl@overmeer.net
WEBSITE         = http://perl.overmeer.net/

EXTENDS		= ../AnyDaemon:../IOMux
PODTAIL		= ../daemon-shared-podtail
__POSTAMBLE
