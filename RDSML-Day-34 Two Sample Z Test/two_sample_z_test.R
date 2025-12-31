# Two_Sample z test
# Importing the library
library(BSDA)

# Importing the dataset
dataset <- read.csv("Perfume_Two_Sample.csv")

Machine1sd <- sd(dataset$Machine.1)
Machine2sd <- sd(dataset$Machine.2)

# Running the z test
z.test(x = dataset$Machine.1, 
       y = dataset$Machine.2, 
       sigma.x = Machine1sd,
       sigma.y = Machine2sd)