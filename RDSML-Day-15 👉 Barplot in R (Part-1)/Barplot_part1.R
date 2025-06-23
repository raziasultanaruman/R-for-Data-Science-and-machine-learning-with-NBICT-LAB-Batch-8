# Creating a data frame 
dataset = data.frame(dose = c("D0.5", "D1", "D2"),
                     len = c(4.2, 10, 29.5))
# Exporting R file to excel

# Basic barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity")

# Horizontal barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity") +
  coord_flip()

#changing the width of bar
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", width=.5)

#Changing colors 
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", color = "blue", fill = "white", width=.5)

# Minimal theme with blue fill color
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal()

# Bar plot with levels
# outside bars
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = len), vjust =-.5, size = 3, color = "#9F9F9F") +
  theme_minimal()

# Inside bars
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = len), vjust =1.6, size = 3, color = "#EEEEEE") +
  theme_minimal()

mycardata = mtcars  (#Built in data)
# Barplot of counts
# To make a bar plot of count we will make a mtcars dataset
  
ggplot(data = mycardata, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") +
  theme_minimal() #count is used instead of identity as it has to count the frequency first


  