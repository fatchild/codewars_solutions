package SolutionBoolString;
use strict;
use warnings;

sub bool_to_word {
    my ($bool) = @_;
    $bool ? "Yes" : "No";
}

1; 