package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(prime_factors);

sub find_whole_divisor {
    my ( $n, $i ) = @_;
    my $c = 0;
    
    while( $n % $i == 0 )
    {
        $c++;
        $n = $n / $i;
    }
    return( $n, $i, $c );
}

sub prime_factors {
    my ( $n ) = shift @_;
    
    my %f = ();
    my $i = 2;
    my $c = 0;

    ( $n, $i, $c ) = find_whole_divisor( $n, $i );
    $f{$i} = $c if $c > 0;
    
    for( $i = 3; $i <= sqrt( $n ) + 1; $i = $i + 2)
    {
        ( $n, $i, $c ) = find_whole_divisor( $n, $i );
        $f{$i} = $c if $c > 0;
    }
    
    $f{$n} = 1 if $n > 2;
    
    my $out = "";
    for my $k ( sort { $a <=> $b } keys %f )
    {
        if( $f{$k} == 1 )
        {
            $out .= "($k)";
        }
        else
        {
            $out .= "($k**" . $f{$k} . ")";
        }
    }
    
    return $out;
}