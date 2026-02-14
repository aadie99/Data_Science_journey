# When you want to break the loop
# while True:
#     n = int(input('Enter the number '))
#     if n > 0:
#         print('The number is positive.')
#     elif n < 0:
#         print('The number is negative.')
#     else:
#         break

# # If you want to print 10 numbers, but it should not include multiple of 3
# count = 0
# while count < 10:
#     n = int(input('Enter the number '))
#     if n % 3 == 0:
#         continue  # it will continue to print the value until the required amount of numbers are not printed
#     print(n)
#     count += 1

# Using pass in place of continue
count = 0
while count < 10:
    n = int(input('Enter the number '))
    if n % 3 == 0:
        pass  # it will pass and do nothing
    else:
        print(n)
    count += 1
