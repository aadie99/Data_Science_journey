Python 3.11.3 (tags/v3.11.3:f3909b8, Apr  4 2023, 23:49:59) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
bin(input(''))
4
Traceback (most recent call last):
  File "<pyshell#0>", line 1, in <module>
    bin(input(''))
TypeError: 'str' object cannot be interpreted as an integer
bin()
Traceback (most recent call last):
  File "<pyshell#1>", line 1, in <module>
    bin()
TypeError: bin() takes exactly one argument (0 given)
a=23
format(a,'b')
'10111'
b=7
format(b,'b')
'111'
85816108
85816108
s=1851897
format(s,'b')
'111000100000111111001'
format(s,'h')
Traceback (most recent call last):
  File "<pyshell#9>", line 1, in <module>
    format(s,'h')
ValueError: Unknown format code 'h' for object of type 'int'
s=2
format(s,'h')
Traceback (most recent call last):
  File "<pyshell#11>", line 1, in <module>
    format(s,'h')
ValueError: Unknown format code 'h' for object of type 'int'

================================ RESTART: Shell ================================
a=7
format(a,'b')
'111'
format(34,'b')
'100010'
a=90
bin(a)
'0b1011010'
hex(a)
'0x5a'
a.bit_length()
7
a=10
>>> b=14
>>> a&b
10
>>> a and b
14
>>> a$b
SyntaxError: invalid syntax
>>> a|b
14
>>> a or b
10
>>> 10&14
10
>>> 10 & 14
10
>>> 10 & 13
8
>>> 10 | 13
15
>>> 10^13
7
>>> format(7,'b')
'111'
>>> 10<<1
20
>>> a= 10<<1
>>> a
20
>>> print(a)
20
>>> a= 10>>2
>>> a
2
>>> 10>>3
1
>>> 10>>4
0
>>> 10>>5
0
