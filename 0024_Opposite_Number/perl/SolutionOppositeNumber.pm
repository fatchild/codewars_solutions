package SolutionOppositeNumber;
use strict;
use warnings;

sub opposite {
    my ($num) = @_;
    $num > 0 ? return -$num : return abs($num);
}

1; 