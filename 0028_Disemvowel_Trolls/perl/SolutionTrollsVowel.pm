package SolutionTrollsVowel;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(disemvowel);

sub disemvowel {
    my ($str) = @_;
    $str =~ s/[aeiou]//gi;
    return $str;
}