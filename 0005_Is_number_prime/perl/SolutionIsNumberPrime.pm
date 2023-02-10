package SolutionIsNumberPrime;

use 5.030;
use strict;
use warnings;
use Exporter qw(import);

our @EXPORT_OK = qw(is_prime);

sub is_prime {
    my ($n) = @_;
    
    # even numbers aren't prime unless it's 2, 1 is also not a prime; this covers the special cases
    # negative numbers are not prime, I think... https://math.stackexchange.com/a/1002481 my maths is not that in depth
    # but the tests suggest that "Negative numbers cannot be prime by definition"
    return 0 if $n % 2 == 0 && $n != 2 || $n == 1 || $n < 0;
    
    # Check odd number from 3 to half the total
    # this should be about O(sqrt(N)/2) in worst case time complexity
    for (my $i=3; $i<=sqrt($n); $i=$i+2) {
        if ($n % $i == 0)
        {
            return 0;
        } 
    } 
    return 1;
}

1;