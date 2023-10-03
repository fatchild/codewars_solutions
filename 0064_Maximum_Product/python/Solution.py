def adjacent_element_product(array):
    a = array[0] * array[1]
    for i in range(2, len(array)):
        b = array[i-1] * array[i]
        if (b > a):
            a = b
        
    return a