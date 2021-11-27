setwd("C:/Users/John/Desktop/RBook")
BFCases <- read.table("BirdFluCases.txt",header=TRUE)
head(BFCases)
tail(BFCases)
names(BFCases)
str(BFCases)
Cases <- rowSums(BFCases[,2:16])
names(Cases) <- BFCases[,1]
Cases
par(mfrow=c(2,2),mar=c(3,3,2,1))
pie(Cases,main="Ordinary Pie Chart")
pie(Cases,col = gray(seq(0.4,1.0,length=6)),clockwise = TRUE,main="Gray Colors")
pie(Cases,col=rainbow(6),clockwise = TRUE,main = "Rainbows Colors")
library(plotrix)
pie3D(Cases,labels = names(Cases),explode = 0.1,main="3D Pie",labelcex = 0.6)

?par

op <- par(mfrow=c(2,2),mar=c(3,3,2,1))
pie(Cases,main="Ordinary Pie Chart")
pie(Cases,col = gray(seq(0.4,1.0,length=6)),clockwise = TRUE,main="Gray Colors")
pie(Cases,col=rainbow(6),clockwise = TRUE,main = "Rainbows Colors")
library(plotrix)
pie3D(Cases,labels = names(Cases),explode = 0.1,main="3D Pie",labelcex = 0.6)
par(op)

BFDeaths <- read.table("BirdFluDeaths.txt",header = TRUE)
head(BFDeaths)
names(BFDeaths)
str(BFDeaths)
Deaths <- rowSums(BFDeaths[,2:16])
names(Deaths) <- BFDeaths[,1]
Deaths

op <- par(mfrow=c(2,2),mar=c(3,3,2,1))
barplot(Cases,main = "BirdFlu cases")
Counts <- cbind(Cases, Deaths)
Counts
barplot(Counts)
barplot(t(Counts),col = gray(0.5,1))
barplot(t(Counts),beside = TRUE)
t(Counts)
Benthic <- read.table("RIKZ2.txt",header = TRUE)
head(Benthic)
tail(Benthic)
names(Benthic)
str(Benthic)
unique(Benthic$Beach)
Bent.M <- tapply(Benthic$Richness, Benthic$Beach, mean)
Bent.M
Bent.SD <- tapply(Benthic$Richness, Benthic$Beach,sd)
Bent.SD
MSD <- cbind(Bent.M,Bent.SD)
MSD
barplot(Bent.M,xlab = "Beach",ylab = "Richness",main = "Barplot",  col = rainbow(9))
bp <- barplot(Bent.M, xlab = "Beach", ylim = c(0,20),ylab = "Richness", col = rainbow(9))
arrows(bp,Bent.M,bp, Bent.M + Bent.SD, lwd = 1.5, angle = 90, length = 0.1)
box()
