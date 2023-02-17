package SolutionCompareArrays;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(comp);
use Data::Dumper;

# input two array_refs; output 1 for true, 0 for false
sub comp {
    my ( $a1, $a2 ) = @_;
    
    my @a1_array = @$a1;
    my @a2_array = @$a2;

    # They need to be the same length in order to contain the same number of squares and roots
    return 0 if scalar @a1_array != scalar @a2_array;
    
    my %a1_hash = ();
    my %a2_hash = ();
    
    for my $i (@a1_array) { defined $a1_hash{$i*$i} ? $a1_hash{$i*$i} = 1 : $a1_hash{$i*$i} += 1; }
    for my $i (@a2_array) { defined $a2_hash{$i} ? $a2_hash{$i} = 1 : $a2_hash{$i} += 1; }
    
    return 0 if keys %a1_hash != keys %a2_hash;
    
    # Loop through the hash and make sure is is the same as the other one
    for my $key (keys %a1_hash) { return 0 if ! defined $a2_hash{$key} || defined $a2_hash{$key} && $a2_hash{$key} ne $a1_hash{$key}; }
    
    return 1;
}