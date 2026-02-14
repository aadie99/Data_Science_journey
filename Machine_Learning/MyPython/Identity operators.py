Python 3.11.3 (tags/v3.11.3:f3909b8, Apr  4 2023, 23:49:59) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
a = 19
b =34
a is b
False
a is not b
True
a= 0
b=0
a is not b
False
>>> a is b
True
 
>>> id(a)
140724382196488
>>> id(b)
140724382196488
>>> a is b
True
>>> a is not b
False
>>> 
...  
>>> a = input("Enter the value of a")
Enter the value of a 10
>>> 
>>> b = input("Enter the value of b")
Enter the value of b 10
>>> a is b
False
>>> a is not b
True
>>> id(a)
2463194747056
>>> id(b)
2465306550256
>>> type(a)
<class 'str'>
>>> a = int(input('Enter the value of a'))
Enter the value of a10
>>> b = int(input('Enter the value of b'))
Enter the value of b10
>>> id(a)
140724382196808
>>> id(b)
140724382196808
>>> a is b
True
