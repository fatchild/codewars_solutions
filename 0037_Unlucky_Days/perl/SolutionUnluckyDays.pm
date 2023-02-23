package SolutionUnluckyDays;

use 5.030;
use strict;
use warnings;
use Exporter qw(import);
use DateTime;

our @EXPORT_OK = qw(unluckyDays);

sub unluckyDays {
    my $y = shift @_;

    my $dt;    
    my $c = 0;
    for (1 ... 12) { 
        $dt = DateTime->new( year => $y, month => $_ , day => 13 );
        $c += 1 if $dt->day_of_week == 5 && $dt->day == 13;
    }
    return $c;
}

1;
