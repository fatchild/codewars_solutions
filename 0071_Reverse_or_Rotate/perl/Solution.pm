package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(find_nb);

sub find_nb {
    my ($m) = @_;
    
    my $n = 0;
    my $ans = 0;
    
    while( $ans < $m )
    {
        $n++;
        $ans += $n ** 3;
        return -1 if $ans > $m;
        return $n if $ans == $m;
    }
}