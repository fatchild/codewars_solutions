import codewars_test as test
from Solution import adjacent_element_product

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it("Positive numbers")
    def _():
        test.assert_equals(adjacent_element_product([5, 8]), 40)
        test.assert_equals(adjacent_element_product([1, 2, 3]), 6)
        test.assert_equals(adjacent_element_product([1, 5, 10, 9]), 90)
        test.assert_equals(adjacent_element_product([4, 12, 3, 1, 5]), 48)
        test.assert_equals(adjacent_element_product([5, 1, 2, 3, 1, 4]), 6)

    @test.it("Both positive and negative values")
    def _():
        test.assert_equals(adjacent_element_product([3, 6, -2, -5, 7, 3]), 21)
        test.assert_equals(adjacent_element_product([9, 5, 10, 2, 24, -1, -48]), 50)
        test.assert_equals(adjacent_element_product([5, 6, -4, 2, 3, 2, -23]), 30)
        test.assert_equals(adjacent_element_product([-23, 4, -5, 99, -27, 329, -2, 7, -921]), -14)
        test.assert_equals(adjacent_element_product([5, 1, 2, 3, 1, 4]), 6)
        
    @test.it("Contains zeroes")
    def _():
        test.assert_equals(adjacent_element_product([1, 0, 1, 0, 1000]), 0)
        test.assert_equals(adjacent_element_product([1, 2, 3, 0]), 6)