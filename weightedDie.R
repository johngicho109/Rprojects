#command - Codes that one types as it commands your computer to do something for you
#command line - The line that you type the code into
100:300
seq(100:200)
a <- 122
b <- a+2
c <- b*3
d <- c-6
e <- d/3
e
#R object - name that one can use to call stored data
die <- 1:6
die
ls() #checks on allready used variable names
die * die #Elementwise multiplication
die %*% die #inner matrix multiplication(R*C)
die %o% die #Outer matrix multiplication
MatA <- matrix(nrow = 2,ncol = 2)
MatA
MatA[,1] <- c(1,2)
MatA[,2] <- c(3,4)
MatA
t(MatA)
det(MatA)
solve(MatA)
MatA %*% solve(MatA)
sample(1:6,2)
args(round)
round(3.142)
round(3.142,1)
round(3.142,2)
round(3.142,4)
sample(die,2) #Sampling without replacement
sample(die,2,replace=TRUE) #sampling with replacement
args(sample)
dice <- sample(die,2,replace = TRUE)
sum(dice)
roll <- function(bones=1:6){
  dice <- sample(bones,2,replace = TRUE)
  sum(dice)
}
roll(bones = 1:10)
roll()
#install.packages("package name")
library(ggplot2)
qplot
x = c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
y = x^2
z <- x^3
w <- x^4
args(qplot)
qplot(x,y,main = "Squered function")
qplot(x,z,main = "Cubic function")
qplot(x,w,main = "4th order")
x1 <- c(1,2,2,2,3,3)
qplot(x1,binwidth=1,ylab = "Count")
x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2,binwidth=1,ylab = "Count")
x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3,binwidth=1,ylab = "Count")
replicate(10,roll())
rolls <- replicate(10000,roll())
qplot(rolls,binwidth=1)



