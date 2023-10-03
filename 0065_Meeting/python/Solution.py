def meeting(s):
    s = s.upper()
    s = s.split(';')
    s = map(lambda n: '(' + n.split(':')[1] + ', ' + n.split(':')[0] + ')', s)
    s = ''.join(sorted(s))
    return s