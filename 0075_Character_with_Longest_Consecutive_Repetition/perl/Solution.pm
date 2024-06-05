package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(longest_repetition);

use Data::Dumper;

sub longest_repetition{
    my ($n) = @_;
    
    my @run_longest = ( "", 0 );
    my @run = ( "", 0 );
    
    for my $letter ( split( "", $n ))
    {
        if( $letter eq $run[0] )
        {
            $run[1] += 1;
        }
        else
        {
            @run = ( $letter, 1 );
        }
        
        if( $run[1] > $run_longest[1] )
        {
            @run_longest = @run;
        }
    }
    
    return \@run_longest;
}