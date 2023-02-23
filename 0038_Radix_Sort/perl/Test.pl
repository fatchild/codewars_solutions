use Test::Most;
use SolutionRadixSort;

subtest "Fixed Tests" => sub {
  is(SolutionRadixSort::sortByBit((0,1,2)), 7);
  is(SolutionRadixSort::sortByBit((0,1,2,4)), 23);
  is(SolutionRadixSort::sortByBit((4,1,2)), 22);
  is(SolutionRadixSort::sortByBit((1,2,3)), 14);
  is(SolutionRadixSort::sortByBit((0)), 1);
  is(SolutionRadixSort::sortByBit((1)), 2);
  is(SolutionRadixSort::sortByBit((2)), 4);
  is(SolutionRadixSort::sortByBit(()), 0);
};


done_testing();
