X <- matrix(c(1,1,1,1,0,0,1,1),nrow=4)
rownames(X) <- c("a","a","b","b")

beta <- c(5, 2)

# Exercise 1: What is the fitted value for the A samples?
fitted <- X %*% beta
fitted[1:2,]

# Exercise 2: What is the fitted value for the B samples?
fitted[3:4,]