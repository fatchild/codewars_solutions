# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# use strict;
# use warnings;
# use Test::More;
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most
use Test::Most;
use SolutionSumEvenSquareOddRoot;

subtest "Basic tests" => sub {
    my @input_1 = (4, 5, 7, 8, 1, 2, 3, 0);
    is(SolutionSumEvenSquareOddRoot::sum_square_even_root_odd(\@input_1), 91.61);
    my @input_2 = (1, 14, 9, 8, 17, 21);
    is(SolutionSumEvenSquareOddRoot::sum_square_even_root_odd(\@input_2), 272.71)
};

done_testing();
