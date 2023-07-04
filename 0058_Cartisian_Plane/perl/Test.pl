use strict;
use warnings;
use integer;
use Test::More;
use SolutionCartisianPlane qw(sumin sumax sumsum);

sub testing_sumin {
    my ($n, $exp) = @_;
    my $ans = sumin($n);
    is($ans, $exp, "");
}
sub testing_sumax {
    my ($n, $exp) = @_;
    my $ans = sumax($n);
    is($ans, $exp, "");
}
sub testing_sumsum {
    my ($n, $exp) = @_;
    my $ans = sumsum($n);
    is($ans, $exp, "");
}

subtest "basics_sumin" => sub {
    testing_sumin(5, 55);
    testing_sumin(6, 91);
    testing_sumin(8, 204);
    testing_sumin(15, 1240);
    testing_sumin(100, 338350);
    testing_sumin(365, 16275715);
    testing_sumin(730, 129938905);
    testing_sumin(999, 332833500);
    testing_sumin(2000, 2668667000);
    testing_sumin(4000, 21341334000);
    testing_sumin(5000, 41679167500);
};
subtest "basics_sumax" => sub {
    testing_sumax(5, 95);
    testing_sumax(6, 161);
    testing_sumax(8, 372);
    testing_sumax(15, 2360);
    testing_sumax(100, 671650);
    testing_sumax(365, 32484635);
    testing_sumax(730, 259610995);
    testing_sumax(999, 665167500);
    testing_sumax(2000, 5335333000);
    testing_sumax(4000, 42674666000);
    testing_sumax(5000, 83345832500);
};
subtest "basics_sumax" => sub {
    testing_sumsum(5, 150);
    testing_sumsum(6, 252);
    testing_sumsum(8, 576);
    testing_sumsum(15, 3600);
    testing_sumsum(100, 1010000);
};

sub sumin_vw {
    my $n = shift;
    $n * ($n + 1) * (2 * $n + 1) / 6;
}
sub sumax_vw {
    my $n = shift;
    $n * ($n + 1) * (4 * $n - 1) / 6;
}
sub sumsum_vw {
    my $n = shift;
    $n * $n * ($n + 1);
}

subtest "random tests sumin" => sub {
    for (1..50) {
        my $n = 800 + int(rand(4200));
        my $sol = sumin_vw($n);
        testing_sumin($n, $sol);
    }
};
subtest "random tests sumax" => sub {
    for (1..50) {
        my $n = 800 + int(rand(4200));
        my $sol = sumax_vw($n);
        testing_sumax($n, $sol);
    }
};
subtest "random tests sumsum" => sub {
    for (1..23) {
        my $n = 800 + int(rand(4200));
        my $sol = sumsum_vw($n);
       testing_sumsum($n, $sol);
    }
};
    
done_testing();