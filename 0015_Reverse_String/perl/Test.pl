use warnings;
use strict;
use Test::Most;
use SolutionReverseString;

subtest "Fixed Tests" => sub {
    is(SolutionReverseString::solution("world"), "dlrow");
    is(SolutionReverseString::solution("hello"), "olleh");
    is(SolutionReverseString::solution(""), "");
    is(SolutionReverseString::solution("h"), "h");
};
done_testing();