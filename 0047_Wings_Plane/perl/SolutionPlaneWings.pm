package SolutionPlaneWings;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(make_valley);

# parameter: array_ref; result: array_ref
sub make_valley {
    my $lst = shift @_;
    
    # sort 
    my @sorted_lst = sort { $a <=> $b } @$lst;
    
    my $winged_lst = [];
    
    return $winged_lst if scalar @sorted_lst == 0;
    
    unshift @$winged_lst, shift @sorted_lst if scalar( @sorted_lst ) % 2 == 0;
    
    # loop flipping between wings
    my $wing = "left";
    for my $elem (@sorted_lst) {
        if ( $wing eq "right" ) {
            push @$winged_lst, $elem;
            $wing = "left";
        } else {
            unshift @$winged_lst, $elem;
            $wing = "right";
        }
    }
    
    return $winged_lst;
}