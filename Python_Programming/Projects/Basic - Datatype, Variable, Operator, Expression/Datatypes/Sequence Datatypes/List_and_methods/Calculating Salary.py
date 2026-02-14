work_hours = [int(x) for x in input('Enter the working hours, separated by spaces').split()]
wages = int(input('Enter the wages'))
total = sum(work_hours)
salary = total * wages
print(salary)

