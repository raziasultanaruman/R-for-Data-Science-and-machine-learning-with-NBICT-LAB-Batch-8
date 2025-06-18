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
  geom_smooth(method = lm)

# Removing the confidence interval
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = lm, se = FALSE)

# Loess method
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth()

# Change the line type and color
ggplot(dataset, aes(x= wt, y = mpg)) + 
  geom_point(size = 2, shape = 18) + 
  geom_smooth(method = lm, linetype = "dashed", 
              color = "darkblue")

# Changing the confidence interval color
ggplot(dataset, aes(x= wt, y = mpg)) + 
  geom_point(size = 2, shape = 18, color = "blue") + 
  geom_smooth(method = lm, linetype = "dashed", 
              color = "darkred", fill = "blue")

# Scatter plot with multiple groups

# Converting the cyl column from numeric to factor
dataset$cyl = as.factor(dataset$cyl)

# Changing the point shapes by the levels of cyl(cylinder)
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) +
  geom_point()

# Changing point shapes and colors of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  geom_point()

# Changing point shapes and colors and sizes of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl, size = cyl)) +
  geom_point()

