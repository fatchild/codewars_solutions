use strict;
use warnings;
use Test::More;
use SolutionAllInclusive qw(contain_all_rots);

sub dotest {
    my ($str, $arr, $exp) = @_;
    my $ans = contain_all_rots($str, $arr);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    dotest("", [], 1);
    dotest("", ["bsjq", "qbsj"], 1);
    dotest("bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"], 1);
    dotest("XjYABhR", ["TzYxlgfnhf", "yqVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"], 0);
    dotest("QJAhQmS", ["hQmSQJA", "QJAhQmS", "QmSQJAh", "yUgUXoQE", "AhQmSQJ", "mSQJAhQ", "SQJAhQm", "JAhQmSQ"], 1);
    dotest("12341234", ["DIeF", "IeFD", "12341234", "41234123", "34123412", "23412341"], 1);
    
};

done_testing();
