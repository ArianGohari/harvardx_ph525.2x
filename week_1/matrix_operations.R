# Exercise 1:
# Suppose X is a matrix in R. Which of the following is NOT equivalent to X?
# -> X %*% matrix(1,ncol(X) )

# Exercise 2:
# 3a + 4b - 5c + d = 10
# 2a + 2b + 2c - d = 5
# a - b + 5c - 5d = 7
# 5a + d = 4
# What is the solution for c?
col1 <- c(3, 2, 1, 5)
col2 <- c(4, 2, -1, 1)
col3 <- c(-5, 2, 5, 0)
col4 <- c(1, -1, -5, 0)

X <- cbind(col1, col2, col3, col4)
y <- matrix(c(10, 5, 7, 4), 4, 1)
solve(X, y)[3]

# Exercise 3: What is the value in the 3rd row and the 2nd column of the matrix 
# product of a and b?
a <- matrix(1:12, nrow=4)
b <- matrix(1:15, nrow=3)
(a %*% b)[3, 2]

# Exercise 4: Multiply the 3rd row of a with the 2nd column of b, using the 
# element-wise vector multiplication with *
# What is the sum of the elements in the resulting vector?
sum(a[3,] * b[,2])
