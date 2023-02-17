use strict;
use warnings;
use Test::More;
use SolutionRectSquare qw(sq_in_rect);

sub testing {
    my ($lng, $wdth, $exp) = @_;
    my $ans = sq_in_rect($lng, $wdth);
    my $sans = join ", ", @$ans;
    my $sexp = join ", ", @$exp;
    is($sans, $sexp, "");
}

subtest "basics" => sub {
    testing(5, 3, [3, 2, 1, 1]);
    testing(3, 5, [3, 2, 1, 1]);
    testing(5, 5, []);
};

done_testing();