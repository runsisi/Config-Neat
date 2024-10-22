#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';

use FindBin;
use lib "$FindBin::Bin/../perl/lib";

use Config::Neat::Render;
use Config::Neat;

my $parser = Config::Neat->new();
my $config = $parser->parse_file($ARGV[0]);

my $render = Config::Neat::Render->new({indentation => 2, key_spacing => 1, brace_under => 0, align_all => undef, undefined_value => undef});

print $render->render($config);
