import math

a = float(input('Enter the value of a ' ))
b = float(input('Enter the value of b'))
c = float(input('Enter the value of c'))

r1 = (- b + math.sqrt(b**2 - 4 * a * c) ) / (2 * a)
r2 = (- b - math.sqrt(b**2 - 4 * a * c) ) / (2 * a)

print('The roots of the given equation are r1 and r2 ', r1, r2)
