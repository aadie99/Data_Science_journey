Python 3.11.3 (tags/v3.11.3:f3909b8, Apr  4 2023, 23:49:59) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
10 + 1
11
10 + 1.2
11.2
10 + (2j + 4)
(14+2j)
10 \ (4+2j)
SyntaxError: unexpected character after line continuation character
10 + True
11
10 - False
10
10 * True
10
10*False
0
True \ 2
SyntaxError: unexpected character after line continuation character
1\2
SyntaxError: unexpected character after line continuation character
1 \ 2
SyntaxError: unexpected character after line continuation character
1/2
0.5
10/4+2j
(2.5+2j)
10/(4+2j)
(2-1j)
True/3
0.3333333333333333
>>> 29/False
Traceback (most recent call last):
  File "<pyshell#15>", line 1, in <module>
    29/False
ZeroDivisionError: division by zero
>>> 19/True
19.0
>>> 3*h
Traceback (most recent call last):
  File "<pyshell#17>", line 1, in <module>
    3*h
NameError: name 'h' is not defined
>>> 3*'hi'
'hihihi'
>>> 3+'hi'
Traceback (most recent call last):
  File "<pyshell#19>", line 1, in <module>
    3+'hi'
TypeError: unsupported operand type(s) for +: 'int' and 'str'
>>> 2 + h
Traceback (most recent call last):
  File "<pyshell#20>", line 1, in <module>
    2 + h
NameError: name 'h' is not defined
>>> 2 + 'h'
Traceback (most recent call last):
  File "<pyshell#21>", line 1, in <module>
    2 + 'h'
TypeError: unsupported operand type(s) for +: 'int' and 'str'
>>> '2' + 'h'
'2h'
>>> '3' * 'e'
Traceback (most recent call last):
  File "<pyshell#23>", line 1, in <module>
    '3' * 'e'
TypeError: can't multiply sequence by non-int of type 'str'
>>> 2*'f'
'ff'
