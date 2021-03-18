library(UsingR)
x = father.son$fheight
y = father.son$sheight
n = length(y)
N = 50
set.seed(1)
index = sample(n,N)
sampledat = father.son[index,]
x = sampledat$fheight
y = sampledat$sheight
betahat = lm(y~x)$coef

# Exercise 1: Sum of the squared residuals
fit = lm(y ~ x)
fitted_values <- fit$fitted.values
SSR <- sum((y - fitted_values)^2)
SSR

# Exercise 2: Calculate (XT * X)^-1
X = cbind(rep(1,N), x)
solve(t(X) %*% X)

# Exercise 3: Calculate standard error for the slope
sigma2 = SSR / 48
betahat_var <- diag(solve(t(X) %*% X)) * sigma2
sqrt(betahat_var)[2]
