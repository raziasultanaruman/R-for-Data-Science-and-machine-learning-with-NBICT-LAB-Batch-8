# Vectors in R

# creating a vector using a c() command
student.height = c(60, 69, 55, 62)
student.height

# checking the class of the vector student height
is.numeric(student.height)
is.logical(student.height)

# R automatically converts numeric to text when you have a text item in vector
b = c(5, 8, 2, "sv")
b
is.numeric(b)
is.character(b)

# we can convert data types
# for example from numeric to character
a <- c(1, 2, 3, 4, 5)
a
is.numeric(a)
as.character(a)
a
class(a)

# logical operator True and False when converted to numeric, true converts to 1
# and false converts to zero
d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d

# converting numeric to logical (1 or any numbers other than 0 converts to true)
# 0 converts to 1
d
class(d)
d = as.logical(d)
d
e = c(1, 0, 0, 1, 0, 23, -7, 0)
e= as.logical(e)
e

# creating sequential vector
# creating a vector starting from 1 to 10
my_seq = c(1:100)
my_seq
my_seq = c(1:50, 80, 99, 88, 95)
my_seq

# creating a sequential vector using a seq( function)
new_seq = c(seq(1,10))
new_seq

# Sequence in steps of 3 
new_seq = c(seq(1,10, by=3))
new_seq

# Vectors can have character 
names = c('Elias', "mahfuza", 'Ashraf', 'Chaitali')
names
class(names)
names[3:4]

# Assigning names to vector values
my_values = c(4, 7, 9, 11)
names(my_values) = c('a', 'b', 'c', 'd')
my_values
my_values['c']
