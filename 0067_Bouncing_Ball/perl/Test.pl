use strict;
use warnings;
use Test::More;
use SolutionBouncingBall qw(bouncing_ball);

sub testequal {
    my ($h, $bounce, $window, $exp) = @_;
    my $ans = bouncing_ball($h, $bounce, $window);
    is($ans, $exp, "data: $h, $bounce, $window");
}

subtest "basics" => sub {
    testequal(3.0, 0.66, 1.5, 3);
    testequal(30.0, 0.66, 1.5, 15);
    testequal(30.0, 0.75, 1.5, 21);
    testequal(10.0, 0.6, 10.0, -1);
    testequal(40.0, 1.0, 10.0, -1);
    
};

done_testing();