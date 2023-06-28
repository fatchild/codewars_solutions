package SolutionDivisibleSeven;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(seven);

# return array_ref
sub seven {
    my ($n) = @_;
        
    my $c = 0;
    while (length($n) > 2 )
    {
        $n = substr($n, 0, length($n) - 1) - (2 * substr($n, -1, 1));
        $c++;
    }
    
    return [$n, $c];
}