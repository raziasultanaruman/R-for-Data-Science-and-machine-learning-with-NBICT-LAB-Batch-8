# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x= wt, y = mpg)) + 
  geom_point()

# Changing the points size and shapes
ggplot(dataset, aes(x= wt, y = mpg)) + 
  geom_point(size = 2, shape = 18)

# Adding the regression line
ggplot(dataset, aes(x= wt, y = mpg)) + 
  geom_point(size = 2, shape = 18) + 
  geom_smooth()