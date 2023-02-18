use warnings;
use strict;
use Test::Most;
use SolutionEvenOdd;

subtest "Sample Tests" => sub {
    is(SolutionEvenOdd::even_or_odd(2), "Even");
    is(SolutionEvenOdd::even_or_odd(7), "Odd");
    is(SolutionEvenOdd::even_or_odd(-42), "Even");
    is(SolutionEvenOdd::even_or_odd(-7), "Odd");
    is(SolutionEvenOdd::even_or_odd(0), "Even");
};

done_testing();
