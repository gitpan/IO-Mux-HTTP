#!/usr/bin/env perl

use Test::More tests => 4;

use_ok('IO::Mux::HTTP');
use_ok('IO::Mux::HTTP::Client');
use_ok('IO::Mux::HTTP::Service');
use_ok('IO::Mux::HTTP::Server');
