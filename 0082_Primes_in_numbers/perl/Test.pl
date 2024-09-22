use strict;
use warnings;
use Test::More;
use Solution qw(prime_factors);

sub dotest {
    my ($n, $exp) = @_;
    my $ans = prime_factors($n);
    is($ans, $exp, "Data: $n\n");
}

subtest "basics" => sub {
    dotest(86240, '(2**5)(5)(7**2)(11)');
    dotest(7775460, '(2**2)(3**3)(5)(7)(11**2)(17)');
    dotest(7919, '(7919)');
    dotest(17*17*93*677, '(3)(17**2)(31)(677)');
    dotest(933555431, '(7537)(123863)');
};

done_testing();