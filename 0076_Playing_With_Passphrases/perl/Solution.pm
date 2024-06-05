package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(play_pass);
use Data::Dumper;

sub play_pass {
    my ( $s, $n ) = @_;
    
    #shift each letter by a given number but the transformed letter must be a letter (circular shift),
    # create a hash of the alphabet
    my %alpha_letter_key = ();
    my %alpha_value_key = ();
    my $counter = 0;
    foreach( "A" ... "Z" )
    {
        $alpha_value_key{$counter} = $_;
        $alpha_letter_key{$_} = $counter;
        $counter++;
    }
    
    my $new_s = "";
    foreach( split( "", $s ) )
    {
        my $position = 0;
        if( defined $alpha_letter_key{$_} )
        {
            if( $alpha_letter_key{$_} + $n > 25 )
            {
                $position = $alpha_letter_key{$_} + $n - 26;
            }
            else
            {
                $position = $alpha_letter_key{$_} + $n;
            }   
            
            $new_s .= $alpha_value_key{$position};
        }
        else
        {
            $new_s .= $_;
        }
    }
    
    #replace each digit by its complement to 9,
    $s = $new_s;
    $new_s = "";
    foreach( split( "", $s ) )
    {
        if( $_ =~ m/[0-9]+/ )
        {
            $new_s .= 9 - $_
        }
        else
        {
            $new_s .= $_;
        }
    }
    
    #keep such as non alphabetic and non digit characters,

    
    #downcase each letter in odd position, upcase each letter in even position (the first character is in position 0),
    $s = $new_s;
    $new_s = "";
    $counter = 0;
    foreach( split( "", $s ) )
    {
        if( $counter % 2 == 0 )
        {
            $new_s .= uc( $_ );
        }
        else
        {
            $new_s .= lc( $_ );
        }
        $counter++;
    }
    
    #reverse the whole result.
    $new_s = reverse( $new_s );
    
    return $new_s;
}