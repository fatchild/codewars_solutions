use warnings;
use strict;
use Test::More;
use SolutionCountVowels qw(get_count);

subtest "Sample Tests" => sub {
    is(get_count("abracadabra"), 5);
    is(get_count("pear tree"), 4);
    is(get_count("o a kak ushakov lil vo kashu kakao"), 13);
    is(get_count("my pyx"), 0);
};

done_testing();