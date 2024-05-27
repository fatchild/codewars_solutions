package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(nb_months);

sub depreciateValue
{
    my ( $value, $percentLoss ) = @_;
        
    return $value * ( ( 100 - $percentLoss ) / 100 );
}

sub nb_months {
    my ($startPriceOld, $startPriceNew, $savingperMonth, $percentLossByMonth) = @_;
    
    my $month = 0;
    my $oldCarPrice = $startPriceOld;
    my $newCarPrice = $startPriceNew;
    my $savingsTotal = $savingperMonth;
    
    my $available = $startPriceOld - $startPriceNew;
    while( $available < 0 )
    {
        $month++;
        $percentLossByMonth += 0.5 if $month % 2 == 0;
        
        
        $oldCarPrice = depreciateValue( $oldCarPrice, $percentLossByMonth );
        $newCarPrice = depreciateValue( $newCarPrice, $percentLossByMonth );
        
        $available = $savingsTotal + $oldCarPrice - $newCarPrice;
        
#         print "end month $month: percent_loss $percentLossByMonth available $available\n";
        
        $savingsTotal += $savingperMonth;
    }
    
    $available = sprintf( "%.0f", $available );
    return $month . " " . $available;
}