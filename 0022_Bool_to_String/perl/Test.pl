use warnings;
use strict;
use Test::Most;
use SolutionBoolString;

subtest "Tests" => sub {
    is(SolutionBoolString::bool_to_word(!0), "Yes");
    is(SolutionBoolString::bool_to_word(!1), "No");
};

done_testing();