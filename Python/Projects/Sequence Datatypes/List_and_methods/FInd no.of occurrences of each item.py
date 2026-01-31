list = ['a','b','c','d','a','b','c','d']
list2 = []

for i in list:
    if i not in list2:
        list2.append(i)
        count = list.count(i)
        list2.append(count)
print(list2)


