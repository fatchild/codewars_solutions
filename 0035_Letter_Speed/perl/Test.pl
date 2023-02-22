use strict;
use warnings;
use Test::Most;
use SolutionLetterSpeed;

# TODO: Replace examples and use TDD by writing your own tests

subtest 'example tests' => sub {
    is(SolutionLetterSpeed::speedify('AZ'), 'A                         Z');
    is(SolutionLetterSpeed::speedify('ABC'), 'A B C');
    is(SolutionLetterSpeed::speedify('ACE'), 'A  C  E');
    is(SolutionLetterSpeed::speedify('CBA'), '  A');
    is(SolutionLetterSpeed::speedify('HELLOWORLD'), '     E H    DLL   OLO   R  W');
};

done_testing();