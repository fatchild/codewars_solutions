package SolutionTwoOne;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(longest);

sub longest {
    my ($s1, $s2) = @_;
    
    # Join the strings, split them into an array, sort the array
    my @ordered = sort split("", join("",($s1, $s2))); 
    
    # Loop through the array or sorted letters and remove duplicates
    my $unique = "";
    my $last = "";
    for ( @ordered )
    {
        $unique .= $_ if $_ ne $last;
        $last = $_;
    }

    return $unique;
}