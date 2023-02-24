package SolutionPopulationGrowth;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(nb_year);
use POSIX; # Cannot have half a person

sub nb_year {
    my ($p0, $percent, $aug, $p) = @_;
    
    my $y = 0;
    while ($p0 < $p) {
        $y += 1;
        $p0 = floor($p0 + ($p0 * ($percent / 100)) + $aug);
    }
    return $y;
}