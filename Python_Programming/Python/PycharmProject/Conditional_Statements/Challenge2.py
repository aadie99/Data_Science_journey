#Check whether the student is passed or failed, by taking 3 subject marks
maths = int(input('Enter the marks of maths'))
physics = int(input('Enter the marks of physics'))
chemistry = int(input('Enter the marks of chemistry'))

if maths >= 35 and physics >= 35 and chemistry >= 35:
    print('The student is passed')
else:
    print('The student is failed')

#Check if the user is authorized for admin access
user_name = input('Enter your name ')
if user_name == 'Aditya Tathe':
    print('The user is authorized')
else:
    print('The user is unauthorized')

#Check if a given lower case character is a vowel or consonant
alphabet = input('Enter the alphabet')
if alphabet == 'a' or alphabet == 'e' or alphabet == 'i' or alphabet == 'o' or alphabet == 'u':
    print('The alphabet is a vowel')
else:
    print('The alphabet is consonant')

