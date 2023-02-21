package SolutionVapourCode;

use 5.30.0;
use strict;
use POSIX;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(vaporcode);

sub vaporcode{
    my ($str_in) = @_;
    $str_in =~ s/ //g;
    return join("  ", split("", uc($str_in)));
}