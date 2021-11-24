Farm <- c("MO","MO","MO","MO","LN","SE","QM")
Month <- c(11,07,07,NA,09,09,11)
Year <- c(00,00,01,NA,03,03,02)
LengthClass <- c(1,1,1,1,1,1,1)
LengthCT <- c(75,85,91.5,95,NA,105.5,106)
Sex <- c(1,2,2,2,1,2,2)
ECerbi <- c(0,0,0,NA,0,0,0)
Tb <- c(0,0,1,NA,0,0,0)
Tb2 <- vector(length = 7)
Tb2
Tb2[1] <- 0
Tb2[2] <- 0
Tb2[3] <- 1
Tb2[4] <- NA
Tb2[5] <- 0
Tb2[6] <- 0
Tb2[7] <- 0
Tb2
D <- matrix(nrow = 3,ncol = 3)
D[,1] <- c(1,4,2)
D[,2] <- c(2,2,3)
D[,3] <- c(3,1,0)
D
E <- matrix(nrow = 3,ncol = 3)
E[1,] <- c(1,2,3)
E[2,] <- c(4,2,1)
E[3,] <- c(2,3,0)
E
TranspD <- t(D)
TranspD
InvD <- solve(D)
InvD
multDInvD <- D%*%InvD
multDInvD
DfrmDeer <- data.frame(FM = Farm, YR = Year, SX = Sex, LC = LengthClass, LCT = LengthCT,SQRTLCT = sqrt(LengthCT), EC = ECerbi,TB=Tb)
DfrmDeer
LstDeer <- list(FM = Farm, YR = Year, SX = Sex, LC = LengthClass, LCT = LengthCT,SQRTLCT = sqrt(LengthCT), EC = ECerbi,TB=Tb)
LstDeer



