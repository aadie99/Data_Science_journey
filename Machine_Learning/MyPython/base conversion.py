Python 3.11.3 (tags/v3.11.3:f3909b8, Apr  4 2023, 23:49:59) [MSC v.1934 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> a=3
>>> a=85
>>> b=1
>>> c=0
>>> bin=s
Traceback (most recent call last):
  File "<pyshell#4>", line 1, in <module>
    bin=s
NameError: name 's' is not defined
>>> bin(a)
'0b1010101'
>>> bin(b)
'0b1'
>>> oct(a)
'0o125'
>>> hex(a)
'0x55'
