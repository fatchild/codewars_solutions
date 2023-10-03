import codewars_test as test
from Solution import largest_pair_sum

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(largest_pair_sum([10,14,2,23,19]), 42)
        test.assert_equals(largest_pair_sum([-100,-29,-24,-19,19]), 0)
        test.assert_equals(largest_pair_sum([1,2,3,4,6,-1,2]), 10)
        test.assert_equals(largest_pair_sum([-10, -8, -16, -18, -19]), -18)

@test.describe('Random Tests')
def random_tests():

    from random import choices, randint
    
    def generate_random_case(min_value=-100, max_value=100, min_length=2, max_length=40): 
        return list(choices(range(min_value, max_value), k=randint(min_length, max_length)))

    def _largest_pair_sum_1234(numbers): 
        res = sorted(numbers)
        return res[-1] + res[-2]

    def _do_one_test():
        numbers = generate_random_case()
        expected = _largest_pair_sum_1234(numbers)
        actual = largest_pair_sum(numbers)
        test.assert_equals(actual, expected)

    @test.it('Random Test Cases')
    def random_test_cases():
        for _ in range(100):
            _do_one_test()