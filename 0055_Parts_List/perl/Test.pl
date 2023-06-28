use strict;
use warnings;
use Test::More;
use SolutionPartsList qw(part_list);

sub array2D_to_string {
    my @arr = @_; my $res = "[";
    for my $row (@arr) {
        $res .= "[" . join(", ", @{$row}) . "], ";
    }
    if ($res eq '[') { return '[]'; }
    return substr($res, 0, -2) . "]";
}

sub testing {
    my ($s, $exp) = @_;
    my $ans = part_list($s);
    my $sans = array2D_to_string(@$ans);
    my $sexp = array2D_to_string(@$exp);
    #print "ANS ", $sans, "|\n";
    #print "EXP ", $sexp, "|\n";
    is($sans, $sexp, "part_list(@$s)\n");
}

subtest "basics" => sub {
    testing(["I", "wish", "I", "hadn't", "come"],
            [["I", "wish I hadn't come"], ["I wish", "I hadn't come"], ["I wish I", "hadn't come"], ["I wish I hadn't", "come"]]);
    testing(["cdIw", "tzIy", "xDu", "rThG"], 
            [["cdIw", "tzIy xDu rThG"], ["cdIw tzIy", "xDu rThG"], ["cdIw tzIy xDu", "rThG"]]);
    testing(["vJQ", "anj", "mQDq", "sOZ"], 
        [["vJQ", "anj mQDq sOZ"], ["vJQ anj", "mQDq sOZ"], ["vJQ anj mQDq", "sOZ"]]);
    testing(["mkC", "WoiP", "pCHh", "mkv"], [["mkC", "WoiP pCHh mkv"], ["mkC WoiP", "pCHh mkv"], ["mkC WoiP pCHh", "mkv"]]);
    testing(["vHW", "bPq", "pme", "jJr", "HGHV"], 
        [["vHW", "bPq pme jJr HGHV"], ["vHW bPq", "pme jJr HGHV"], ["vHW bPq pme", "jJr HGHV"], ["vHW bPq pme jJr", "HGHV"]]);
    testing(["YZd", "ptUD", "IXr"], [["YZd", "ptUD IXr"], ["YZd ptUD", "IXr"]]);

    testing(["dOXj", "nMlK", "QGT", "LSt", "BHNR"], 
        [["dOXj", "nMlK QGT LSt BHNR"], ["dOXj nMlK", "QGT LSt BHNR"], ["dOXj nMlK QGT", "LSt BHNR"], ["dOXj nMlK QGT LSt", "BHNR"]]);
    testing(["UQB", "aIfC", "eVB", "aCL", "bWoU"], 
        [["UQB", "aIfC eVB aCL bWoU"], ["UQB aIfC", "eVB aCL bWoU"], ["UQB aIfC eVB", "aCL bWoU"], ["UQB aIfC eVB aCL", "bWoU"]]);
    testing(["Pimt", "qxEm", "enzX", "Luk", "Smi"], 
        [["Pimt", "qxEm enzX Luk Smi"], ["Pimt qxEm", "enzX Luk Smi"], ["Pimt qxEm enzX", "Luk Smi"], ["Pimt qxEm enzX Luk", "Smi"]]);
    testing(["CyAg", "zzWg", "ZZuR", "wbpx", "mYr"], 
        [["CyAg", "zzWg ZZuR wbpx mYr"], ["CyAg zzWg", "ZZuR wbpx mYr"], ["CyAg zzWg ZZuR", "wbpx mYr"], ["CyAg zzWg ZZuR wbpx", "mYr"]]);
    testing(["Epb", "yTcb", "njU"], [["Epb", "yTcb njU"], ["Epb yTcb", "njU"]]);
};

sub part_list_py {
    my $arr = shift;
    my @result = ();
    my $i = 0; my $lg = @$arr;
    while ($i < $lg - 1) {
        my $s1 = "";
        for (my $u = 0; $u < $i + 1; $u++) {
            if ($u < $i) { 
                $s1 .= $arr->[$u] . " ";
            } else { $s1 .= $arr->[$u]; }
        }
        my $s2 = "";
        for (my $u = $i + 1; $u < $lg; $u++) {
            if ($u < $lg - 1) {
                $s2 .= $arr->[$u] . " ";
            } else { $s2 .= $arr->[$u]; }
        }
        push(@result, [$s1, $s2]);
        $i++;
    }
    return \@result;
}

sub do_str {
    my $size = shift;
    my @alpha = ('a'..'z');
    my $s = join '', map $alpha[rand @alpha], 1..$size;
    $s;
}
sub do_array {
    my $n = shift;
    my @a =  map { do_str( 2 + int(rand(5))) } ( 1..$n );
    \@a;
}

subtest "random_tests" => sub {
    for (1..100) {
        my $n = 5 + int(rand(7));
        my $a = do_array($n);
        my $exp = part_list_py($a);
        testing($a, $exp);
    }
};

done_testing();