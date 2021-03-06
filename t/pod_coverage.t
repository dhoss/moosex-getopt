#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
plan skip_all => 'set RELEASE_TESTING to run these tests'
  unless $ENV{RELEASE_TESTING};

eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" if $@;

all_pod_coverage_ok();
