use Test::Most;
use SolutionOddPyramid;

subtest "Sample Tests" => sub {
  is(SolutionOddPyramid::row_sum_odd_numbers(1), 1);
  is(SolutionOddPyramid::row_sum_odd_numbers(2), 8);
  is(SolutionOddPyramid::row_sum_odd_numbers(3), 27);
  is(SolutionOddPyramid::row_sum_odd_numbers(4),  64);
  is(SolutionOddPyramid::row_sum_odd_numbers(42), 74088);
};

done_testing();