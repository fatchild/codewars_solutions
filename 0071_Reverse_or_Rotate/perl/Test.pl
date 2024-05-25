use strict;
use warnings;
use Test::More;
use Solution qw(revrot);

sub testing {
    my ($s, $sz, $exp) = @_;
    my $ans = revrot($s, $sz);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    testing("1234", 0, "");
    testing("", 0, "");
    testing("1234", 5, "");
    my $s = "733049910872815764";
    testing($s, 5, "330479108928157");
    $s = "73304991087281576455176044327690580265896";
    testing($s, 8, "1994033775182780067155464327690480265895");

};

done_testing();
