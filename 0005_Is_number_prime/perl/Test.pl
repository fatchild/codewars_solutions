use Test::Most;

# The name of the solution package is inferred from the code.
use SolutionIsNumberPrime qw(is_prime);

subtest "test_examples" => sub {
    is(is_prime(0), 0, '0 is not a prime number');
    is(is_prime(1), 0, '1 is not a prime number');
    is(is_prime(2), 1, '2 is a prime number');
    is(is_prime(5), 1, '5 is a prime number');
    is(is_prime(1217), 1, '1217 is a prime number');
    is(is_prime(1218), 0, '1217 is not a prime number');
    is(is_prime(-1), 0, '-1 is not a prime number');
};

done_testing();