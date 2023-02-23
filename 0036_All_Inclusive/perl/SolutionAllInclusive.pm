package SolutionAllInclusive;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(contain_all_rots);

# input: string, array_ref of strings; output: 1 for true or 0 for false 
sub contain_all_rots {
    my ($string, $arr) = @_;
    
    my @rots = @$arr;
    
    return 1 if $string eq "" || $string eq " ";
    
    my @str_array = split "", $string;
    
    for (0 ... length($string) + 1) {
        my $rot = splice(@str_array, 0, 1);
        push @str_array, $rot;

        my $found = 0;
        map { $found = 1 if join("", @str_array) eq $_ } @rots;
        
        return 0 if !$found;
    }
    
    return 1;
}