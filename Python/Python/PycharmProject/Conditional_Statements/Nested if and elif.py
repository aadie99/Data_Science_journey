# # Using elif in place of Nested if

john = float(input('Enter the age of john '))
ajay = float(input('Enter the age of ajay '))
smith = float(input('Enter the age of smith '))

if john > smith and john > ajay:
    print('john is the eldest')
elif smith > ajay:
        print('smith is the eldest')
else:
        print('ajay is the eldest')


