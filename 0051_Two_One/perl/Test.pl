use strict;
use warnings;
use Test::More;
use SolutionTwoOne qw(longest);

sub testing {
    my ($s1, $s2, $exp) = @_;
    my $ans = longest($s1, $s2);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    testing('aretheyhere', 'yestheyarehere', 'aehrsty');
    testing('loopingisfunbutdangerous', 'lessdangerousthancoding', 'abcdefghilnoprstu');
    testing('inmanylanguages', 'theresapairoffunctions', 'acefghilmnoprstuy');
    testing('lordsofthefallen', 'gamekult', 'adefghklmnorstu');
    testing('codewars', 'codewars', 'acdeorsw');
    testing('agenerationmustconfrontthelooming', 'codewarrs', 'acdefghilmnorstuw');
    testing('xyaabbbccccdefww', 'xxxxyyyyabklmopq', 'abcdefklmopqwxy');
    testing('', '', '');
    testing('efghabcd', '', 'abcdefgh');
    testing("pppppxxxxxxxxxxkkkkkkkkkkkknnxxxxxyyyyyuuuuuuuuxxxxxxxxxppppppppppqqqqqqxjjjjjjjjjjkkkkkkkkj",
            "yyyyyyyvvvvooottttiiiiqqqqqqqppppppptttttttttyyyyyjjjvvvggggggiiiiiiiiuuuuuuummmmmm",
            'gijkmnopqtuvxy');
};

sub do_str {
    my $size = shift;
    my @alpha = ('a'..'z');
    my $s = join '', map $alpha[rand @alpha], 0..$size;
    my $n = 3 + int(rand(8));
    $s =~ s/(.)/"$1" x $n/mge;
    $s;
}
sub longest_fp {
    my ($s1, $s2) = @_;
    my $l = "";
    for ('a'..'z') {
        if ((index($s1, $_) >= 0) || (index($s2, $_) >= 0)) {
            $l .= $_;
        }
    }
    $l;
}

subtest "random tests" => sub {
    for (1..100) {
        my $n = 2 + int(rand(8));
        my $s1 = do_str($n);
        $n = 3 + int(rand(10));
        my $s2 = do_str($n);
        my $expect = longest_fp($s1, $s2);
        testing($s1, $s2, $expect);
    }
};

done_testing();