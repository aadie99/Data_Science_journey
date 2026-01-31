n = int(input('Enter any number '))
m = n
rev = 0

while n > 0:
    r = n % 10
    n = n // 10
    rev = rev * 10 + r

if m == rev  :
    print("The given number is palindrome")
else :
    print("The given number is not palindrome")


