use 5.030;
# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# use strict;
# use warnings;
# use Test::More;
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most
use Test::Most;

# The name of the solution package is inferred from the code.
use SolutionMultiply qw(multiply);

subtest "basic tests" => sub {
    is(multiply(1, 1), 1, "a=1, b=1");
    is(multiply(2, 1), 2, "a=2, b=1");
    is(multiply(2, 2), 4, "a=2, b=2");
    is(multiply(3, 5), 15, "a=3, b=5");
};

done_testing();