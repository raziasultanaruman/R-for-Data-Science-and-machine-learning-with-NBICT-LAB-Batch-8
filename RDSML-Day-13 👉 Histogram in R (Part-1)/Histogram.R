# Importing the dataset
dataset = read.csv("data.csv")

# Importing the Library
library(ggplot2)

# Basic histogram using ggplot2
ggplot(dataset, aes(x = weight))+
  geom_histogram()

# Changing the width of bins
ggplot(dataset, aes(x = weight))+
  geom_histogram(bandwidth = 1, color = "black")

# Changing color
ggplot(dataset, aes(x = weight))+
  geom_histogram(bandwidth = 1, color = "black", fill = "blue")

# Adding the mean line
myplot = ggplot(dataset, aes(x = weight))+
  geom_histogram(color = "black", fill = "white")

myplot + geom_vline(aes(xintercept = mean(weight)),
  color = "blue", linetype = "dashed", size = 1)

# Histogram with density plot
ggplot(dataset, aes(x = weight))+
  geom_histogram(aes(y = after_stat(density)), color = "black", fill="white")+
                   geom_density(fill = 'blue', alpha=.2)

# Changing the line color and fill color
ggplot(dataset, aes(x = weight))+
  geom_histogram(color = "black", fill = "blue")

                 