package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(dir_reduc);

sub dir_reduc {
    my ($dirs) = @_;
    my @dirs = @{$dirs};
    
    my %op = (
        "NORTH" => "SOUTH",
        "SOUTH" => "NORTH",
        "EAST"  => "WEST",
        "WEST"  => "EAST",
    );
    
    my @dirs_reduc = @dirs;

    # Loop through the array removing adjacent opposite directions until we have a single element array or the array doesn't reduce any more
    while( 1 )
    {   
        return \@dirs_reduc if scalar @dirs <= 1;
        
        @dirs = @dirs_reduc;
        for ( my $i = 1; $i < scalar @dirs; $i++ )
        {
            if( $dirs[$i] eq $op{ $dirs[$i-1] } )
            {
                splice( @dirs_reduc, $i - 1, 2);
                last;
            }
        }
        
        return \@dirs_reduc if scalar @dirs == scalar @dirs_reduc;
    }
}