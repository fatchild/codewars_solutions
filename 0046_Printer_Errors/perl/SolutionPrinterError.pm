package SolutionPrinterError;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(printer_error);

sub printer_error {
    my $s = shift @_;

    my $total = length($s);
    
    $s =~ s/[a-m]+//g;  # Remove any valid characters leaving the incorrect ones
    $s = length($s);
    return "$s/$total";
}