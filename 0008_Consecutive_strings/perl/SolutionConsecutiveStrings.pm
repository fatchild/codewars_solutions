package SolutionConsecutiveStrings;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(longest_consec);

# parameters: array_ref, integer; return: string
sub longest_consec {
    my @input_array = @{ shift @_ };
    my $k = shift @_;
    
    my $word_joined = "";
    for (my $i = $k - 1; $i < scalar @input_array; $i++) {
        $word_joined = join "", @input_array[$i-($k-1) ... $i] if length join ("", @input_array[$i-($k-1) ... $i]) > length $word_joined;
    }
    return $word_joined;
}