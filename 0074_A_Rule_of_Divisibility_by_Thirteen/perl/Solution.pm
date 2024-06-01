package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(thirt);

sub thirt {
    my ( $n ) = @_;
    
    my @thirt_mods = (1, 10, 9, 12, 3, 4);
    
    my $sum = $n;
    my $sum_last = 0;
    while( $sum != $sum_last )
    {
        my @n_split = split( "", reverse( $sum ) );
        $sum_last = $sum;
        $sum = 0;
        for( my $n = 0; $n < scalar @n_split; $n++ )
        {
            my $mod_n = $n % 6;
            $sum += $n_split[$n] * $thirt_mods[$mod_n];
        }
    }
    return $sum;
}