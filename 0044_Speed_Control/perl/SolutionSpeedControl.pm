package SolutionSpeedControl;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(gps);
use POSIX;

# parameters: time record, array_ref; return: integer
sub gps {
    my ($s, $x, $u) = @_;
    
    # Loop through the array and find the biggest gap
    my $gap = 0;
    my $last_distance = 0;
    for my $distance (@$x) {
        # From the biggest gap work out what the average speed is and return the floor of it
        if ($distance > 0){
            $gap = $distance - $last_distance if $distance - $last_distance > $gap;
        }
        $last_distance = $distance;
    }
    
    return floor((3600 * $gap) / $s);
}
