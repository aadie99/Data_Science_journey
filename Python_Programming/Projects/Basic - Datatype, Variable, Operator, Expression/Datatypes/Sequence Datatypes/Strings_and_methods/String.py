# String is a collection of alphabets
# Used for making a word, sentence, paragraph which is most commonly used data in programming language

# An ordered sequence of characters
# Ordered = positions matter
# Indexed = Each character has an index
# Immutable = cannot be changed directly

# s1 = 'Hello' #s1 -> variable #'Hello' -> literal
# for x in s1:
#     print(x)

## String Operators
# Concatenation operator = Use + to append other string to a string 
# TypeError -> can only concatenate str to str (not "int")
# Use str() function -> print("a" + str(12)) to print string values along with other numeric datatypes

# Relational Operators = Check relations between two strings  (S1 = 'Alaska' < S2 = 'Canada')
# Alaska < alaska (A -> 65, a -> 97)
# The one which comes first in alphabet series is smaller than the next one.
# abcde < abcdf

# Indexing -> Every character is indexed from 0 to n and -1 to n (counting from the other end)
# String indices must be integers, cannot be tuples

# Slicing = string[start:end:step] (Prints the content in the following order -> start end and step)
# ValueError -> Slice step cannot be zero

### Important Methods
# Method = Function present inside the class
# (can use multiple functions one after the other s.upper().isupper())
# object.method() -> s.upper()
# function(object) -> Built-in Functions 
## len() 
## sorted()

# dir(str) -> Displays methods of str object

# .find() -> s.find(substring[, start [, end]])
## If any substring is not found in the specified range, output is -1
# .rfind() -> starts counting from right side, that is from end 
# .lfind() -> AttributeError = No such attribute 'lfind' exists in str object
# .count() -> s.count(substring[, start [, end]])
# .index() -> s.index(substring[, start [, end]]) 
# .rindex() -> 

# Converting string into list -> list(string)

## Removing spaces and Adding spaces methods
# .rjust() -> s.rjust(width[, fill])
# .ljust() -> s.ljust(width[, fill])
# .center() -> s.center(width[, fill])
# .lstrip() ->
# .strip() ->
# .rstrip() ->

## Inquiry methods
# isupper() ->
# islower() ->
# istitle() ->
# isalnum() ->
# isalpha() ->
# isspace() ->
# isascii() ->
# isidentifier -> Checks if given string is valid variable or not
# isprintable() -> 
# isdecimal() ->  True if they are represented as strings and contain only digits 0–9.
# isdigit() ->
# isnumeric() ->

## More methods
# .capitalize() -> Capitalize first letter of whole string
# .lower()
# .upper()
# .title() -> Capitalize first letter of every word of string
# .swapcase()
# .casefold() -> Also Converts international text into lowercase

# .startswith() -> s.startswith(prefix [, start [, end]])
# .endswith() -> s.endswith(prefix [, start [, end]])
# .removesuffix()
# .removeprefix()
# .partition()
# .rpartition()
# .replace() -> s.replace(old, new [, count])

## Joining and Splitting methods
# .join() -> s1.join(s2) (s1 = separator, s2 = iterable)
# .split() -> s.split([sep[, maxsplit]]) (separates using separator provided, whitespace)
# .rsplit()
# .splitlines() -> keep ends

# Problem 1
# s = str(input("Enter your name:"))
# print("The sorted list of your name:", sorted(s))

# Problem 5
# s = str(input("Enter your mail: "))
# v = s.partition('@')
# print("The user_id:", v[0], "\nThe domain name:", v[2])

# Problem 6
# s = str(input("Enter name:"))
# v = s[::-1]
# if s == v:
#     print('Palindrome')
# else:
#     print('Not palindrome')

# Problem 7
# s = str(input("Enter name:"))
# v = s[::-1]
# if s == v:
#     print('Palindrome')
# else:
#     print(s + v)

# Problem 9 - (If the cases are not identical, or input contains spaces)
# s1 = str(input("Enter name:"))
# s2 = str(input("Enter name:"))
# if sorted(s1.replace(" ","").lower()) == sorted(s2.replace(" ","").lower()):
#     print("Anagram")
# else:
#     print("Not Anagram")

# Sliding Window Technique