l1 = [10,2,3,5,4]
l2 = [8,3,2,6,7]

l3 = []
for x in l1:
    if x in l2:
        l3.append(x)
print(l3)

