package SolutionMaxLengthDiff;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(mx_dif_lg);

# parameters: array; return sorted array ref by length
sub sort_by_length {
    my @s_sorted = sort { length($a) <=> length($b) } @{shift @_};
    
    return \@s_sorted;
}

sub max_range {
    my ($s1, $s2) = @_;
    
    my $diff_a = length(@{$s1}[-1]) - length(@{$s2}[0]);
    my $diff_b = length(@{$s2}[-1]) - length(@{$s1}[0]);
    
    return $diff_a > $diff_b ? $diff_a : $diff_b;
}

# parameters: two array_ref of strings; return an integer
sub mx_dif_lg {
    my ($s1, $s2) = @_;
    
    return -1 if scalar @$s1 == 0 || scalar @$s2 == 0;
    
    my $s1_sorted = sort_by_length($s1);
    my $s2_sorted = sort_by_length($s2);
    
    # compare the difference in length between the longest and the shortest from the other array
    return max_range($s1_sorted, $s2_sorted);
}
