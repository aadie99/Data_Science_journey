list1 = ['pizza','hotdog','nuggets','noodles','burger']
list2 = ['hotdog','noodles','nuggets','burger','pizza']

index1 = 10
index2 = 10

for i in range(len(list1)):
    j = list2.index(list1[i])

    if i + j < index1 + index2:
        index1 = i
        index2 = j

print(list1[index1])
