use strict;
use warnings;
use Test::More;
use SolutionDryPotatoes qw(potatoes);

sub dotest {
    my ($p0, $w0, $p1, $exp) = @_;
    my $ans = potatoes($p0, $w0, $p1);
    is($ans, $exp, "potatoes($p0, $w0, $p1)");
}

subtest "basics" => sub {
    dotest(99, 100, 98, 50);
    dotest(82, 127, 80, 114);
    dotest(82, 127, 80, 114);
    dotest(93, 129, 91, 100);
    dotest(85, 228, 81, 180);
    dotest(97, 129, 91, 43);
    
};

done_testing();
