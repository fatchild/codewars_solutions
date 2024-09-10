use strict;
use warnings;
use Test::More;
use Solution qw(perimeter);

sub dotest { 
    my ($n, $exp) = @_;
    my $ans = perimeter($n);
    is($ans, $exp, "perimeter: $n\n");
};

subtest "basics" => sub {
    dotest(0, 4);
    dotest(1, 8);
    dotest(5, 80);
    dotest(7, 216);
};

done_testing();


