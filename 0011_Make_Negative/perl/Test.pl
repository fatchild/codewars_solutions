use warnings;
use strict;
use Test::Most;
use SolutionRectSquare;

subtest "Sample Tests" => sub {
    is(SolutionMakeNegative::make_negative(42), -42, "Default Test");
    is(SolutionMakeNegative::make_negative(1), -1, "Default Test");     # return -1
    is(SolutionMakeNegative::make_negative(-5), -5, "Default Test");    # return -5
    is(SolutionMakeNegative::make_negative(0), 0, "Default Test");     # return 0
    is(SolutionMakeNegative::make_negative(0.12), -0.12, "Default Test");; # return -0.12
};
done_testing();