package SolutionEasyLine;

use 5.30.0;
use strict;
use warnings;
use bigint;
use Exporter qw(import);
our @EXPORT_OK = qw(easy_line);

# Heavily relied on this for my lack of skills in math https://www.geeksforgeeks.org/pascal-triangle/

sub easy_line {
    my ($n) = @_;
    $n++;
    
    my $C = 1;
    my $ans = 0;
    
    for (my $k = 1; $k <= $n; $k++)
    {
        $ans += $C**2;
        $C = $C * ($n - $k) / $k;
    }
    
    return $ans;
}