package SolutionEvenOdd;
use strict;
use warnings;

sub even_or_odd {
    my ($number) = @_;
    $number % 2 == 0 ? return "Even" : "Odd" ;
}

1; 