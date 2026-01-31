amount = float(input('Enter the purchased amount'))

if amount <= 1000:
    discount = amount * (10/100)

elif 1000 < amount <= 5000:
    discount = amount * (20/100)

elif 5000 < amount <= 10000:
    discount = amount * (30/100)

else:
    discount = amount * (50/100)

disamount = amount - discount
print('The price is', disamount)


