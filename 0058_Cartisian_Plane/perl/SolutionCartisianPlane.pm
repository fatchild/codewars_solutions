package SolutionCartisianPlane;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(sumin sumax sumsum);

sub sumin {
    my ($n) = @_;
    
    my $ans = 0;
    my $n_opp = $n;
    for (1 .. $n) {
        $ans += ($_*($_+1)/2)+($n-$_)*$_;
        $n_opp--;
    }
    return $ans;
}
sub sumax {
    my ($n) = @_;
    
    my $ans = 0;
    my $last_n = $n*$n;
    my $n_opp = $n-1;
    for (1 .. $n) {
        $ans += $last_n;
        $last_n -= $n_opp;
        $n_opp--;
    }
    return $ans;
}
sub sumsum {
    my ($n) = @_;
    
    my $ans = 0;
    my $n_opp = $n;
    for (1 .. $n) {
        $ans += (($_+$n)*(($_+$n)+1)/2)-($_*($_+1)/2);
        $n_opp--;
    }
    return $ans;
}