use strict;
use warnings;
use Test::More;
use SolutionRotation qw(max_rot);

sub dotest {
    my $s = shift;
    my $exp = shift;
    my $ans = max_rot($s);
    is($ans, $exp, "max_rot($s)");
}

subtest "basics" => sub {
    dotest(56789, 68957);
    dotest(38458215, 85821534);
    dotest(195881031, 988103115);
    dotest(896219342, 962193428);
    dotest(69418307, 94183076);
    
};

done_testing();
