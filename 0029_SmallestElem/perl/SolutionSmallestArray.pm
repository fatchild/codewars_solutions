package SolutionSmallestArray;

use strict;
use warnings;

sub nthSmallest {
    my ($list, $n) = @_;
    my @sorted = sort { $a <=> $b } @{$list};
    return $sorted[$n-1];
}

1;