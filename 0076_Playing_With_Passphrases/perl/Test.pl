use strict;
use warnings;
use Test::More;
use Solution qw(play_pass);

sub dotest {
    my ($s, $n, $exp) = @_;
    my $ans = play_pass($s, $n);
    is($ans, $exp, "play_pass($s, $n)\n");
}

subtest "basics" => sub {
    dotest("I LOVE YOU!!!", 1, "!!!vPz fWpM J");
    dotest("I LOVE YOU!!!", 0, "!!!uOy eVoL I");
    dotest("AAABBCCY", 1, "zDdCcBbB");
    dotest("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2,
            "4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO");
    
};

done_testing();