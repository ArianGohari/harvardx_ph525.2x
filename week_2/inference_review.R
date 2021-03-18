g = 9.8 ## meters per second
h0 = 56.67
v0 = 0
n = 25

tt = seq(0,3.4,len=n) ##time in secs, t is a base function
y = h0 + v0 *tt  - 0.5* g*tt^2 + rnorm(n,sd=1)
X = cbind(1,tt,tt^2)
A = solve(crossprod(X))%*%t(X)

# Exercise 1: Given how we have defined A, which of the following is the LSE 
# of g, the acceleration due to gravity?
# -> -2 * (A %*% y) [3]

# Exercise 2: Monte Carlo simulation -> estimate A 100,000 times, calculate g
# What is the standard deviation of this estimate?
set.seed(1)
estimate_g <- function() {
  tt <- seq(0,3.4,len=n) ##time in secs, t is a base function
  y <- h0 + v0 *tt  - 0.5* g*tt^2 + rnorm(n,sd=1)
  X <- cbind(1,tt,tt^2)
  A <- solve(crossprod(X))%*%t(X)
  g <- -2 * (A %*% y) [3]
  return(g)
}

gs <- replicate(100000, estimate_g())
sd(gs)
