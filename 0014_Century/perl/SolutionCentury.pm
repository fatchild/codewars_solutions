package SolutionCentury;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(comp);
use POSIX;

sub century {
    my ($y) = @_;
    return floor(($y-1) / 100)+1;
}