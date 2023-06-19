package SolutionTargetDate;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(date_nb_days);

use DateTime;
use POSIX;

# Using This: https://www.calculatorsoup.com/calculators/financial/compound-interest-calculator.php
# and this https://www.mathsisfun.com/money/compound-interest-derivation.html
sub date_nb_days {
    my ($P, $A, $p) = @_;
    
    my $dt = DateTime->new(
        year       => 2016,
        month      => 01,
        day        => 01
    );
    
    my $r = $p/36000;
    
    my $ans_t = log($A/$P) / ( log(1 + $r) );
    
    $dt->add( days => ceil($ans_t) );
    
    return $dt->ymd;
}