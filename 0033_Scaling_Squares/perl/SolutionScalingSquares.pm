package SolutionScalingSquares;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(scale);

sub scale {
    my ($s, $k, $n) = @_;
    
    my @out = ();
    for (split("\n", $s)) {
        my @out_row = ();
        for (split("", $_)) {
            push @out_row, ($_ x $k);
        }
        push(@out, ((join("", @out_row)) x $n));
    }
    return join "\n", @out;
}

