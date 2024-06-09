package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(mean variance);

# parameters: rainfall_data (string), town (string)
sub mean {
    my ( $d, $twn ) = @_;
    
    # find the mean
    my $sum = 0;
    my $data_count = 0;
    for ( find_town_data( $d, $twn ) )
    {
        my ( $read ) = $_ =~ /([0-9\.]+)/;
        $sum += $read;
        $data_count++;
    }
    return -1 if $data_count == 0;
    my $mean = $sum / $data_count;
    
    return $mean;
}
sub variance {
    my ( $d, $twn ) = @_;
    
    my $mean = mean( $d, $twn );
    
    my @data = find_town_data( $d, $twn );
    my $data_count = scalar @data;
    my $variance = 0;
    for ( @data )
    {
        my ( $read ) = $_ =~ /([0-9\.]+)/;
        $variance += ( $read - $mean ) ** 2;
    }
    return -1 if $data_count == 0;
    
    return $variance / $data_count;
}

sub find_town_data {
    my ( $d, $twn ) = @_;
    
    my @towns_data = split( "\n", $d );
    my $town_data;
    for ( @towns_data )
    {
        my @row = split( ":", $_ );
        $town_data = $row[1];
        return split( ",", $town_data ) if $row[0] eq $twn;
    }
    
    return ();
}