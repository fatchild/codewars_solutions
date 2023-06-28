use strict;
use warnings;
use POSIX qw(ceil);
use Test::More;
use SolutionDeoderantEvaporator qw(evaporator);

sub dotest {
    my ($content, $evap_per_day, $threshold, $exp) = @_;
    my $ans = evaporator($content, $evap_per_day, $threshold);
    is($ans, $exp, "evaporator($content, $evap_per_day, $threshold)");
}

subtest "basics" => sub {
    dotest(10, 10, 10, 22);
    dotest(10, 10, 5, 29);
    dotest(100, 5, 5, 59);
    dotest(50, 12, 1, 37);
    dotest(47.5, 8, 8, 31);
    dotest(100, 1, 1, 459);
    dotest(10, 1, 1, 459);
    dotest(100, 1, 5, 299);
};

sub evaporator_sl {
    my ($content, $evap_per_day, $threshold) = @_;
    ceil(log($threshold / 100.0) / log(1.0 - $evap_per_day / 100.0));
}

subtest "random tests" => sub {
    for (1..100) {
        my $perday = (100 + int(rand(700))) / 100.0;
        my $t = 1 + int(rand(50)) / 100.0;
        my $threshold = $t + int(rand(10));
        my $sol = evaporator_sl(100, $perday, $threshold);
        dotest(100, $perday, $threshold, $sol);
    }
};

done_testing();