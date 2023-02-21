use strict;
use warnings;
use Test::More;
use SolutionEasyWallpaper qw(wall_paper);

sub testing {
    my ($l, $w, $h, $exp) = @_;
    my $ans = wall_paper($l, $w, $h);
    is($ans, $exp, "wall_paper($l, $w, $h)");
}

subtest "basics" => sub {
    testing(6.3, 4.5, 3.29, "sixteen");
    testing(6.1, 2.0, 3.15, "twelve");
    testing(0, 1.3, 3.29, "zero");
};

done_testing();

