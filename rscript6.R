setwd("C:/Users/John/Desktop/RBook")
Owls <- read.table("Owls.txt",header=TRUE)
head(Owls)
tail(Owls)
names(Owls)
str(Owls)
unique(Owls$Nest)
Owls.ATV <- Owls[Owls$Nest=="AutavauxTV",]
head(Owls.ATV)
tail(Owls.ATV)
plot(x=Owls.ATV$ArrivalTime,y=Owls.ATV$NegPerChick,xlab = "ArrivalTime",
     ylab = "Negotiation behaviour",main = "AutavauxTV")
Owls.Bot <- Owls[Owls$Nest=="Bochet",]
head(Owls.Bot)
tail(Owls.Bot)
plot(x=Owls.Bot$ArrivalTime,y=Owls.Bot$NegPerChick,xlab = "Arrival Time",
     ylab = "Negotiation Behaviour",main = "Bochet")
Nest.i <- "Champmartin"
Owls.i <- Owls[Owls$Nest==Nest.i,]
head(Owls.i)
plot(x=Owls.i$ArrivalTime,y=Owls.i$NegPerChick,xlab = "Arival Time",
     ylab = "Negotiation Behaviour",main = Nest.i)

Nest.j = "GDLV"
Owls.j = Owls[Owls$Nest==Nest.j,]
Name1 <- paste(Nest.j, ".jpg", sep="") 
jpeg(file = Name1)
plot(x = Owls.j$ArrivalTime, y = Owls.j$NegPerChick,
     xlab = "Arrival Time", main = Nest.j,
     ylab = "Negotiation behaviour")
dev.off()

AllNests <- unique(Owls$Nest)
for(i in 1:27){
  Nest.i <- AllNests[i]
  Owls.i <- Owls[Owls$Nest==Nest.i,]
  MyFiles <- paste(Nest.i,".jpeg",sep = "")
  jpeg(file=MyFiles)
  plot(x = Owls.i$ArrivalTime, y = Owls.i$NegPerChick,
       xlab = "Arrival Time",
       ylab = "Negotiation behaviour", main = Nest.i)
  dev.off()
}
Veg <- read.table("Vegetation2.txt",header=TRUE)
head(Veg)
tail(Veg)
names(Veg)
str(Veg)












