# You can use `Test::More` to write tests.
# https://metacpan.org/pod/Test::More
 use strict;
 use warnings;
# use Test::More;
# `Test::Most` can be used to load commonly needed features.
# See https://metacpan.org/pod/Test::Most
use Test::Most;

# The name of the solution package is inferred from the code.
use Solution qw(longest_repetition);

sub arref_to_string {
    my $r = shift;
    my $res = "";
    $res .= '[' . (join ",", @$r) . ']';
    return $res;
}

sub testing {
    my ($n, $exp) = @_;
    my $ans = longest_repetition($n);
    my $sans = arref_to_string($ans);
    my $sexp = arref_to_string($exp);
    is($sans, $sexp, "");
}

subtest "Basic Tests" => sub {
  testing("aaaabb", ["a", 4]);
  testing("bbbaaabaaaa", ["a", 4]);
  testing("cbdeuuu900", ["u", 3]);
  testing("abbbbb", ["b", 5]);
  testing("aabb", ["a", 2]);
  testing("ba", ["b", 1]);
  testing("", ["", 0]);
};

done_testing();