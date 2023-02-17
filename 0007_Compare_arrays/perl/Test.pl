use strict;
use warnings;
use Test::More;
use SolutionCompareArrays qw(comp);

sub testing {
    my ($a, $b, $exp) = @_;
    my $ans = comp($a, $b);
    my $data1 = join ",", @$a;
    my $data2 = join ",", @$b;
    is($ans, $exp, "Data a1: $data1 / a2: $data2\n");
}

subtest "basics" => sub {
    my $a1 = [121, 144, 19, 161, 19, 144, 19, 11];
    my $a2 = [121, 14641, 20736, 361, 25921, 361, 20736, 361];
    testing($a1, $a2, 1);
    $a1 = [121, 144, 19, 161, 19, 144, 19];
    $a2 = [121, 14641, 20736, 361, 25921, 361, 20736, 361];
    testing($a1, $a2, 0);
    $a1 = [121, 144, 19, 161, 19, 144, 19, 11];
    $a2 = [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19];
    testing($a1, $a2, 0);
    $a1 = [];
    $a2 = [25];
    testing($a1, $a2, 0);
    $a1 = [];
    $a2 = [];
    testing($a1, $a2, 1);
    
    $a1 = [121,144,19,161,19,144,19,11];
    $a2 = [121,14641,20736,36100,25921,361,20736,361];
    testing($a1, $a2, 0);
    $a1 = [2, 2, 3];
    $a2 = [4, 9, 9];
    testing($a1, $a2, 0);
};

done_testing();