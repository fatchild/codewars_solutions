import re

def str_count(strng, letter):
    return len(re.findall(r'(' + letter + ')', strng))