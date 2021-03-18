install.packages("UsingR")

library(UsingR)
data("father.son",package="UsingR")

# Exercise 1: Average height of the sons
mean(father.son$sheight)

# Exercise 2: Average height of sons with father height ≈ 71
library(dplyr)
filter(father.son, round(fheight)==71) %>% summarize(mean(sheight))

# Exercise 3: Which of the following can't be written as linear model?
# -> Y = a + b^t + e

# Exercise 4: Suppose you model the relationship between weight and height 
# across individuals with a linear model. You assume that the height of 
# individuals for a fixed weight x follows a linear model Y = a + bx + e.
# Which of the following best describes what e represents?
# 
# -> Between-individual variability: people of the same weight vary 
# in their height.

