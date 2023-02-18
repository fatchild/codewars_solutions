use warnings;
use strict;
use Test::Most;
use SolutionOppositeNumber;

subtest "Sample Tests" => sub {
    is(SolutionOppositeNumber::opposite(2), -2);
    is(SolutionOppositeNumber::opposite(0), 0);
    is(SolutionOppositeNumber::opposite(-4.25), 4.25);
    is(SolutionOppositeNumber::opposite(-1), 1);
    is(SolutionOppositeNumber::opposite(1), -1);
};

done_testing();