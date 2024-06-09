use strict;
use warnings;
use Test::More;
# Instead of the above, `Test::Most` can be used instead to reduce boilerplate.
#use Test::Most;
# The name of the solution package is inferred from the code.
use Solution qw(mean variance);

my $data = "Rome:Jan 81.2,Feb 63.2,Mar 70.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9
London:Jan 48.0,Feb 38.9,Mar 39.9,Apr 42.2,May 47.3,Jun 52.1,Jul 59.5,Aug 57.2,Sep 55.4,Oct 62.0,Nov 59.0,Dec 52.9
Paris:Jan 182.3,Feb 120.6,Mar 158.1,Apr 204.9,May 323.1,Jun 300.5,Jul 236.8,Aug 192.9,Sep 66.3,Oct 63.3,Nov 83.2,Dec 154.7
NY:Jan 108.7,Feb 101.8,Mar 131.9,Apr 93.5,May 98.8,Jun 93.6,Jul 102.2,Aug 131.8,Sep 92.0,Oct 82.3,Nov 107.8,Dec 94.2
Vancouver:Jan 145.7,Feb 121.4,Mar 102.3,Apr 69.2,May 55.8,Jun 47.1,Jul 31.3,Aug 37.0,Sep 59.6,Oct 116.3,Nov 154.6,Dec 171.5
Sydney:Jan 103.4,Feb 111.0,Mar 131.3,Apr 129.7,May 123.0,Jun 129.2,Jul 102.8,Aug 80.3,Sep 69.3,Oct 82.6,Nov 81.4,Dec 78.2
Bangkok:Jan 10.6,Feb 28.2,Mar 30.7,Apr 71.8,May 189.4,Jun 151.7,Jul 158.2,Aug 187.0,Sep 319.9,Oct 230.8,Nov 57.3,Dec 9.4
Tokyo:Jan 49.9,Feb 71.5,Mar 106.4,Apr 129.2,May 144.0,Jun 176.0,Jul 135.6,Aug 148.5,Sep 216.4,Oct 194.1,Nov 95.6,Dec 54.4
Beijing:Jan 3.9,Feb 4.7,Mar 8.2,Apr 18.4,May 33.0,Jun 78.1,Jul 224.3,Aug 170.0,Sep 58.4,Oct 18.0,Nov 9.3,Dec 2.7
Lima:Jan 1.2,Feb 0.9,Mar 0.7,Apr 0.4,May 0.6,Jun 1.8,Jul 4.4,Aug 3.1,Sep 3.3,Oct 1.7,Nov 0.5,Dec 0.7";

my $data1 = "Rome:Jan 90.2,Feb 73.2,Mar 80.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,Aug 27.5,Sep 60.9,Oct 147.7,Nov 121.0,Dec 97.9
London:Jan 58.0,Feb 38.9,Mar 49.9,Apr 42.2,May 67.3,Jun 52.1,Jul 59.5,Aug 77.2,Sep 55.4,Oct 62.0,Nov 69.0,Dec 52.9
Paris:Jan 182.3,Feb 120.6,Mar 188.1,Apr 204.9,May 323.1,Jun 350.5,Jul 336.8,Aug 192.9,Sep 66.3,Oct 63.3,Nov 83.2,Dec 154.7
NY:Jan 128.7,Feb 121.8,Mar 151.9,Apr 93.5,May 98.8,Jun 93.6,Jul 142.2,Aug 131.8,Sep 92.0,Oct 82.3,Nov 107.8,Dec 94.2
Vancouver:Jan 155.7,Feb 121.4,Mar 132.3,Apr 69.2,May 85.8,Jun 47.1,Jul 31.3,Aug 37.0,Sep 69.6,Oct 116.3,Nov 154.6,Dec 171.5
Sydney:Jan 123.4,Feb 111.0,Mar 151.3,Apr 129.7,May 123.0,Jun 159.2,Jul 102.8,Aug 90.3,Sep 69.3,Oct 82.6,Nov 81.4,Dec 78.2
Bangkok:Jan 20.6,Feb 28.2,Mar 40.7,Apr 81.8,May 189.4,Jun 151.7,Jul 198.2,Aug 197.0,Sep 319.9,Oct 230.8,Nov 57.3,Dec 9.4
Tokyo:Jan 59.9,Feb 81.5,Mar 106.4,Apr 139.2,May 144.0,Jun 186.0,Jul 155.6,Aug 148.5,Sep 216.4,Oct 194.1,Nov 95.6,Dec 54.4
Beijing:Jan 13.9,Feb 14.7,Mar 18.2,Apr 18.4,May 43.0,Jun 88.1,Jul 224.3,Aug 170.0,Sep 58.4,Oct 38.0,Nov 19.3,Dec 2.7
Lima:Jan 11.2,Feb 10.9,Mar 10.7,Apr 10.4,May 10.6,Jun 11.8,Jul 14.4,Aug 13.1,Sep 23.3,Oct 1.7,Nov 0.5,Dec 10.7";

