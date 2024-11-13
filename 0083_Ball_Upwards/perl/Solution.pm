package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(max_ball);

sub vert_disp {
    my ( $initial_velocity, $time ) = @_;
    
    $time = $time / 10;
    
    return (( $initial_velocity / 3.6 ) * $time) - ( 0.5 * 9.81 * $time * $time );
}

sub max_ball {
    my ( $initial_velocity ) = @_;
    
    my $last_sample = 0;
    my $time = 1;
    while ( 1 )
    {
        my $sample = vert_disp( $initial_velocity, $time );
        return $time - 1 if $sample < $last_sample;
        $last_sample = $sample;
        $time++;
    }
}
