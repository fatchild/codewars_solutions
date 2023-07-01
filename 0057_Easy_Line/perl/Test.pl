use strict;
use warnings;
use bigint;
use Test::More;
use SolutionEasyLine qw(easy_line);

sub testing {
    my $k = shift;
    my $exp = shift;
    my $ans = easy_line($k);
    is($ans, $exp, "easy_line($k)");
}

subtest "basics" => sub {
    testing(7, 3432);
    testing(13, 10400600);
    testing(17, 2333606220);
    testing(19, 35345263800);
    testing(22, 2104098963720);
    testing(24, 32247603683100);
    testing(28, 7648690600760440);
    testing(30, 118264581564861424);
    testing(38, 6892620648693261354600);
    testing(39, 27217014869199032015600);
    testing(41, 424784580848791721628840);
    testing(42, 1678910486211891090247320);
    testing(44, 26248505381684851188961800);
    testing(46, 410795449442059149332177040);
    testing(50, 100891344545564193334812497256);
    testing(51, 399608854866744452032002440112);
    testing(52, 1583065848125949175357548128136);
    testing(54, 24857784491537440929618523018320);
    testing(64, 23951146041928082866135587776380551750);
    testing(67, 1498293301493043187508381577755872596600);
    testing(100, 90548514656103281165404177077484163874504589675413336841320);
};

sub easy_line_bo {
    local *aux = sub {
        use integer;
        my ($n, $k) = @_;
        $k = $k > $n-$k ? $n-$k : $k;
        my $result = 1;
        for (my $i = 0; $i < $k; $i++) {
            $result *= $n - $i;
            $result /= ($i + 1);
        }
        $result;
    };
    my $m = shift;
    aux(2 * $m, $m);
}

subtest "random tests" => sub {
    for (1..100) {
        my $n = 50 + int(rand(210));
        my $ans = easy_line($n);
        my $exp = easy_line_bo($n);
        is($ans, $exp, "easy_line($n)");
    }
};

done_testing();