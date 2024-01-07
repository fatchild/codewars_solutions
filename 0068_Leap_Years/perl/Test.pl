use warnings;
use strict;
use Test::Most;
use Solution;

subtest "Example tests" => sub {
    is(Solution::is_leap_year(2020), 1, "is_leap_year(2020) should return 1");
    is(Solution::is_leap_year(2000), 1, "is_leap_year(2000) should return 1");
    is(Solution::is_leap_year(2015), 0, "is_leap_year(2015) should return 0");
    is(Solution::is_leap_year(2100), 0, "is_leap_year(2100) should return 0");
};
done_testing();
