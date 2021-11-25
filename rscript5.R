setwd("C:/Users/John/Desktop/RBook")
Veg <- read.table("Vegetation2.txt",header=TRUE)
head(Veg)
tail(Veg)
names(Veg)
str(Veg)
plot(Veg$BARESOIL,Veg$R,xlab = "Exposed Soil",ylab = "Soil Richness",
      xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
      ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),main = "Scatter Plot",
      pch=16)
plot(R~BARESOIL,Veg)
Veg$Transect
plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=Veg$Transect)

Veg$fTransect <- factor(Veg$Transect)
names(Veg)

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=Veg$fTransect)

Veg$Time2 <- Veg$Time
names(Veg)
Veg$Time2[Veg$Time <= 1974] <- 1
Veg$Time2[Veg$Time > 1974] <- 16
Veg$Time2

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=Veg$Time2)

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=Veg$Time)

warnings()

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),col=2)

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=Veg$Time2,col=3)

x <- 1:8
plot(x,col=x)
?par

Veg$Time3 <- Veg$Time
Veg$Time3[Veg$Time <= 1974] <- 15
Veg$Time3[Veg$Time > 1974] <- 16

Veg$Col3 <- Veg$Time
Veg$Col3[Veg$Time <= 1974] <- 1
Veg$Col3[Veg$Time > 1974] <- 2

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=Veg$Time3,col=Veg$Col3)

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=Veg$Time2,col=3,cex=1.5)

Veg$Cex3 <- Veg$Time
Veg$Cex3[Veg$Time == 2002] <- 2
Veg$Cex3[Veg$Time != 2002] <- 1

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=16,col=3,cex=Veg$Cex3)

plot(x=Veg$BARESOIL,y=Veg$R,main = "Scatter Plot",
     xlab = "Exposed Soil",ylab = "Species Richness",
     xlim = c(min(Veg$BARESOIL,na.rm = TRUE),max(Veg$BARESOIL,na.rm = TRUE)),
     ylim = c(min(Veg$R,na.rm = TRUE),max(Veg$R,na.rm = TRUE)),pch=Veg$Time2)

M.Loess <- loess(R ~ BARESOIL, data = Veg)
Fit <- fitted(M.Loess)
lines(Veg$BARESOIL, Fit)
M.Loess
lines(Veg$BARESOIL, Fit)


plot(x = Veg$BARESOIL, y = Veg$R,
     xlab = "Exposed soil",
     ylab = "Species richness", main = "Scatter plot",
     xlim = c(0, 45), ylim = c(4, 19))
M.Loess2 <- loess(R ~ BARESOIL, data = Veg)
Fit <- fitted(M.Loess2)
Ord1 <- order(Veg$BARESOIL)
lines(Veg$BARESOIL[Ord1], Fit[Ord1],
      lwd = 3, lty = 2)
