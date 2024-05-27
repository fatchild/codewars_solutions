use strict;
use warnings;
use Test::More;
use Solution qw(nb_months);

sub dotest {
    my ($startPriceOld, $startPriceNew, $savingperMonth, $percentLossByMonth, $exp) = @_;
    my $ans = nb_months($startPriceOld, $startPriceNew, $savingperMonth, $percentLossByMonth);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    dotest(2000, 8000, 1000, 1.5, "6 766");
    dotest(12000, 8000, 1000, 1.5 ,"0 4000");
    dotest(8000, 12000, 500, 1, "8 597");
    dotest(18000, 32000, 1500, 1.25, "8 332");
    dotest(7500, 32000, 300, 1.55, "25 122");
};

done_testing();