use strict;
package SolutionRadixSort;
sub sortByBit{
    my @bits = @_;
    my $sum = 0;
    map { $sum += 2**$_ } @bits;
    return $sum;
}

1;