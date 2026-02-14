num_of_nos = int(input('Enter the number of numbers '))
max = int(input('Enter the number '))
count = 0

while count < num_of_nos - 1:
    n = int(input('Enter the number '))
    if n > max:
        max = n
    count += 1

print('The maximum of all the numbers ', max)