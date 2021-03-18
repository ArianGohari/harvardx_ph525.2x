# Exercise 1: Create matrix X -> What is the entry in row 25 column 3?
X = matrix(1:1000,100,10)
X[25, 3]

# Exercise 2: Using the function cbind(), create a 10 x 5 matrix with first
# column x=1:10. Then use 2*x, 3*x, 4*x and 5*x respectively in columns 2 
# through 5. What is the sum of the elements of the 7th row?
x <- 1:10
X <- cbind(x, 2*x, 3*x, 4*x, 5*x)
sum(X[7,])

# Exercise 3: Which of the following creates a matrix with multiples of 3 
# in the third column?
# -> matrix(1:60,20,3,byrow=TRUE)

# Exercise 4: A = 2  5  9
#                 9  2  5
# What are the dimensions of the matrix A? 
# -> 2 x 3

# Exercise 5: Last element of vector returned by seq(10,1,-2)
tail(seq(10, 1, -2), n=1)
