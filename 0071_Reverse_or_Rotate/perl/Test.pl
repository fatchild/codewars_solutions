# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# use strict;
# use warnings;
# use Test::More;
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most
use strict;
use warnings;
use Test::More;
use Solution qw(find_nb);

sub dotest {
    my $k = shift;
    my $exp = shift;
    my $ans = find_nb($k);
    is($ans, $exp, "find_nb($k)");
}

subtest "basics" => sub {
    dotest(1, 1);
    dotest(2, -1);
    dotest(3, -1);
    dotest(4, -1);
    dotest(9, 2);
    dotest(36, 3);
    dotest(100, 4);

    dotest(4183059834009, 2022);
    dotest(24723578342962, -1);
    dotest(135440716410000, 4824);
    
};

done_testing();
