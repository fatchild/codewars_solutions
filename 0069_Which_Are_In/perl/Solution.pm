package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(in_array);

# parameters: array_ref, array_ref; return array_ref
sub in_array {
    my ($arr1, $arr2) = @_;
    
    my %out = ();
    
    for my $word_check ( @$arr1 )
    {
        for my $word ( @$arr2 )
        {
            if ( $word =~ m/\Q$word_check/ )
            {
                $out{$word_check} = 1;
            }
        }
    }
    
    my @arr_out = sort keys %out;
    return \@arr_out;
}