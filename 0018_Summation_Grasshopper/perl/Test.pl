use Test::Most;
use SolutionSummation;

subtest "Fixed Tests" => sub {
  is(SolutionSummation::summation(1), 1);
  is(SolutionSummation::summation(8), 36);
  is(SolutionSummation::summation(22), 253);
  is(SolutionSummation::summation(100), 5050);
  is(SolutionSummation::summation(213), 22791);
};

done_testing();
