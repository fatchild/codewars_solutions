# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# use strict;
# use warnings;
# use Test::More;
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most
use Test::Most;

# The name of the solution package is inferred from the code.
use SolutionCentury;

subtest "examples" => sub {
  is(SolutionCentury::century(1705), 18);
  is(SolutionCentury::century(1900), 19);
  is(SolutionCentury::century(1601), 17);
  is(SolutionCentury::century(2000), 20);
  is(SolutionCentury::century(356), 4);
  is(SolutionCentury::century(89), 1);
};

done_testing();
