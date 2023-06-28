use strict;
use warnings;
use Test::More;
use SolutionDivisibleSeven qw(seven);

sub dotest { 
    my ($n, $exp) = @_;
    my $sexp = join ", ", (@{$exp});
    my $ans = seven($n);
    my $sans = join ", ", (@{$ans});
    is($sans, $sexp, "seven: $n\n");
};

subtest "basics" => sub {
    dotest(1021, [10, 2]);
    dotest(477557101, [28, 7]);
    dotest(477557102, [47, 7]);
    dotest(1603, [7, 2]);
    dotest(371, [35, 1]);
    dotest(1369851, [0, 5]);
    dotest(483, [42, 1]);
    dotest(483595, [28, 4]);
    dotest(0, [0, 0]);
    dotest(1889584453156367, [8, 14]);
    dotest(17792772, [-3, 6]);
    dotest(109, [-8, 1]);
};

sub seven_pp {
    my $n = shift;
    my $res = 0;
    use integer;
    while ($n > 99) {
        $n = ($n / 10) - 2 * ($n % 10);
        ++$res;
    }
   [$n, $res];
}

subtest "random tests" => sub {
    for (1..100) {
        my $n = 2 + int(rand(750000000));
        my $exp = seven_pp($n);
        dotest($n, $exp);
    }
};

done_testing();