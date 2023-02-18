package SolutionRemoveSpaces;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(comp);

sub no_space {
    my ($in) = shift @_; 
    $in =~ s/ //g;
    return $in;
}