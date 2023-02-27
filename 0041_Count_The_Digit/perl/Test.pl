use strict;
use warnings;
use Test::More;
use SolutionCountDigit qw(nb_dig);

sub dotest {
    my ($n, $d, $exp) = @_;
    my $ans = nb_dig($n, $d);
    is($ans, $exp, "nb_dig($n, $d)");
}

subtest "basics" => sub {
    dotest(10, 1, 4);
    dotest(5750, 0, 4700);
    dotest(11011, 2, 9481);
    dotest(12224, 8, 7733);
    
};

done_testing();

