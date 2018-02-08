#######Useful functions###############


#Copy Clipboard from Excel to R
read.excel <- function(header=FALSE,sep=";",dec=",") {
  read.table("clipboard",sep=sep,header=header, dec=dec)
   
}

#Paste Clipboard from R to Excel
write.excel <- function(x,row.names=FALSE,col.names=TRUE,seperator="\t",...) {
  write.table(x,"clipboard",sep=seperator,row.names=row.names,col.names=col.names,...)
}



#Newtons method is an iterative root-finding algorithm where we start with an initial guess x0
#and each successive guess is refined using the iterative process:
#  
#  xn+1=xn-f(xn)/f'(xn)
#
#The algorithm will run until either the number of steps N has been reached, or 
#the error tolerance |xn+1???xn|<??, where ?? is defined as the tolerance parameter tol.
#
newton <- function(f, tol=1E-12,x0=1,N=20, stepSize = 0.001) {
  h <- stepSize
  i <- 1; x1 <- x0
  p <- numeric(N)
  while (i<=N) {
    df.dx <- (f(x0+h)-f(x0))/h
    x1 <- (x0 - (f(x0)/df.dx))
    p[i] <- x1
    i <- i + 1
    if (abs(x1-x0) < tol) break
    x0 <- x1
  }
  return(p[1:(i-1)])
}



#get packages: install them if necessary and load them
getPackages <- function(x){
  for( i in x ){
    i = gsub(".*/", "", i)
    #  require returns TRUE invisibly if it was able to load package
    if( ! require( i , character.only = TRUE )){
      #  If package was not able to be loaded then re-install
      (install.packages( i , dependencies = TRUE))
      
      #  If package was not able to be installed then re-install with github   
      if( ! require( i , character.only = TRUE )){
        (devtools::install_github( i , dependencies = TRUE ))
        print("Github Installation!")
      }
    }
      
      #  Load package
    suppressPackageStartupMessages(require( i , character.only = TRUE ))
  }
}

###Update R, RStudio, Github,...
#suppressPackageStartupMessages(library(installr))
#updateR()
#check.for.updates.R()

#do not save after q()
# q <- function (save = "n", status = 0, runLast = TRUE)
#   .Internal(quit(save, status, runLast))


local({r <- getOption("repos")
r["CRAN"] <- "https://cran.wu.ac.at/"
options(repos=r)})

options(stringsAsFactors=FALSE)

options(max.print=100)

options(scipen=10)

options(editor="vim")

# options(show.signif.stars=FALSE)

options(menu.graphics=FALSE)

options(prompt="> ")
options(continue="... ")

options(width = 80)


utils::rc.settings(ipck=TRUE)

.env <- new.env()
attach(.env)

.env$unrowname <- function(x) {
  rownames(x) <- NULL
  x
}

.env$unfactor <- function(df){
  id <- sapply(df, is.factor)
  df[id] <- lapply(df[id], as.character)
  df
}

message("Successfully loaded .Rprofile")


