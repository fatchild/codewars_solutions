use strict;
use warnings;
use Test::More;
use Solution qw(order_weight);

sub testing { 
    my ($s, $exp) = @_;
    my $ans = order_weight($s);
    is($ans, $exp, "");
};

subtest "basics" => sub {
    testing("56 65 74 1000 99 680 86 180 90", "1000 180 90 56 65 74 680 86 99");
    testing('103 123 4444 99 2000', '2000 103 123 4444 99');
    testing('2000 10003 1234000 44444444 9999 11 11 22 123', '11 11 2000 10003 22 123 1234000 44444444 9999');
    testing('', '');
    testing('50', '50');
    
};

done_testing();
