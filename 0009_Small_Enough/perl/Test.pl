use Test::Most;
use SolutionSmallEnough;

subtest "Basic tests" => sub {
  is(SolutionSmallEnough::small_enough((66, 101), 200), 1);
  is(SolutionSmallEnough::small_enough((78, 117, 110, 99, 104, 117, 107, 115), 100), 0);
  is(SolutionSmallEnough::small_enough((101, 45, 75, 105, 99, 107), 107), 1);
  is(SolutionSmallEnough::small_enough((80, 117, 115, 104, 45, 85, 112, 115), 120), 1);
  is(SolutionSmallEnough::small_enough((1,1, 1, 1, 1, 2), 1), 0);
  is(SolutionSmallEnough::small_enough((78, 33, 22, 44, 88, 9, 6), 87), 0);
  is(SolutionSmallEnough::small_enough((1, 2, 3, 4, 5, 6, 7, 8, 9), 10), 1);
  is(SolutionSmallEnough::small_enough((12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12), 12), 1);
};

done_testing();
