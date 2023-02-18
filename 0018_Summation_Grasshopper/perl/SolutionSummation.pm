use strict;
package SolutionSummation;
use POSIX;

sub summation{
    my ($int) = @_;
    return 1 if $int == 1;
    return ($int * ($int/2))+($int/2) if $int % 2 == 0;
    return ($int * (($int+1)/2));
}

1;