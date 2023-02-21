package SolutionEasyWallpaper;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(wall_paper);
use POSIX;

my @numbers = ("zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty");

sub wall_paper {
    my ($l, $w, $h) = @_;
    
    return $numbers[0] if $l == 0 || $w == 0 || $h == 0;
    
    my $role_area = 0.52*10;
    my $wall_area = ((($l*$h)*2)+(($w*$h)*2));
    my $num_sheets = ceil(($wall_area/$role_area)*1.15);
    
    return $numbers[$num_sheets];
}