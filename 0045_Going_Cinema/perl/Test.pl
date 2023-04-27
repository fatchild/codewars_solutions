use strict;
use warnings;
use Test::More;
use SolutionGoingCinema qw(movie);

sub dotest {
    my ($card, $ticket, $percent, $exp) = @_;
    my $ans = movie($card, $ticket, $percent);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    dotest(500, 15, 0.9, 43);
    dotest(100, 10, 0.95, 24);
    dotest(600, 17, 0.95, 54);
    dotest(900, 11, 0.84, 88);
    dotest(700, 10, 0.93, 84);
};

done_testing();

