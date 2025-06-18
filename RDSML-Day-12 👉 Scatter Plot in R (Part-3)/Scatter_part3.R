# Importing the library
library(ggplot2)
dataset = mtcars

# Converting cyl column from a numeric to a factor variable 
dataset$cyl = as.factor(dataset$cyl)

# Adding regression lines based on multiple groups
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() +
  geom_smooth(method = lm)

# Removing the confidence interval
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() +
  geom_smooth(method = lm, se=FALSE)

# Extending the regression line
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() +
  geom_smooth(method = lm, se=FALSE, fullrange = TRUE)

# Filling the color of confidence bands
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() +
  geom_smooth(method = lm, aes(fill=cyl))

# Changing the point shapes manually and changning position of legends
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  theme(legend.position = "top")

# Changing the points color manually

ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  scale_color_manual(values = c("darkblue", "grey", "red"))+
  theme(legend.position = "top")

# Customizing scatter plot
ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  scale_color_manual(values = c("darkblue", "grey", "red"))+
  labs(title="Miles per gallon \naccording to the weight",
       x="weight", y="Miles per gallon")+
  theme(legend.position = "top")

# Customizing themes
plot = ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  scale_color_manual(values = c("darkblue", "grey", "red"))+
  labs(title="Miles per gallon \naccording to the weight",
       x="weight", y="Miles per gallon")+
  theme(legend.position = "top")
plot + theme_classic()
plot + theme_minimal()
