use strict;
use warnings;
use inc::Module::Install;

all_from 'lib/Noose.pm';

requires 'Moose';
requires 'Moo';
requires 'Import::Into';
requires 'Module::Runtime';

WriteAll;

