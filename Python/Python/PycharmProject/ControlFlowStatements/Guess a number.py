import random
n = random.randint(1,10)
guess = 0
while guess != n:
    guess = int(input('Enter a number '))
    if guess < n:
        print('The guess is smaller')
    elif guess > n:
        print('The guess is larger')
    else:
        print('The guess is correct')

