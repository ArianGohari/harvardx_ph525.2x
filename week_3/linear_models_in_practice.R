nx <- 5
ny <- 7
X = cbind(rep(1,nx + ny), rep(c(0,1), c(nx, ny)))

# Exercise 1: What is the element in the first row and first column of
# X^T * X
(t(X) %*% X)[1, 1]

# Exercise 2: What are all the other values of X^T * X
View((t(X) %*% X)) # -> 7
