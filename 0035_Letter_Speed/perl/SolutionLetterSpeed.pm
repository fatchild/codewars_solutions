package SolutionLetterSpeed;
use strict;
use warnings;
use Data::Dumper;

sub speedify {
    my ($input) = @_;
    
    my %alpha_num = ();
    my @out_array = ();
    my @in_array = split "", $input;
    
    my $i = 0;
    for ("A" ... "Z") {
        $alpha_num{$_} = $i;
        $i++;
    }
    
    for (my $n = 0; $n < scalar @in_array; $n++) 
    {
        for (0 ... $alpha_num{$in_array[$n]}) 
        {
            if ($_ == $alpha_num{$in_array[$n]}) 
            {
                defined $out_array[$_+$n] ? $out_array[$_+$n] = $in_array[$n] : push(@out_array, $in_array[$n]);     
            } 
            elsif (! defined $out_array[$_+$n]) 
            {
                push @out_array, " ";
            }
        }
    }
    
    return join "", @out_array;
}

1;