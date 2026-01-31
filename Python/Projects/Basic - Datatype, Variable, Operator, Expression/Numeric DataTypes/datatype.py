# Numeric Datatypes = Int, Float, Bool, Complex
# There is no size limit
# values can be negative too
# Literals are the direct values written in the program
# b = 12,250 (comma is not allowed, so use b = 12_250 instead) Underscores are used to separate the digits

a = 8
print(type(a))

b = 10.8
print(b, type(b))

c = 10 + 5j

## Typecasting

price = int(input("Enter price "), 2) # with base 2 means binary number is entered, and typecasting is done into integer
print(price)

## Base Conversion
# a = 10                
# x = bin(a) 0b1010      x = oct(a) 0o12     x = hex(a) 0xa

## Type Conversion = Implicit and Explicit