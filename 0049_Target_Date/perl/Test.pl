use strict;
use warnings;
use Test::More;
use SolutionTargetDate qw(date_nb_days);

sub testing {
    my ($a0, $a, $p, $exp) = @_;
    my $ans = date_nb_days($a0, $a, $p);
    is($ans, $exp, "date_nb_days($a0, $a, $p)");
}

subtest "basics" => sub {
    testing(4281, 5087, 2, "2024-07-03");
    testing(4620, 5188, 2, "2021-09-19");
    testing(9999, 11427, 6, "2018-03-13");
    testing(3525, 4822, 3, "2026-04-18");
    testing(100, 101, 0.98, "2017-01-01")
    
};

done_testing();


