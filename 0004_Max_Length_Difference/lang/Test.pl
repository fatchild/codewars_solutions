use strict;
use warnings;
use Test::More;
use SolutionMaxLengthDiff qw(mx_dif_lg);

sub testing {
    my ($a1, $a2, $exp) = @_;
    my $ans = mx_dif_lg($a1, $a2);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    my $s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"];
    my $s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"];
    testing($s1, $s2, 13);
    $s1 = [];
    $s2 = [];
    testing($s1, $s2, -1);
    $s2 = [];
    $s1 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"];
    testing($s1, $s2, -1);
};

done_testing();
