use strict;
use warnings;
use Test::Most;
use SolutionYearQuarter;

subtest "Fixed Tests" => sub {
    is(SolutionYearQuarter::quarter_of(1), 1);
    is(SolutionYearQuarter::quarter_of(2), 1);
    is(SolutionYearQuarter::quarter_of(3), 1);
    is(SolutionYearQuarter::quarter_of(4), 2);
    is(SolutionYearQuarter::quarter_of(5), 2);
    is(SolutionYearQuarter::quarter_of(6), 2);
    is(SolutionYearQuarter::quarter_of(7), 3);
    is(SolutionYearQuarter::quarter_of(8), 3);
    is(SolutionYearQuarter::quarter_of(9), 3);
    is(SolutionYearQuarter::quarter_of(10), 4);
    is(SolutionYearQuarter::quarter_of(11), 4);
    is(SolutionYearQuarter::quarter_of(12), 4);
};
done_testing();