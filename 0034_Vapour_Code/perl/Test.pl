# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# use strict;
# use warnings;
# use Test::More;
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most
use Test::Most;

# The name of the solution package is inferred from the code.
use SolutionVapourCode;

subtest "Some Examples" => sub {
  is(SolutionVapourCode::vaporcode("Lets go to the movies"), "L  E  T  S  G  O  T  O  T  H  E  M  O  V  I  E  S");
  is(SolutionVapourCode::vaporcode("Why isn't my code working?"),"W  H  Y  I  S  N  '  T  M  Y  C  O  D  E  W  O  R  K  I  N  G  ?");
};

done_testing();
