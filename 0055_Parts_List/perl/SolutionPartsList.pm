package SolutionPartsList;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(part_list);

# parameter: array_ref of strings; return: array_ref of array_ref of two strings
sub part_list {
    my ($s) = @_;
    
    my @s = @$s;
    my @answer = ();
    
    my $c = 0;
    for (2..scalar(@s))
    {   
        my @split = @s;
        
        my $first = join(" ", splice(@split, 0, $c+1));
        my $second = join(" ", @split);
        
        push @answer, ([$first, $second]);
        
        $c++;
    }
    
    return \@answer;
}