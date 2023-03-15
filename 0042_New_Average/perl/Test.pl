use strict;
use warnings;
use POSIX qw(ceil);
use Test::More;
use SolutionNewAverage qw(new_avg);

sub dotest {
    my ($lst, $navg, $exp) = @_;
    #my $slst = join ",", @$lst;
    my $ans = new_avg($lst, $navg);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    my $arr = [14.0, 30.0, 5.0, 7.0, 9.0, 11.0, 16.0];
    dotest($arr, 90, 628);
    $arr = [14, 30, 5, 7, 9, 11, 15];
    dotest($arr, 92, 645);
    $arr = [14, 30, 5, 7, 9, 11, 15];
    dotest($arr, 2, -1);
};

done_testing();