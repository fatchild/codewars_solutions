package SolutionMakeNegative;
use strict;
use warnings;

sub make_negative {
    my ($num) = @_;
    $num <= 0 ? return $num : return $num-($num*2);
}

1;