
package SolutionSquareStrings;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(compose);

sub compose {
    my ($s1, $s2) = @_;
    
    my @ans = ();
    
    # Split the two stings into an array
    my @s1 = split "\n", $s1; 
    my @s2 = split "\n", $s2; 
    
    # Get the size of each substring
    my $size = length $s1[0];
    
    # Loop through the array and compose the new string
    my $n = 1;
    for my $str (@s1)
    {
        push @ans, substr( $str, 0, $n ).substr( $s2[-$n], 0, ($size+1)-$n );
        $n++;
    }

    return join("\n", @ans);
}
