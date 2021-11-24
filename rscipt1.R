#R is a computer language that allows user to programe algorithms and use tools that have been programmed by others
#R website:  www.r-project.org.
#CRAN - Comprehensive R archive network
#?<file/function name> or help(<file/function name>) - get help files for a package
?boxplot
help("boxplot")
boxplot(count ~ spray, data = InsectSprays, col="blue")
#count ~ spray ensures one boxplot per level of insect
#R package is a collection of previously programmed function often including function of specific task
#library(<package name>) - loading a package
library(MASS)
?glmmPQL
#install R package denotes adding the package to the base version of R while loading means making all the functions in the package accessible and ready for use
library(gstat)
?bubble
#q() - quiting R and being prompted to save the current work space
#q(save == "no") - quiting R without saving the work space
#setwd(filr = " c:\\availabledirectory\\") - setting working directory
#setwd(file = "c:/availabledirectory/") - setting working directory
rm(list = ls(all=TRUE)) #removing available varaiables on the workspace
citation()
citation("MASS")
citation("lattice")
