Wingcrd <- c(59,55,53.5,55,52.5,57.5,53,55)
Tarsus <- c(22.3,19.7,20.8,20.3,20.8,21.5,20.6,21.5)
Head <- c(31.2,30.4,30.6,30.3,30.3,30.8,32.5,NA)
Wt <- c(9.5,13.8,14.8,15.2,15.5,15.6,15.6,15.7)
wingcrsSQRT <- sqrt(Wingcrd)
wingcrsSQRT
Wingcrd[1] #accessing the first value
smwingcrd <- sum(Wingcrd)
smwingcrd
avgwingcrd <- smwingcrd/length(Wingcrd)
avgwingcrd
Wingcrd[1:5] #accessing the first five values
Wingcrd[-2] #accessing all the values ommiting the second value
sum(Head)
sum(Head,na.rm=TRUE)
BirdData <- c(Wingcrd,Tarsus,Head,Wt)
BirdData
length((BirdData))
Id <- rep(c(1,2,3,4),each=8)
Id
a = seq(from=1,to=4,by=1)
a
Id2 <- rep(a,each=8)
Id2
VarNames <- c("Wingcrd","Tarsus","Head","Wt")
Id3 <- rep(VarNames,each=8)
Id3
Z <- cbind(Wingcrd,Tarsus,Head,Wt)
Z
Z[,1]
Z[1:7,1:2]
Z[2,]
Z[,c(-3,-1)]
n <- dim(Z) #dimention of z
n
nrow <- dim(Z)[1]
nrow
ncol <- dim(Z)[2]
ncol
Z2 <- rbind(Wingcrd,Tarsus,Head,Wt)
Z2
dim(Z2)
W <- vector(length = 8)
W
W[1] <- 59
W
DMat <- matrix(nrow = 8,ncol = 4)
DMat
DMat[,1] <- Wingcrd
DMat
DMat[,2] <- Tarsus
DMat[,3] <- Head
DMat[,4] <- Wt
DMat
colnames(DMat) <- c("Wingcrd","Tarsus","Head","Wt")
DMat
DMat2 <- as.matrix(cbind(Wingcrd,Tarsus,Head,Wt))
DMat2
#t(A) - getting the transpose of a matrix
#A%*%B - matrix multiplication
#solve(A) - find inverse of a matrix A
Dfrm <- data.frame(WC=Wingcrd,TS=Tarsus,HD=Head,W=Wt,WSQT=sqrt(Wt))
Dfrm
rm(Wt)
Wt
Dfrm$W
x1 <- c(1,2,3)
x2 <- c("a","b","c","d")
x3 <- matrix(nrow = 2,ncol=2)
x3[,1] <- c(1,2)
x3[,2] <- c(3,4)
x4 <- 3
Y <- list(x1=x1,x2=x2,x3=x3,x4=x4)
Y
Y$x1
Y$x3
M <- lm(WC~W,data=Dfrm)
M
names(M)
M$coefficients
AllData = list(BirdData=BirdData,Id = Id3,Z=Z,VarNames=VarNames)
AllData
setwd("C:/Users/John/Desktop/RBook")
squid <- read.table(file = "squid.txt",header = TRUE)
head(squid)
tail(squid)



