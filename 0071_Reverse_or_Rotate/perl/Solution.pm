package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(revrot);

sub revrot {  
    my ($string, $size) = @_;

    return "" if $size <= 0 || $string eq "";
    return "" if length( $size ) > length( $string );
    
    # chunks
    # a chunk here is a substring of the initial string) of size sz
    my @chunks = ();
    while( length( $string ) > 0 )
    {
        if( length( $string ) < $size )
        {
            $string = "";
        }
        else
        {
            my $chunk = substr( $string, 0, $size );
            # If the sum of a chunk's digits is divisible by 2, reverse that chunk
            my $sum_of_string = 0;
            my @sum_string = split( "", $chunk );
            for ( @sum_string ) { $sum_of_string += $_ }
            if( $sum_of_string % 2 == 0 )
            {
                $chunk = reverse( @sum_string );
            }
            else
            {
                $chunk = substr( $chunk, 1, $size-1 ) . substr( $chunk, 0, 1 );
            }
            push @chunks, $chunk;
            $string = substr( $string, $size, length( $string ) );
        }
    }
    return join( "", @chunks );
}