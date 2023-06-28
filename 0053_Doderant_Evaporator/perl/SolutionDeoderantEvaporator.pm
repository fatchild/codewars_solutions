package SolutionDeoderantEvaporator;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(evaporator);

# input: $content, $evap_per_day, $threshold
sub evaporator {
    my ($content, $evap_per_day, $threshold) = @_;
    
    $threshold = $content * ($threshold/100);
    
    my $days = 0;
    while ($content > $threshold)
    {
        $content = $content * (1-($evap_per_day/100));
        $days++;
    }
    
    return $days;
}