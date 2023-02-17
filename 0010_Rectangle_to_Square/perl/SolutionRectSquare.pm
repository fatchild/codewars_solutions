package SolutionRectSquare;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(sq_in_rect);

sub sq_in_rect {
    my ($l, $w) = @_;
    
    return [] if $l == $w;
    
    my $output_array = [];
    
    while ($l > 0 && $w > 0) {
        # Find the smallest side, i.e. the side which will fit a square
        my $sm = $l >= $w ? $w : $l;
        my $lg = $l >= $w ? $l : $w;
    
        # Add the biggest square size that will fit into rect
        push @$output_array, $sm;
        
        $lg -= $sm;
        
        $l = $sm;
        $w = $lg;
    }
    
    return $output_array;
};