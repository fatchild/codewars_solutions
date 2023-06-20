package SolutionDryPotatoes;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(potatoes);

sub potatoes {
    my ($p0, $w0, $p1) = @_;

    my $dry_weight = ((100-$p0)/100)*$w0;
    my $new_weight = ($dry_weight / (100-$p1))*100;
    
    $new_weight = int ($new_weight) if ($new_weight =~/-*\d+\.\d+/);
    
    return $new_weight;
}