package SolutionSquaredString;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(hor_mirror vert_mirror oper);

sub hor_mirror {
    return join("\n", reverse(split("\n", $_[0])));    
}
sub vert_mirror {
    return join("\n", map { scalar reverse $_ } split("\n", $_[0]));
}
sub oper { $_[0]->($_[1]) };