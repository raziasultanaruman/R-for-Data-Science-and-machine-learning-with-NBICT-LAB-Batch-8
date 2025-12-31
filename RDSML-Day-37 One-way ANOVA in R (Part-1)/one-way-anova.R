# One way anova
# Importing the dataset
PlantGrowth <- PlantGrowth

# Importing the dplyr library
library(dplyr)
# Computing the group means, sd and se
stats <- PlantGrowth %>%
  group_by(group)  %>%
  summarise(
    mean = mean(weight), 
    sd = sd(weight),
    se = sd(weight)/sqrt(n())
  )

print(stats) 

# Creating group wise box plots
boxplot(weight ~ group, 
        data = PlantGrowth, 
        main = "PlantGrowth data",
        ylab = "Dried weight of plants", 
        col = "lightgray"
        )
# Visualizing the data using mean plots
install.packages("ggpubr")
library(ggpubr)
ggline(PlantGrowth,
       x = "group",
       y = "weight",
       add = c("mean_se", "jitter"))

# Running the one-way ANOVA test
anova <- aov(weight ~ group, data = PlantGrowth)
Summary <- anova
summary(anova)


