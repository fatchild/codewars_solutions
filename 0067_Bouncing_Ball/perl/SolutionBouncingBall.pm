package SolutionBouncingBall;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(bouncing_ball);

sub bouncing_ball {
    my ($h, $bounce, $window) = @_;
    
    return -1 if ($h <= 0 || $bounce <= 0 || $bounce >= 1 || $window >= $h);
    
    my $n = 0;
    
    while($h > $window)
    {
        $h = $h * $bounce;
        
        $n += 1; # Fall down
        $n += 1 if $h > $window; # Does it go up past the window
    }
    
    return $n;
}