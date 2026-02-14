# # Check whether the given year is leap year or not

year = int(input('Enter the year number '))

if year % 100 == 0:
    if year % 400 == 0:
        print('The year is leap year')
    else:
        print('The year is not a leap year')
elif year % 4 == 0:
    print('The year is a leap year')
else:
    print('The year is not leap year')

# To find the second largest number of given three numbers

a = int(input('Enter the first number'))
b = int(input('Enter the second number'))
c = int(input('Enter the third number'))
if a > b and a > c:
    if b > c:
        print('b')
    else:
        print('c')
elif b > a and b > c:
    if a > c:
        print('a')
    else:
        print('c')
else:
    if a > b:
        print('a')
    else:
        print('b')

