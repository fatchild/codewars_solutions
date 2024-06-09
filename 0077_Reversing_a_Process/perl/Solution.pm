package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(decode);
use Data::Dumper;

sub decode {
    my ( $s ) = @_;
    
    # split bits
    my @parts = $s =~ /^(\d+)([a-z]+)/;
    my $num = $parts[0];
    my $str = $parts[1];
    
    # useful hashes for alpha in both directions
    my $c = 0;
    my %alpha_num = ();
    my %num_alpha = ();
    for ( "a"..."z" )
    {
        $alpha_num{ $_ } = $c;
        $num_alpha{ $c } = $_;
        $c++;
    }
    
    # rainbow table for the original letter before encoding
    $c = 0;
    my %encode_mods = ();
    for my $input ( 0 ... 25 )
    {
            $encode_mods{ $input * $num % 26 } = $input;
    }
    
    # we will not have 26 keys in the hash if the salt chosen produces duplicate mods
    return "Impossible to decode" if scalar keys %encode_mods < 26;
    
    # find number of letter
    my $decoded = "";
    for ( split( "", $str) )
    {
        my $decoded_char = $num_alpha{ $encode_mods{ $alpha_num{ $_ } } };
        $decoded .= $decoded_char;
    }

    return $decoded;
}