Python 3.11.3 (tags/v3.11.3:f3909b8, Apr  4 2023, 23:49:59) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
i=1
f=2.4
x=int(f)
x
2
b=True
int(b)
1
x
2

float(f)
2.4
float(i)
1.0
s1=john
Traceback (most recent call last):
  File "<pyshell#10>", line 1, in <module>
    s1=john
NameError: name 'john' is not defined
s1='john'
int(s1)
Traceback (most recent call last):
  File "<pyshell#12>", line 1, in <module>
    int(s1)
ValueError: invalid literal for int() with base 10: 'john'
s2='234'
int(s2)
234
complex(f)
(2.4+0j)
s3'0b1111'
SyntaxError: invalid syntax
s3='0b1111'
int(s3)
Traceback (most recent call last):
  File "<pyshell#18>", line 1, in <module>
    int(s3)
ValueError: invalid literal for int() with base 10: '0b1111'
int(s3,2)
15
int(s3,8)
Traceback (most recent call last):
  File "<pyshell#20>", line 1, in <module>
    int(s3,8)
ValueError: invalid literal for int() with base 8: '0b1111'
s4='0o1111'
int(s4,8)
585
bool(s1)
True
bool(s4)
True
>>> bool(i)
True
>>> p=0
>>> bool(p)
False
>>> a=0+0j
>>> bool(a)
False
>>> complex(a)
0j
>>> int(a)
Traceback (most recent call last):
  File "<pyshell#31>", line 1, in <module>
    int(a)
TypeError: int() argument must be a string, a bytes-like object or a real number, not 'complex'
>>> float(a)
Traceback (most recent call last):
  File "<pyshell#32>", line 1, in <module>
    float(a)
TypeError: float() argument must be a string or a real number, not 'complex'
>>> str(a)
'0j'
>>> 
>>> 
>>> 
>>> str(i)
'1'
>>> str(a)
'0j'
>>> str(f)
'2.4'
>>> n=str(a)
>>> n
'0j'
>>> print(n)
0j
>>> print('n')
n
