package SolutionCrusoe;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(crusoe);

use Math::Trig;

sub crusoe {
    my ($n, $d, $ang, $distmult, $angmult, @exp) = @_;
    
    my $last_x = 0;
    my $last_y = 0;
    for (my $i = 0; $i <= $n-1; $i++)
    {
        $d *= $distmult if $i != 0;
        $ang *= $angmult if $i != 0;
    
        my $x = $d * cos(deg2rad($ang)) + $last_x;
        my $y = $d * sin(deg2rad($ang)) + $last_y;
        
        return ($x, $y) if $i == $n-1;
        
        $last_x = $x;
        $last_y = $y;
    }
}