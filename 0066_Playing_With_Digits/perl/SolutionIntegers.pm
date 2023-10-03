package SolutionIntegers;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(dig_pow);

sub dig_pow {
    my ($n, $p) = @_;
    
    my @digits = split('', $n);
    
    my $num = 0;
    for my $d (@digits)
    {
        $num += $d ** $p;
        $p++;
    }
    
    my $ans = $num % $n > 0 ? -1 : $num / $n;
    
    return $ans;
}