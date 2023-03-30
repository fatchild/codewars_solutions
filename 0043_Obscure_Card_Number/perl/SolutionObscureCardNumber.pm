package SolutionObscureCardNumber;
use strict;
use warnings;

sub maskify {
    my ($str) = @_;
    
    return $str if length $str < 4;
    
    my @list_of_nums = split( "", $str );
    splice( @list_of_nums, 0, -4, ("#") x (scalar @list_of_nums-4));
    my $obscured_str = join( "", @list_of_nums );
    
    return $obscured_str;
}

1; 