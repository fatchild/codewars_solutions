package SolutionYearQuarter;
use strict;
use warnings;
use POSIX;

sub quarter_of {
    my ($month) = @_;
    return ceil($month/3);
}

1;