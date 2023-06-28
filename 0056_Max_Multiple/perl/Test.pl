use Test::Most;
use SolutionMaxMultiple;

subtest "basic tests" => sub {
    is(SolutionMaxMultiple::max_multiple(2, 7), 6, "max_multiple(2, 7)");
    is(SolutionMaxMultiple::max_multiple(3, 10), 9, "max_multiple(3, 10)");
    is(SolutionMaxMultiple::max_multiple(7, 17), 14, "max_multiple(7, 17)");
    is(SolutionMaxMultiple::max_multiple(10, 50), 50, "max_multiple(10, 50)");
    is(SolutionMaxMultiple::max_multiple(37, 200), 185, "max_multiple(37, 200)");
    is(SolutionMaxMultiple::max_multiple(7, 100), 98, "max_multiple(7, 100)");
};

sub _sol {
    my ($d, $b) = @_;
    $b - $b % $d
}

subtest "random tests" => sub {
    for (1..100) {
        my $d = int(rand(1000)) + 1;
        my $b = int(rand(1001001)) + 1000;
        is(SolutionMaxMultiple::max_multiple($d, $b), _sol($d, $b), "max_multiple($d, $b)");
    }
};

done_testing();