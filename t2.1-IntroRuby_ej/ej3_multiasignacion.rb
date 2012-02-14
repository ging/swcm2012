a = b = c = 1       # a = 1, b = 1, c = 1

d = 3 + (f = 1)     # d = 4, f = 1

f, z = 3, 4         # f = 3, z = 4
f, z = 3, 4, 5      # f = 3, z = 4
f, *, z = 3, 4, 5   # f = 3, z = 5       “*”: resto de valores entre “a” y “b”
f, *z = 3, 4, 5     # f = 3, z = [4, 5]  “*b”: resto de valores a “b”

a, d = d, a         # a = 4, d = 1     Intercambia los valores de “a” y “d”
