package SolutionNewAverage;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(new_avg);
use POSIX; 

# parammeter: array_ref, integer;
sub get_avg {
    my ($lst_in) = @_;
    
    my $avg = 0;
    for (@$lst_in) {
        $avg += $_;
    }
    $avg = $avg / scalar @$lst_in;
    
    return $avg;
}

# parammeter: array_ref, integer;
sub new_avg {
    my ($lst_in, $navg) = @_;
    
    my $avg_a = get_avg($lst_in);
    my $list_in_length = scalar @$lst_in;

    my $ans = sprintf("%.0f", (($navg - $avg_a) * $list_in_length) + $navg);
    
    return $ans > 0 ? $ans : -1;
    
}