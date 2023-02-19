package SolutionOddPyramid;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(comp);

# input int; output int
sub row_sum_odd_numbers {
    my ($in) = @_;
    
    my $out = 0;
    
    return $in if $in == 1;
    
    $out = ($in*$in)-($in-1);

    my $sum = $out;
    for (1...$in-1){
        $out = $out + 2;
        $sum += $out;
    }
    
    return $sum;
}