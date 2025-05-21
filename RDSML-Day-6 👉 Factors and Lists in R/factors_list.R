# Factors in R

# Summary of numeric items
participants_age = c(78, 25, 68, 45, 48, 36)
summary(participants_age)

# Finding summary of characters
proffesion = c('Doctor', 'Teacher', 'Teacher', 'Businessmen', 'Teacher')
summary(proffesion)

profession = factor(proffesion)
summary(profession)

# Putting the summary in order
birth_month = c('jan', 'dec', 'apr', 'aug', 'jan', 'march', 'jun', 'apr', 'jul', 'aug', 'sep', 'apr', 'oct', 'jul', 'sep')
summary(birth_month)

birth_month_fact = factor(birth_month, 
                          ordered = TRUE, 
                          levels = c('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec')) 
summary(birth_month_fact)

# Lists in R
# Lists are used to place number of items in a bundle

a = c(2, 4, 7)
b = c('red', 'green', 'blue')
c = 'welcome'

my_list = list(a, b, c)

my_list

# Naming the list items
my_list = list(Pieces = a, colours = b, message = c)
my_list

# Calling a specofic data structure
my_list[1]
my_list['colours']
my_list$message

# Calling specific items from the data structure
my_list$colours[1]
