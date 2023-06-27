use strict;
use warnings;
use Test::More;
use SolutionSquaredString qw(hor_mirror vert_mirror oper);

sub dotest_hor {
    my ($s, $exp) = @_;
    my $ans = oper(\&hor_mirror, $s);
    is($ans, $exp, "");
}
sub dotest_vert {
    my ($s, $exp) = @_;
    my $ans = oper(\&vert_mirror, $s);
    is($ans, $exp, "");
}

subtest "basics_hor" => sub {
    dotest_hor("", "");
    dotest_hor("a", "a");
    dotest_hor("lVHt\nJVhv\nCSbg\nyeCt", "yeCt\nCSbg\nJVhv\nlVHt");
    dotest_hor("njMK\ndbrZ\nLPKo\ncEYz", "cEYz\nLPKo\ndbrZ\nnjMK");
    dotest_hor("QMxo\ntmFe\nWLUG\nowoq", "owoq\nWLUG\ntmFe\nQMxo");
    dotest_hor("FYvi\ndZQn\nuGef\nQoSy", "QoSy\nuGef\ndZQn\nFYvi");
    dotest_hor("skPBxo\ncSVusJ\nnphcJY\nTqoIuU\nUjoteC\nPytFuP",
           "PytFuP\nUjoteC\nTqoIuU\nnphcJY\ncSVusJ\nskPBxo");
    dotest_hor("oQtzen\nyPOxxD\nqbjXgk\nChWRMl\naHCbsW\nwgtSQf",
           "wgtSQf\naHCbsW\nChWRMl\nqbjXgk\nyPOxxD\noQtzen");
    dotest_hor("ZJfsdh\nVKZJEX\nHZGjYV\nxiSLKp\npZXQOJ\nURjdFd",
           "URjdFd\npZXQOJ\nxiSLKp\nHZGjYV\nVKZJEX\nZJfsdh");
    dotest_hor("SNoXQM\nAKritu\nOosxBG\nXppstt\nHvogli\nrTDHvy",
           "rTDHvy\nHvogli\nXppstt\nOosxBG\nAKritu\nSNoXQM");
    dotest_hor("jzIpTs\nJUTtvs\nqTBuwX\neXXXDR\nAsQhXo\nWbKxzl",
           "WbKxzl\nAsQhXo\neXXXDR\nqTBuwX\nJUTtvs\njzIpTs");
    dotest_hor("NZIrTP\nDGRBmd\nbFcCmN\nLBejFh\nomQwFB\nRvwjZQ",
           "RvwjZQ\nomQwFB\nLBejFh\nbFcCmN\nDGRBmd\nNZIrTP");   
};

subtest "basics_vert" => sub {
    dotest_vert("", "");
    dotest_vert("a", "a");
    dotest_vert("hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu", "QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw");
    dotest_vert("IzOTWE\nkkbeCM\nWuzZxM\nvDddJw\njiJyHF\nPVHfSx", "EWTOzI\nMCebkk\nMxZzuW\nwJddDv\nFHyJij\nxSfHVP");
    dotest_vert("cuQW\nxOuD\nfZwp\neqFx", "WQuc\nDuOx\npwZf\nxFqe");
    dotest_vert("CDGIdolo\nUstXfrIg\ntMqjvxWL\nBEyuCnAm\nxsxaEERa\nxZsvOiZS\nLutlBRXE\ntxshhbqE",
      "olodIGDC\ngIrfXtsU\nLWxvjqMt\nmAnCuyEB\naREEaxsx\nSZiOvsZx\nEXRBltuL\nEqbhhsxt");
    dotest_vert("KgAM\nKohC\nkqBW\ntLiR", "MAgK\nChoK\nWBqk\nRiLt");
    dotest_vert("oGMCXQ\nnfXWqR\nefPFSt\nakClSI\nnYzLmS\ncsEJvP",
      "QXCMGo\nRqWXfn\ntSFPfe\nISlCka\nSmLzYn\nPvJEsc");
    dotest_vert("DZwv\nmlsT\nyAbf\nWrFT", "vwZD\nTslm\nfbAy\nTFrW");
    dotest_vert("tmCGOO\nZwyHwT\nFTZyUQ\nZmbqbS\nmerTPM\nmcqRRt",
      "OOGCmt\nTwHywZ\nQUyZTF\nSbqbmZ\nMPTrem\ntRRqcm");
    dotest_vert("SJmLNL\nMPIdnp\nfQrLuq\nERbTpA\nEVDcgh\nWnzYqk",
      "LNLmJS\npndIPM\nquLrQf\nApTbRE\nhgcDVE\nkqYznW");
    dotest_vert("Vkdgll\ndgqMcn\nYrUKvL\nImOubH\nzkuAAz\nQGViQu",
      "llgdkV\nncMqgd\nLvKUrY\nHbuOmI\nzAAukz\nuQiVGQ");
    dotest_vert("WlQB\nTNgB\nvEyn\nPTxX", "BQlW\nBgNT\nnyEv\nXxTP");
    dotest_vert("yYRG\nZQVE\naHIa\nmnOs", "GRYy\nEVQZ\naIHa\nsOnm"); 
};

sub do_str {
    my $size = shift;
    my @alpha = ('A'..'Z', 'a'..'z');
    my $s = join '', map $alpha[rand @alpha], 1..$size;
    $s;
}
sub do_sq_str {
    my $size = shift;
    my $res = "";
    for (my $i = 0; $i < $size; ++$i) {
        $res .= do_str($size) . "\n";
    }
    substr($res, 0, -1);
}
sub hor_mirror_mb {
    my $s = shift;
    my @h = split /\n/, $s;
    my @hh = reverse(@h);
    return join "\n", @hh;
}
sub vert_mirror_mb {
    my $s = shift;my @h = split /\n/, $s;
    my @hh = ();
    for (@h) {
        my $re = reverse $_ ;
        push @hh, $re;
    }
    return join "\n", @hh;
}
subtest "random_tests_hor" => sub {
    for (1..50) {
        my $n = 4 + int(rand(6));
        my $s = do_sq_str($n);
        my $exp = hor_mirror_mb($s);
        dotest_hor($s, $exp);
    }
};
subtest "random_tests_vert" => sub {
    for (1..50) {
        my $n = 4 + int(rand(6));
        my $s = do_sq_str($n);
        my $exp = vert_mirror_mb($s);
        dotest_vert($s, $exp);
    }
};

done_testing();