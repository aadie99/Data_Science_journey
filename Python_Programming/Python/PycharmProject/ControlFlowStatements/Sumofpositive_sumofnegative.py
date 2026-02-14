n = int(input('Enter the number of numbers '))
psum = 0
nsum = 0
count = 0

while count < n:
    m = int(input('Enter the number '))
    if m > 0:
        psum = psum + m
    else:
        nsum = nsum + m
    count += 1

print('The positive sum and negative sum are ',psum, nsum)