sub testing_mean {
    my $merr = 1e-2;
    my ($dat, $d, $twn, $exp) = @_;
    my $ans = mean($d, $twn);
    #print "string: ", "$dat", "\n";
    #print "ACTUAL ", $ans, "|\n";
    #print "EXPECT ", $exp, "|\n";
    my $inrange = abs($ans - $exp) <= $merr;
    is($inrange, 1, "mean(string: $dat, town:  $twn, expect: $exp)\n");
    #print $inrange, "\n";
    #print "---\n";
}
sub testing_variance {
    my $merr = 1e-2;
    my ($dat, $d, $twn, $exp) = @_;
    my $ans = variance($d, $twn);
    #print "string: ", "$dat", "\n";
    #print "ACTUAL ", $ans, "|\n";
    #print "EXPECT ", $exp, "|\n";
    my $inrange = abs($ans - $exp) <= $merr;
    is($inrange, 1, "variance(string: $dat, town:  $twn, expect: $exp)\n");
    #print $inrange, "\n";
    #print "---\n";
}

subtest "basics_mean" => sub {
    testing_mean('data', $data, "London", 51.199999999999996);
    testing_mean('data', $data, 'Beijing', 52.416666666666664);
    testing_mean('data1', $data1, "London", 57.03333333333333);
    testing_mean('data1', $data1, "Beijing", 59.083333333333336); 
};
subtest "basics_variance" => sub {
    testing_variance('data', $data, 'London', 57.42833333333374);
    testing_variance('data', $data, 'Beijing', 4808.37138888889);
    testing_variance('data1', $data1, 'London', 110.90055555555546);
    testing_variance('data1', $data1, 'Beijing', 4437.038055555556);
};

sub auxGk {
    my $d = shift; my $tofnd = shift; my @h = split /[\n]/, $d; my $rain = "";
    my @hh = map { [split /[:]/] } @h;
    foreach (@hh) {
        if ($_->[0] eq $tofnd) { $rain = $_->[1]; last; }
    }
    if ($rain eq "") { return (-1, -1); }
    my @mths = split /[,]/, $rain;
    my $s = 0; my $s2 = 0;
    foreach (@mths) {
        my $e = (split /[ ]/, $_)[1];
        $s += $e; $s2 += $e * $e;
    }
    my $m = $s/12.0;
    my $v = $s2 / 12.0 - $m * $m;
    return ($m, $v);
}
sub meanGk {
    my $d = shift; my $tofnd = shift;
    my ($m, $v) = auxGk($d, $tofnd);
    return $m;
}

sub varianceGk {
    my $d = shift; my $tofnd = shift;
    my ($m, $v) = auxGk($d, $tofnd);
    return $v;
}

subtest "random_tests_mean" => sub {
    my @twns = ('Rome', 'London', 'Paris', 'NY', 'Vancouver', 'Sydney', 'Bangkok', 'Tokyo', 'Lima',
                'Beijing', 'Lima', 'Montevideo', 'Caracas', 'Madrid', 'Berlin', 'Lon', 'Rome', 'Lim', 'Tok');
    for (1..10) {
        my $n = int(rand(@twns));
        my $t = $twns[$n];
        my $exp = meanGk($data, $t);
        testing_mean('data', $data, $t, $exp);
        my $exp1 = meanGk($data1, $t);
        testing_mean('data1', $data1, $t, $exp1);
    }
};
subtest "random_tests_variance"  => sub {
    my @twns = ('Rome', 'London', 'Paris', 'NY', 'Vancouver', 'Sydney', 'Bangkok', 'Tokyo', 'Lima',
                'Beijing', 'Lima', 'Montevideo', 'Caracas', 'Madrid', 'Berlin', 'Lon', 'Rome', 'Lim', 'Tok');
    for (1..10) {
        my $n = int(rand(@twns));
        my $t = $twns[$n];
        my $exp = varianceGk($data, $t);
        testing_variance('data', $data, $t, $exp);
        my $exp1 = varianceGk($data1, $t);
        testing_variance('data1', $data1, $t, $exp1);
    }
};

done_testing();