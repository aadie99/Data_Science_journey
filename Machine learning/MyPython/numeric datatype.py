Python 3.11.3 (tags/v3.11.3:f3909b8, Apr  4 2023, 23:49:59) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> 
= RESTART: C:/Users/aditya tathe/OneDrive/Desktop/MyPython/numeric datatype.py =
>>> a=12
>>> a
12
>>> print(a)
12
>>> type(a)
<class 'int'>
>>> a=-2
>>> type(a)
<class 'int'>
>>> a=23949758200250286926438
>>> a
23949758200250286926438
>>> type(a)
<class 'int'>
>>> 
>>> print(a__sizeof__())
Traceback (most recent call last):
  File "<pyshell#10>", line 1, in <module>
    print(a__sizeof__())
NameError: name 'a__sizeof__' is not defined
>>> print(a.__sizeof__())
36
>>> a =-2
>>> print(a.__sizeof__())
28
