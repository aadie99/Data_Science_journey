Python 3.11.3 (tags/v3.11.3:f3909b8, Apr  4 2023, 23:49:59) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
a=1_2
a
12
price = 250
price
250
f=12.34e3
f
12340.0
a=True
a
True
a=TRUE
Traceback (most recent call last):
  File "<pyshell#8>", line 1, in <module>
    a=TRUE
NameError: name 'TRUE' is not defined. Did you mean: 'True'?
a='TRUE'
a
'TRUE'
a=2+5j
a
(2+5j)
a=complex(3,4)
a
(3+4j)
a=3
b=6
if a<b
SyntaxError: incomplete input
if a<b then
SyntaxError: incomplete input
a='''John'''
a
'John'
>>> f=123_
SyntaxError: invalid decimal literal
>>> f=_123
Traceback (most recent call last):
  File "<pyshell#22>", line 1, in <module>
    f=_123
NameError: name '_123' is not defined
>>> 1232_34=w
SyntaxError: cannot assign to literal here. Maybe you meant '==' instead of '='?
>>> 123=f
SyntaxError: cannot assign to literal here. Maybe you meant '==' instead of '='?
>>> 123==f
False
>>> price=input('Enter price ')
Enter price 3425price=input('Enter price ')
>>> pice
Traceback (most recent call last):
  File "<pyshell#27>", line 1, in <module>
    pice
NameError: name 'pice' is not defined. Did you mean: 'price'?
>>> price
"3425price=input('Enter price ')"
>>> "3425price=input('Enter price ')"
"3425price=input('Enter price ')"
>>> 
>>> price=input('Enter price')
Enter price
>>> 345
345
>>> a=10
>>> a
10
>>> a=0B1010
>>> a
10
>>> a=0o12
>>> a
10
