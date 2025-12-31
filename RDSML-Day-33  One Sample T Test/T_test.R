# Importing the dataset
mydata <- read.csv("bottle_data.csv")

# checking for normality
# Shapiro-wilk Test
shapiro.test(mydata$value)

# One sample T test
t.test( x= mydata$value, mu = 150)

