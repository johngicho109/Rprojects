setwd("C:/Users/John/Desktop/RBook")
die <- 1:6
is.vector(die)
five <- 5
is.vector(five)
length(die)
length(five)
int <- c(1L,2L)
sum(int)
text <- c("Ace","Hearts")
sum(text)
text
int[1]
text[1]
typeof(int)
typeof(text)
typeof(die)
dieD <- c(1,2,3,4,5,6)
typeof(dieD)
dbls <- c(0,0.2,0.4,0.6,0.8,1)
typeof(dbls)
sqrt(2)^2 -2
sqrt(2L)^2L -2L
2.2L
Logic <- c(TRUE,TRUE,FALSE,FALSE)
typeof(Logic)
typeof(F)
Logic2 <- c(T,F,F,T)
typeof(Logic2)
comp <- c(1+1i,1+2i,1+3i,1+4i)
typeof(comp)
?raw
raw(1)
raw(2)
raw(3)
typeof(raw(2))
royal.flush <- c("Ace","King","Queen","Jack","Ten")
royal.flush
names(die) <- c("One","Two","Three","Four","Five","Six")
names(die)
die
attributes(die)
names(die) <- NULL
die
dim(die) <- c(2,3)
die
dim(die) <- NULL
die
matrix(die,nrow = 2)
die
dim(die)
names(die)
matrix(die,ncol = 2)
matrix(die,nrow = 2,byrow = TRUE)
ar <- array(c(11:14,21:24,31:34),dim = c(2,2,3))
ar
hand1 <- matrix(nrow = 5,ncol = 2)
hand1
hand1[,1] <- royal.flush
hand1
hand1[,2] <- c("Spades","Spades","Spades","Spades","Spades")
hand1
names(hand1) <- c("Face","Suit")
hand1
names(hand1) <- NULL
hand1
die
typeof(die)
class(die)
dim(die) <- c(2,3)
die
typeof(die)
class(die)
now <- Sys.time() #12.00AM january 1st 1970(time passed since then) - POSIXct and POSIXt
typeof(now)
class(now)
class(now) <- NULL #or unclass(now)
now
mil <- 1000000
mil
class(mil) <- c("POSIXct","POSIXt")
mil
gender <- factor(c("Male","Female","Female","Male"))
gender
typeof(gender)
class(gender)
unclass(gender)
gender
class(gender)
class(gender) <- NULL
class(gender)
gender
typeof(gender)
as.character(gender)
card <- c("Ace","Hearts",1)
typeof(card)
typeof(card[3])
list1 <- list(100:130,"R",TRUE)
list1
typeof(list1)
class(list1)
typeof(list1[1])
a <- list1[1]
typeof(a)
typeof(list1[2])
df <- data.frame(face=c("Ace","Two","Six"),suit = c("Clubs","Clubs","Clubs"),value=c(1,2,3),stringsAsFactors = FALSE)
df
typeof(df)
class(df)
str(df)
deck = data.frame(
  face = c("king", "queen", "jack", "ten", "nine", "eight", "seven", "six",
           "five", "four", "three", "two", "ace", "king", "queen", "jack", "ten",
           "nine", "eight", "seven", "six", "five", "four", "three", "two", "ace",
           "king", "queen", "jack", "ten", "nine", "eight", "seven", "six", "five",
           "four", "three", "two", "ace", "king", "queen", "jack", "ten", "nine",
           "eight", "seven", "six", "five", "four", "three", "two", "ace"),
  suit = c("spades", "spades", "spades", "spades", "spades", "spades",
           "spades", "spades", "spades", "spades", "spades", "spades", "spades",
           "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs",
           "clubs", "clubs", "clubs", "clubs", "clubs", "diamonds", "diamonds",
           "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "diamonds",
           "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "hearts",
           "hearts", "hearts", "hearts", "hearts", "hearts", "hearts", "hearts",
           "hearts", "hearts", "hearts", "hearts", "hearts"),
  value = c(13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8,
            7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11,
            10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
  
)
head(deck)
tail(deck)
names(deck)
str(deck)

deck2 <- read.table("deck.txt",header=TRUE)
head(deck2)
tail(deck2)
names(deck2)
str(deck2)
names(deck2) <- as.character(c("face","suit","value"))
str(deck2)

deck3 <- read.csv("C:/Users/John/Desktop/RBook/deck.csv")
str(deck3)
write.csv(deck,"cards.csv",row.names = FALSE)
