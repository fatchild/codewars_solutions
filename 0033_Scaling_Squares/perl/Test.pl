use strict;
use warnings;
use Test::More;
use SolutionScalingSquares qw(scale);

sub dotest {
    my ($s, $k, $n, $exp) = @_;
    my $ans = scale($s, $k, $n);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    my $d = "abcd\nefgh\nijkl\nmnop";
    my $s = "aabbccdd\naabbccdd\naabbccdd\neeffgghh\neeffgghh\neeffgghh\niijjkkll\niijjkkll\niijjkkll\nmmnnoopp\nmmnnoopp\nmmnnoopp";
    dotest($d, 2, 3, $s);
    dotest("", 5, 5, "");
    dotest("Kj\nSH", 1, 2, "Kj\nKj\nSH\nSH");
    
};

done_testing();
