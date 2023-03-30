use warnings;
use strict;
use Test::Most;
use SolutionObscureCardNumber;

subtest "Sample Tests" => sub {
    is(SolutionObscureCardNumber::maskify("4556364607935616"), "############5616");
    is(SolutionObscureCardNumber::maskify("1"), "1");
    is(SolutionObscureCardNumber::maskify("11111"), "#1111");
};

done_testing();
