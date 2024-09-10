package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(perimeter);

sub sum_array {
    my ( $arr ) = @_;
    my @arr = @$arr;
    
    my $t = 0;
    for ( @arr ) { $t += $_; }
    return $t;
}

sub perimeter {
    my ( $n ) = @_;
    
    return 4 if $n + 1 == 1; # The easy one
    
    # store the fib sequence
    my @f_seq = ( 0, 1 );
    for my $i ( 0 ... $n + 1 )
    {
        push @f_seq, $f_seq[$i-1] + $f_seq[$i-2] if $i > 1;
    }

    return sum_array(\@f_seq) * 4;
}