use strict;
use warnings;
use Test::More;
use Solution qw(thirt);

sub testequal {
    my ($n, $exp) = @_;
    my $ans = thirt($n);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    testequal(8529, 79);
    testequal(85299258, 31);
    testequal(5634, 57);
    testequal(1111111111, 71);
    testequal(987654321, 30);
    testequal(9223372036854775807, 98);
    testequal(9223372036854775806, 97);
    testequal(9223372036850000000, 88);
};

sub thirt_mp {
    my $n = shift;
    my @w = (1, 10, 9, 12, 3, 4);
    while (1) {
        my $r = $n; my $q = -1; my $c = 0; my $j = 0;
        while ($q != 0) {
            use integer;
            $q = $r / 10;
            $c += $r % 10 * $w[$j % 6];
            $r = $q;
            $j++;
        }
        if ($c == $n) { return $c; }
        $n = $c;
    }
}

subtest "random tests" => sub {
    for (1..100) {
        my $n = 1000000 + int(rand(15000000));
        my $expect = thirt_mp($n);
        testequal($n, $expect);
    }
};

done_testing();