use warnings;
use strict;
use Test::Most;
use SolutionNumberString;

subtest "Sample Tests" => sub {
    is(SolutionNumberString::number_to_string(2), "2");
    is(SolutionNumberString::number_to_string(0), "0");
    is(SolutionNumberString::number_to_string(-4.25), "-4.25");
    is(SolutionNumberString::number_to_string(-1), "-1");
    is(SolutionNumberString::number_to_string(1), "1");
};

done_testing();
