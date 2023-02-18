package SolutionFakeBinary;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(comp);

sub fake_bin {
    my ($bin) = @_;
    $bin =~ s/[0-4]/0/g;
    $bin =~ s/[5-9]/1/g;
    return $bin;
}