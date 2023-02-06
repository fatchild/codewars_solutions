package SolutionRotation;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(max_rot);

sub rot {
    my ( $int, $start_idx ) = @_;
    
    my @rot_array = split("", $int);
    my @rot_num = splice(@rot_array, $start_idx, 1);
    
    push(@rot_array, @rot_num);

    return join("", @rot_array);
}

sub max {
    my @input_array = sort { $a <=> $b } @_;
    
    return $input_array[-1];
}

sub max_rot {
    my $input_num = shift @_;
    
    my @collect_rots = ($input_num);
    
    for (0...length($input_num)-2){
        push(@collect_rots, rot($collect_rots[$_], $_));
    }
    
    return max(@collect_rots);
}