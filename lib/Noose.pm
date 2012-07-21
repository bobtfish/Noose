package Noose;
use strict;
use warnings;
use Import::Into;
use Module::Runtime qw/ require_module /;

sub import {
    my $caller = caller;

    my $pkg = rand(1) > .5 ? 'Moo' : 'Moose';
    require_module $pkg;

    $pkg->import::into($caller);
}

1;

