setwd("C:/Users/John/Desktop/RBook")
Veg <- read.table("Vegetation2.txt",header=TRUE)
head(Veg)
tail(Veg)
names(Veg)
str(Veg)
NAPerVariable <- function(X1){
  D1 <- is.na(X1)
  colSums(D1)
}
NAPerVariable(Veg[,5:24])
Parasite <- read.table("CodParasite.txt",header=TRUE)
head(Parasite)
tail(Parasite)
names(Parasite)
str(Parasite)
unique(Parasite$Sex)
unique(Parasite$Area)
NAPerVariable(Parasite)

ZeroPerVar <- function(X1){
  D1 <- (X1 == 0)
  colSums(D1,na.rm = TRUE)
}
ZeroPerVar(Parasite)

VarInfo <- function(X1,choice1="Zeros"){
  if(choice1=="Zeros"){D1 <- (X1==0)}
  if(choice1=="NAs"){D1 <- is.na(X1)}
  if(choice1!="Zeros" & choice1!="NAs"){
    print("You made a typo")
  }else{
    colSums(D1,na.rm = TRUE)
  }
}
VarInfo(Parasite,"Zeros")
VarInfo(Parasite,"NAs")
VarInfo(Veg)
VarInfo(Parasite,"hdktdkytdkm")


Benthic <- read.table("RIKZ.txt",header = TRUE)
head(Benthic)
tail(Benthic)
names(Benthic)
str(Benthic)
species <- Benthic[,2:76]
head(species)
n <- dim(species)
n
sum(species[1,],na.rm = TRUE)
sum(species[2,],na.rm = TRUE)

TA <- vector(length = n[1])
for(i in 1:n[1]){
  TA[i] = sum(species[i,],na.rm = TRUE)
}
TA
TA2 <- rowSums(species,na.rm = TRUE)
TA2

sum(species[1,]>0,na.rm = TRUE)
sum(species[2,]>0,na.rm = TRUE)
Richness <- vector(length = n[1])
for(i in 1:n[1]){
  Richness[i] = sum(species[i,]>0,na.rm = TRUE)
}
Richness
Richness2 <- rowSums(species>0,na.rm = TRUE)
Richness2

RS <- rowSums(species,na.rm=TRUE)
RS
Prop <- species/RS
Prop
H <- -rowSums(Prop*log10(Prop),na.rm = TRUE)
H

library(vegan)
H1 <- diversity(species)
H1

Choice <- "shannon"
if(Choice == "Richness"){
  index <- rowSums(species > 0,na.rm = TRUE)
}
if(Choice == "Total Abundance"){
  index <- rowSums(species,na.rm = TRUE)
}
if(Choice == "Shannon"){
  RS <- rowSums(species,na.rm = TRUE)
  prop <- species/RS
  index <- -rowSums(prop*log10(prop),na.rm = TRUE)
}

Index.func <- function(spec,Choice1){
  if(Choice1 == "Richness"){
    index <- rowSums(species > 0,na.rm = TRUE)
  }
  if(Choice1 == "Total Abundance"){
    index <- rowSums(species,na.rm = TRUE)
  }
  if(Choice1 == "Shannon"){
    RS <- rowSums(species,na.rm = TRUE)
    prop <- species/RS
    index <- -rowSums(prop*log10(prop),na.rm = TRUE)
  }else{
    print("Choice unvailable, please check your choice")
    index <- NA
  }
  list(index = index, MyChoice = Choice1)
}
Index.func(species,"Richness")
Index.func(species,"Total Abundance")
Index.func(species,"shannon")
Index.func(species,"hgcghckgfckm")


