l = [[1,2,3,4],[1,2,3,4],[1,2,3,4]]
l1 = []

for i in range(4):
    s = []
    for j in range(3):
        r = l[j][i]
        s.append(r)
    l1.append(s)
print(l1)

