use strict;
use warnings;
use Test::More;
use SolutionSpeedControl qw(gps);

sub dotest {
    my $merr = 1;
    my ($s, $x, $exp) = @_;
    my $ans = gps($s, $x);
    my $inrange = abs($ans - $exp) <= $merr;
    my $sx = join ",", @$x;
    is($inrange, 1, "$s; $sx -> shoud return $exp, got $ans");
}

subtest "basics_dist" => sub {
    my $x = [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61];
    my $s = 20;
    my $u = 41;
    dotest($s, $x, $u);
    $x = [0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25];
    $s = 12;
    $u = 219;
    dotest($s, $x, $u);
    $x = [];
    $s = 19;
    $u = 0;
    dotest($s, $x, $u);
    $x = [0.0];
    $s = 19;
    $u = 0;
    dotest($s, $x, $u);
};

done_testing();