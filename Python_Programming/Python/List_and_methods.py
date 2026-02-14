Python 3.11.9 (tags/v3.11.9:de54cf5, Apr  2 2024, 10:12:12) [MSC v.1938 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
list = [1,2,3,4,5]
list
[1, 2, 3, 4, 5]
list[0] = 2
list
[2, 2, 3, 4, 5]
list[2] = 'Aditya'
list
[2, 2, 'Aditya', 4, 5]
print(list)
[2, 2, 'Aditya', 4, 5]
len(list)
5
list.append()
Traceback (most recent call last):
  File "<pyshell#8>", line 1, in <module>
    list.append()
TypeError: list.append() takes exactly one argument (0 given)
list.append(2)
list
[2, 2, 'Aditya', 4, 5, 2]
list.append('Raj')
list
[2, 2, 'Aditya', 4, 5, 2, 'Raj']
list = [1,2,3,4,5,6,7,8,9,10]
list
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
list[3:8]
[4, 5, 6, 7, 8]
list
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
list[0:10:1]
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
list[-1:-10:]
[]
list[-1:-10:-1]
[10, 9, 8, 7, 6, 5, 4, 3, 2]
list[:-10:-1]
[10, 9, 8, 7, 6, 5, 4, 3, 2]
list[-1::-1]
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
>>> list[::-1]
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
>>> list[0:3] = [10,20,30]
>>> list
[10, 20, 30, 4, 5, 6, 7, 8, 9, 10]
>>> llist
Traceback (most recent call last):
  File "<pyshell#25>", line 1, in <module>
    llist
NameError: name 'llist' is not defined. Did you mean: 'list'?
list
>>> 
>>> list
[10, 20, 30, 4, 5, 6, 7, 8, 9, 10]
>>> list + [4]
[10, 20, 30, 4, 5, 6, 7, 8, 9, 10, 4]
>>> list1 = [1,2,3]
>>> list2 = [4,5,6]
>>> list1 = list1 + list2
>>> list1
[1, 2, 3, 4, 5, 6]
>>> list1.extend([4,5,6])
>>> list1
[1, 2, 3, 4, 5, 6, 4, 5, 6]
>>> list1
[1, 2, 3, 4, 5, 6, 4, 5, 6]
>>> list1 + [4]
[1, 2, 3, 4, 5, 6, 4, 5, 6, 4]
>>> list1 = [1,2,3]
>>> list1 + [4]
[1, 2, 3, 4]
>>> list1
[1, 2, 3]
>>> list1 = list1 + [4]
>>> list1
[1, 2, 3, 4]
>>> list1
[1, 2, 3, 4]
