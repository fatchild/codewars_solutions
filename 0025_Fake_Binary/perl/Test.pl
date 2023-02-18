# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# use strict;
# use warnings;
# use Test::More;
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most
use Test::Most;

# The name of the solution package is inferred from the code.
use SolutionFakeBinary;

subtest "examples" => sub {
  is(SolutionFakeBinary::fake_bin("45385593107843568"), "01011110001100111");
  is(SolutionFakeBinary::fake_bin("509321967506747"), "101000111101101");
  is(SolutionFakeBinary::fake_bin("366058562030849490134388085"), "011011110000101010000011011");
  is(SolutionFakeBinary::fake_bin("15889923"), "01111100");
  is(SolutionFakeBinary::fake_bin("800857237867"), "100111001111");
};

done_testing();
