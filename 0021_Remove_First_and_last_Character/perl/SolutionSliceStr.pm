package SolutionSliceStr;
use strict;
use warnings;

sub remove_char {
    my ($str) = @_;
    return "" if length $str < 2;
    return substr($str, 1, length($str) - 2);
}

1; 