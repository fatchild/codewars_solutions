use strict;
use warnings;
use Test::More;
use SolutionPlaneWings qw(make_valley);

sub dotest {
    my ($lst, $exp) = @_;
    my $sexp = join ",", @$exp;
    my $ans = make_valley($lst);
    is_deeply($ans, $exp, "exp:, $sexp\n");
}

subtest "basics" => sub {
    dotest([17, 17, 15, 14, 8, 7, 7, 5, 4, 4, 1], [17, 15, 8, 7, 4, 1, 4, 5, 7, 14, 17]);
    dotest([20, 7, 6, 2], [20, 6, 2, 7]);
    dotest([14, 10, 8], [14, 8, 10]);
    dotest([], []);
};

done_testing();