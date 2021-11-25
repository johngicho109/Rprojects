setwd("C:/Users/John/Desktop/RBook")
?read.table
BirdsFlu <- read.table(file="BirdFluCases.txt",header = TRUE)
head(BirdsFlu)
names(BirdsFlu)
str(BirdsFlu)
Cases2003 <- BirdsFlu[BirdsFlu$Year==2003,]
head(Cases2003)
CountCases2003 <- sum(Cases2003[-1])
CountCases2003
cases2005 <- BirdsFlu[BirdsFlu$Year==2005,]
cases2005
countCases2005 <- sum(cases2005[-1])
countCases2005
cases20032005 <- BirdsFlu[BirdsFlu$Year==2003 | BirdsFlu$Year==2005, ]
cases20032005
countCases20032005 <- sum(cases20032005[-1])
countCases20032005
Isit <- read.table(file="Isit.txt",header=TRUE)
head(Isit)
names(Isit)
str(Isit)
IsitStation1 <- Isit[Isit$Station==1,]
head(IsitStation1)
countIsit1 <- IsitStation1$Discovery
sum(countIsit1)
summary(countIsit1)
IsitStation2 <- Isit[Isit$Station==2,]
head(IsitStation2)
countIsit2 <- IsitStation2$Discovery
countIsit2
summary(countIsit2)
sum(countIsit2)
IsitStation3 <- Isit[Isit$Station==3,]
head(IsitStation3)
countIsit3 <- IsitStation3$Discovery
countIsit3
summary(countIsit3)
sum(countIsit3)
