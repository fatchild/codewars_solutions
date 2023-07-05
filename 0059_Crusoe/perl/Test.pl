use strict;
use warnings;
use Math::Trig;
use Test::More;
use SolutionCrusoe qw(crusoe);

sub assert_fuzzy {
    my $merr = 1e-9;
    my ($n, $d, $ang, $distmult, $angmult, @exp) = @_;
    my @ans = crusoe($n, $d, $ang, $distmult, $angmult);
    my $inrange = (abs($ans[0] - $exp[0]) <= $merr) && (abs($ans[1] - $exp[1]) <= $merr);
    my $sans = join ",", @ans;
    my $sexp = join ",", @exp;
    if ($inrange == 0) { print "crusoe($n, $d, $ang, $distmult, $angmult) / expect: [$sexp], got [$sans]\n"};
    is($inrange, 1, "");
}

subtest "basics" => sub {
    assert_fuzzy(8, 0.22, 3, 1.01, 1.15, (1.814652098870, 0.164646220964));
    assert_fuzzy(29, 0.13, 21, 1.01, 1.09, (0.318341393410, 2.292862212314));
    assert_fuzzy(45, 0.10, 3, 1.01, 1.10, (2.689897523779, 2.477953232467));
    assert_fuzzy(14, 0.22, 20, 1.02, 1.14, (1.774076472485, 2.557008479031));
    assert_fuzzy(42, 0.11, 17, 1.02, 1.09, (0.528555980656, 2.196434600133));
            
    assert_fuzzy(22, 0.10, 13, 1.02, 1.07, (2.298815365366, 1.350961617225));
    assert_fuzzy(14, 0.12, 8, 1.01, 1.17, (1.527247742560, 0.791501413864));
    assert_fuzzy(14, 0.40, 12, 1.00, 1.13, (4.707581250241, 2.697363218947));
    assert_fuzzy(15, 0.28, 3, 1.01, 1.20, (4.280376292542, 1.130268719545));
    assert_fuzzy(42, 0.10, 18, 1.01, 1.16, (0.978295412783, 0.820871007633));
    
    assert_fuzzy(35, 0.40, 25, 1.01, 1.10, (0.808482695867, 4.930413042682));
    assert_fuzzy(22, 0.25, 23, 1.01, 1.14, (0.878728383865, 2.085597768483));
    assert_fuzzy(15, 0.20, 13, 1.02, 1.08, (3.125967022224, 1.403724343886));
    assert_fuzzy(24, 0.23, 7, 1.01, 1.09, (5.554853751141, 2.380135520530));
    assert_fuzzy(11, 0.40, 3, 1.01, 1.13, (4.597600099174, 0.484810204098));
    
    assert_fuzzy(42, 0.14, 20, 1.01, 1.10, (0.664954773589, 1.888796491132));
    assert_fuzzy(10, 0.17, 26, 1.01, 1.17, (0.838005744388, 1.367617297519));
    assert_fuzzy(49, 0.26, 10, 1.01, 1.16, (2.620283013932, 2.486180570951));
    assert_fuzzy(47, 0.27, 6, 1.02, 1.15, (4.948419174868, 3.069707362189));
    assert_fuzzy(20, 0.17, 5, 1.01, 1.08, (3.651130979855, 0.757389241868));
    assert_fuzzy(4000, 0.0, 5, 1.01, 1.08, (0.0, 0.0));
};

sub crusoe_cr {
    my ($n, $d, $ang, $distmult, $angmult) = @_;
    my ($x, $y, $a, $i) = (0.0, 0.0, $ang * pi / 180.0, 1);
    while ($i <= $n) {
        $x += $d * cos($a);
        $y += $d * sin($a);
        $d *= $distmult;
        $a *= $angmult;
        ++$i;
    }
    ($x, $y);
}

subtest "random tests" => sub {
    for (1..100) {
        my $n = 5 + int(rand(45));
        my $d = (10 + int(rand(30))) / 100.0;
        my $ang = 2 + int(rand(28));
        my $dmult = (1005 + int(rand(5))) / 1000.0;
        my $amult = (105 + int(rand(5))) / 100.0;
        my @expect = crusoe_cr($n, $d, $ang, $dmult, $amult);
        assert_fuzzy($n, $d, $ang, $dmult, $amult, @expect);
    }
};

done_testing();