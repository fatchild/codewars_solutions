package Solution;
use strict;
use warnings;

sub is_leap_year {
    my ($year) = @_;
    
    $year % 4 == 0 && ( $year % 100 != 0 || $year % 400 == 0 ) ? return 1 : return 0;
}

1; 