package SolutionCountDigit;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(nb_dig);

sub nb_dig {
    my ($n, $d) = @_;
    
    my $num;

    for (my $i = 0; $i < $n+1; $i++) {
        for (split "", ($i**2)) {
            $num += 1 if $_ == $d;
        }
    }
    
    return $num;
}