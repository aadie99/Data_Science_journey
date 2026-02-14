# # #Find the difference between the two numbers
a = int(input('Enter the first number'))
b = int(input('Enter the second number'))

d = a - b
if d >= 0:
    print('The difference of the two numbers = ', d)
else:
    print('The difference of the two numbers = ', -d)

# # #Check whether the given number is odd or even
number = int(input('Enter the number = '))

if number % 2 == 0:
    print('The given number is even')
else:
    print('The given number is odd')

# #Check for age eligibility for casting a vote
age = int(input('Enter your age = '))

if age >= 18:
    print('You are eligible')
else:
    print('Not eligible')

# # Check if the marks of the student are in the range 0-100
marks = int(input('Enter your marks = '))

if 0 <= marks <= 100:
    print('You are passed')
else:
    print('You are failed')

# # Check if a person is male or female
gender = str(input('Enter your gender'))

if gender == 'M' or gender == 'm':
    print('You are male')
else:
    print('You are female')


