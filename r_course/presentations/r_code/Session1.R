params <-
list(isSlides = "no")

## ----include=FALSE------------------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides != "yes"){
  cat("# ???My Course name (session1)???

---
"    
  )
  
}



## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Set Up

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Set Up

---
"    
  )
  
}



## ----setwd_introtoR,eval=F----------------------------------------------------
## setwd("/PathToMyDownload/RU_Course_template/r_course")
## # e.g. setwd("~/Downloads/Intro_To_R_1Day/r_course")


## ---- results='asis',include=TRUE,echo=FALSE----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Another section header

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Another section header

---
"    
  )
  
}



## ----echo=T-------------------------------------------------------------------
Table <- read.table("data/readThisTable.csv",sep=",",header=T)



## ----echo=T, eval=F-----------------------------------------------------------
## #Intense computation
## myresult<-10^6 +1
## 


## ----echo=F, eval=T-----------------------------------------------------------
load("data/myresult.RData")


