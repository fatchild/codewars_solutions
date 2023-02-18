use Test::Most;
use SolutionSquaring;

subtest "Sample Tests" => sub {
  is(SolutionSquaring::square(1), 1);
  is(SolutionSquaring::square(0), 0);
  is(SolutionSquaring::square(14), 196);
  is(SolutionSquaring::square(23), 529);
  is(SolutionSquaring::square(64), 4096);
  is(SolutionSquaring::square(10), 100);
};

done_testing();
