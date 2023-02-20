package SolutionCountVowels;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(get_count);

sub get_count {
    my ($str) = @_;
    my @count = $str =~ m/[aeiou]/g;
    return scalar @count;
}