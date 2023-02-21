use warnings;
use strict;
use Test::More;
use SolutionTrollsVowel qw(disemvowel);

subtest "Sample Tests" => sub {
    is(disemvowel("This website is for losers LOL!"), "Ths wbst s fr lsrs LL!");
    is(disemvowel("No offense but,\nYour writing is among the worst I've ever read"), "N ffns bt,\nYr wrtng s mng th wrst 'v vr rd");
    is(disemvowel("What are you, a communist?"), "Wht r y,  cmmnst?");
};

done_testing();
