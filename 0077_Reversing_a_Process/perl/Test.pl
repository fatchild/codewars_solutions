use strict;
use warnings;
use Test::More;
use Solution qw(decode);

sub dotest {
    my ($s, $exp) = @_;
    my $ans = decode($s);
    is($ans, $exp, "decode($s)\n");
}

subtest "basics" => sub {
    dotest('6015ekx', 'mer');
    dotest('5057aan', 'Impossible to decode');
    dotest('1273409kuqhkoynvvknsdwljantzkpnmfgf', 'uogbucwnddunktsjfanzlurnyxmx');
    dotest('1544749cdcizljymhdmvvypyjamowl', 'mfmwhbpoudfujjozopaugcb');
    dotest('1122305vvkhrrcsyfkvejxjfvafzwpsdqgp', 'rrsxppowmjsrclfljrajtybwviqb');
    dotest('664443ymmgegeeiwaigsqkcaeguicc', 'Impossible to decode');
    
};

done_testing();
