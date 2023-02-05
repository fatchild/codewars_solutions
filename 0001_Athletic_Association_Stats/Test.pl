# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most

# The name of the solution package is inferred from the code.
use strict;
use warnings;
use Test::Most;
# The name of the solution package is inferred from the code.
use Solution qw(stats);

sub testing {
    my $s = shift;
    my $exp = shift;
    my $ans = stats($s);
    is($ans, $exp, "stats($s)");
};

subtest "basics" => sub {
    testing("", "");
    testing("01|15|59, 1|47|16, 01|17|20, 1|32|34, 2|17|17", "Range: 01|01|18 Average: 01|38|05 Median: 01|32|34");
    testing("02|15|59, 2|47|16, 02|17|20, 2|32|34, 2|17|17, 2|22|00, 2|31|41", "Range: 00|31|17 Average: 02|26|18 Median: 02|22|00");
    testing("02|15|59, 2|47|16, 02|17|20, 2|32|34, 2|32|34, 2|17|17", "Range: 00|31|17 Average: 02|27|10 Median: 02|24|57");
};

done_testing();


