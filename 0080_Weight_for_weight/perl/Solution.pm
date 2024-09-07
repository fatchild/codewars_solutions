package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(order_weight);

sub sum {
    my ( $i ) = @_;
    
    my $io = 0;
    for my $d ( split "", $i )
    {
        $io += $d;
    }
    
    return $io;
}

sub order_weight {
    my ( $s ) = @_;
    
    my @w = split " ", $s;

    my %ws = ();
    
    # Store sum of digits as the key and create or add to value array
    for my $w ( @w )
    {
        if( exists $ws{ sum ( $w ) } )
        {
            push @{ $ws{ sum ( $w ) } }, $w;
        }
        else
        {
            $ws{ sum ( $w ) } = [ $w ];
        }
    }
    
    # Sort keys
    my @out = ();
    for my $k ( sort { $a <=> $b } keys %ws ) 
    {
        # Sort values
        for my $n ( sort @{ $ws{ $k } } )
        {
            push @out, $n;
        }
    }
    
    return join " ", @out;
}