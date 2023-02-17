use strict;
use warnings;
use Test::More;
use SolutionConsecutiveStrings qw(longest_consec);

sub testing {
    my ($s, $k, $exp) = @_;
    my $ans = longest_consec($s, $k);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    testing(['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet'], 2, 'orangeyellow');
    testing(['abcd', 'efghijk', 'lmnop', 'qrst', 'uvwx', 'yzzz', 'lmnop', 'efghijk'], 3, 'abcdefghijklmnop');
    testing(["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta");
    testing([], 3, "");
    testing(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15, "");
};

done_testing();

