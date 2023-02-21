package SolutionMumbling;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(accum);

sub accum {
    my($in) = shift @_;
    
    my $out = "";
    my @match = $in =~ m/(\w)/gi;
    
    for (my $i = 0; $i < scalar @match; $i++) {
        $out .= "-" if $i != 0;
        $out .= uc $match[$i];
        for (1...$i) {
            $out .= lc $match[$i];
        }
    }
    return $out;
}

