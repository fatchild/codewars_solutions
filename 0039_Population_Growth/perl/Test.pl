use strict;
use warnings;
use Test::More;
use SolutionPopulationGrowth qw(nb_year);

sub testequal {
    my ($p0, $percent, $aug, $p, $exp) = @_;
    my $ans = nb_year($p0, $percent, $aug, $p);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    testequal(1000, 2, 50, 1214, 4);
    testequal(1500, 5, 100, 4929, 15);
    testequal(1500, 5, 100, 5000, 15);
    testequal(1500000, 2.5, 10000, 2000000, 10);
    testequal(1500000, 0.25, 1000, 2000000, 94);
    
};

done_testing();

