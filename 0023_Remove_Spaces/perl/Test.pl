# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
# use strict;
# use warnings;
# use Test::More;
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most
use Test::Most;

# The name of the solution package is inferred from the code.
use SolutionRemoveSpaces;

subtest "examples" => sub {
  is(SolutionRemoveSpaces::no_space("8 j 8   mBliB8g  imjB8B8  jl  B'), '8j8mBliB8gimjB8B8jlB"), "8j8mBliB8gimjB8B8jlB'),'8j8mBliB8gimjB8B8jlB");
  is(SolutionRemoveSpaces::no_space("8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd'), '88Bifk8hB8BB8BBBB888chl8BhBfd"), "88Bifk8hB8BB8BBBB888chl8BhBfd'),'88Bifk8hB8BB8BBBB888chl8BhBfd");
  is(SolutionRemoveSpaces::no_space("8aaaaa dddd r     '), '8aaaaaddddr"), "8aaaaaddddr'),'8aaaaaddddr");
  is(SolutionRemoveSpaces::no_space("jfBm  gk lf8hg  88lbe8 '), 'jfBmgklf8hg88lbe8"), "jfBmgklf8hg88lbe8'),'jfBmgklf8hg88lbe8");
  is(SolutionRemoveSpaces::no_space("8j aam'), '8jaam"), "8jaam'),'8jaam");
};

done_testing();