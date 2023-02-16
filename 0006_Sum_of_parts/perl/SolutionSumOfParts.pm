package SolutionSumOfParts;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);

our @EXPORT_OK = qw(parts_sums);

sub parts_sums {
    my @input_array = @_;

    return (0) if scalar @input_array == 0;
    
    my @output_array = (0);

    # Loop through input array and sum elem with last element of output array, finally pushing into the output array
    for (my $i = scalar @input_array; $i > 0; $i--) {
        push @output_array, $output_array[-1] + $input_array[$i - 1];
    }
    
    return reverse @output_array;
}
