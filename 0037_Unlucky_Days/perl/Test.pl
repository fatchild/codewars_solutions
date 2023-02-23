use 5.030;
use Test::Most;
use SolutionUnluckyDays qw(unluckyDays);

subtest "Example Tests" => sub {
    is(unluckyDays(2015), 3);
    is(unluckyDays(1986), 1);
    is(unluckyDays(2819), 2);
};

done_testing();


