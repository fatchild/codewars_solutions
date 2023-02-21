use Test::Most;
use SolutionSmallestArray;

subtest "Examples" => sub {
  is(SolutionSmallestArray::nthSmallest([3, 1, 2],                      2),  2);
  is(SolutionSmallestArray::nthSmallest([1, 1, 1],                      2),  1);
  is(SolutionSmallestArray::nthSmallest([15,20,7,10,4,3],               3),  7);
  is(SolutionSmallestArray::nthSmallest([-5,-1,-6,-18],                 4), -1);
  is(SolutionSmallestArray::nthSmallest([-102,-16,-1,-2,-367,-9],       5), -2);
  is(SolutionSmallestArray::nthSmallest([2,169,13,-5,0,-1],             4),  2);
  is(SolutionSmallestArray::nthSmallest([177,225,243,-169,-12,-5,2,92], 5), 92);
};

done_testing();