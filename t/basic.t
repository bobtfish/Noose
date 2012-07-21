use strict;
use warnings;
use Test::More;

BEGIN {
ok eval {
    package Foo;
    use Noose;

    has foo => (
        is => 'ro',
    );

    1;
};
}

my $i = Foo->new(foo => 'bar');
is $i->foo, 'bar';

done_testing;

