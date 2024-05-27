package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(meeting);

sub meeting {
    my ( $string ) = shift @_;
    
    $string = uc( $string );
    
    my @names = split( ";", $string );
    
    my @names_sorted = ();
    for my $name ( @names )
    {
        my @name_parts = split( ":", $name );
        push @names_sorted, $name_parts[1] . ", " . $name_parts[0];
    }
    $string = "(" . join( ")(", sort @names_sorted ) . ")";
    
    return $string;
}