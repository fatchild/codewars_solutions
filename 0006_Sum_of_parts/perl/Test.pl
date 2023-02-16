# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most

use strict;
use warnings;
use Test::More;

use SolutionSumOfParts qw(parts_sums);

sub dotest { 
    my ($s, $exp) = @_;
    my $ss = join " ", @{$s};
    my $sexp = join " ", @{$exp};
    my @ans = parts_sums(@{$s});
    my $sans = join " ", @ans;
    is($sans, $sexp, "parts_sums($ss)");
};

subtest "basics" => sub {   
    my @s = ();
    my @exp = (0);
    dotest(\@s, \@exp);
    @s = (0, 1, 3, 6, 10);
    @exp = (20, 20, 19, 16, 10, 0);
    dotest(\@s, \@exp);    
    @s = (744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358);
    @exp = (10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0);
    dotest(\@s, \@exp);   
    @s = (30350, 76431, 156228, 78043, 98977, 80169, 32457, 182875, 162323, 17508, 57971, 171907);
    @exp = (1145239, 1114889, 1038458, 882230, 804187, 705210, 625041, 592584, 409709, 247386, 229878, 171907, 0);
    dotest(\@s, \@exp);
    @s = (158077, 143494, 196531, 26272, 35656, 68756, 109861, 36958, 83895, 134127, 81618, 193758, 143422);
    @exp = (1412425, 1254348, 1110854, 914323, 888051, 852395, 783639, 673778, 636820, 552925, 418798, 337180, 143422, 0);
    dotest(\@s, \@exp);
    
};

done_testing();

