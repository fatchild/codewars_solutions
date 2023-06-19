use strict;
use warnings;
use Test::More;
use SolutionSquareStrings qw(compose);

sub dotest {
    my ($s1, $s2, $exp) = @_;
    my $ans = compose($s1, $s2);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    dotest("byGt\nhTts\nRTFF\nCnnI", "jIRl\nViBu\nrWOb\nNkTB", 
            "bNkTB\nhTrWO\nRTFVi\nCnnIj");
    dotest("HXxA\nTGBf\nIPhg\nuUMD", "Hcbj\nqteH\nGbMJ\ngYPW", 
            "HgYPW\nTGGbM\nIPhqt\nuUMDH");
    dotest("tSrJ\nOONy\nsqPF\nxMkB", "hLqw\nEZuh\nmYFl\nzlYf", 
            "tzlYf\nOOmYF\nsqPEZ\nxMkBh");
};

done_testing();
