# day: A B C
# condition: --------------
# treated | 2 2 2
# control | 2 2 2

# Exercise 1: Given the factors we have defined above, and not defining any new 
# ones, which of the following R formula will produce a design matrix 
# (model matrix) that let's us analyze the effect of condition, controlling for 
# the different days:
#
# -> ~ day + condition