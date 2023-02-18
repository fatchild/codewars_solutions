use warnings;
use strict;
use Test::Most;
use SolutionSliceStr;

subtest "Sample Tests" => sub {
    is(SolutionSliceStr::remove_char("e"), "");
    is(SolutionSliceStr::remove_char("eloquent"), "loquen");
    is(SolutionSliceStr::remove_char("country"), "ountr");
    is(SolutionSliceStr::remove_char("person"), "erso");
    is(SolutionSliceStr::remove_char("place"), "lac");
    is(SolutionSliceStr::remove_char("ooopsss"), "oopss");
};

done_testing();
