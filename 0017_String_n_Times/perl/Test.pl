use warnings;
use strict;
use Test::Most;
use SolutionStringTimes;

subtest "Sample Tests" => sub {
    is(SolutionStringTimes::repeat_str(3, "*"), "***");
    is(SolutionStringTimes::repeat_str(5, "#"), "#####");
    is(SolutionStringTimes::repeat_str(2, "ha "), "ha ha ");
    is(SolutionStringTimes::repeat_str(5, ">"), ">>>>>");
    is(SolutionStringTimes::repeat_str(10, "!"), "!!!!!!!!!!");
    is(SolutionStringTimes::repeat_str(3, "hello "), "hello hello hello ");
    is(SolutionStringTimes::repeat_str(3, "@"), "@@@");
};

done_testing();