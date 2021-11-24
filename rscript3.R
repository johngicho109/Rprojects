setwd("C:/Users/John/Desktop/RBook")
squid <- read.table(file="Squid.txt",header=TRUE)
head(squid)
tail(squid)
names(squid) #shows the column variable names 
str(squid) #shows the status of each column variable name
squid2 <- read.table(file="squidGSI.txt",header=TRUE,dec=",")
names(squid2)
head(squid2)
str(squid2)
M1 <- lm(GSI ~ factor(Location) + factor(Year), data=squid)
names(M1)
M1$coefficients
mean(squid$GSI)
boxplot(squid$GSI)
Sex <- squid$Sex
length(Sex)
unique(Sex)
Sel <- Sex==1
MaleSquids <- squid[Sel,]
head(MaleSquids)
FemaleSquids <- squid[squid$Sex==2,]
head(FemaleSquids)
unique(squid$Location)
MaleLoc1 <- squid[squid$Sex==1 & squid$Location==1,]
head(MaleLoc1)
SquidLoc123 <- squid[squid$Location >= 1 & squid$Location < 4,]
head(SquidLoc123)
MaleLoc12 <- squid[squid$Sex == 1 & squid$Location==1 | squid$Location==2,]
head(MaleLoc12)
Ord1 <- order(squid$Month)
length(Ord1)
OrderedByMonth <- squid[Ord1,]
OrderedByMonth
tail(OrderedByMonth)
GSIOrderedByMonth <- squid$GSI[Ord1]
length(GSIOrderedByMonth)
is.vector(GSIOrderedByMonth)
Sq1 <- read.table(file="squid1.txt",header=TRUE)
head(Sq1)
Sq2 <- read.table(file="squid2.txt",header=TRUE)
head(Sq2)
SquidMerged <- merge(Sq1,Sq2,by="Sample",all=TRUE)
head(SquidMerged)
SquidMales <- squid[squid$Sex==1,]
unique(SquidMales$Sex)
write.table(SquidMales,file="MaleSquids.txt",sep=" ",quote = FALSE,append = FALSE,na="NA")
str(squid)
squid$fLocation <- factor(squid$Location,levels = c(2,3,1,4))
squid$fSex <- factor(squid$Sex,levels = c(1,2),labels = c("M","F"))
str(squid)
names(squid)
unique(squid$fSex)
boxplot(squid$GSI~squid$fSex)
M2 <- lm(squid$GSI ~ squid$fSex+squid$fLocation)
names(M2)
M2$coefficients
summary(M2)
boxplot(squid$GSI~squid$fLocation)
