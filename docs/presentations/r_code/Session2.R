params <-
list(isSlides = "no")

## ----include=FALSE------------------------------------------------------------
suppressPackageStartupMessages(require(knitr))
knitr::opts_chunk$set(echo = TRUE, tidy = T)


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides != "yes"){
  cat("# Introduction to Python

---
"    
  )
  
}



## ----eval=T, echo=F, warning=F, message=F, hide=T-----------------------------
library(IntroToPython)
library(reticulate)
py_install(c("matplotlib", "numpy", "scipy","seaborn"), pip_options = "--quiet")


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Reading and Writing Files

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Reading and Writing Files
      
---
"    
  )
  
}



## ----echo=F-------------------------------------------------------------------
minRep <- rbind(cbind(matrix(rnorm(12,4),ncol=3,byrow = T),matrix(c(rnorm(9,4),rnorm(3,8)),ncol=3,byrow = T)),
cbind(matrix(rnorm(12,10),ncol=3,byrow = T),matrix(c(rnorm(6,3),rnorm(6,10)),ncol=3,byrow = T)))
colnames(minRep) <- paste0(c("Sample_"),
                      1:5,".",sort(rep(c("hi","low"),3)))
minRepdf <- data.frame(Gene_Name=paste("Gene",letters[1:8],sep="_"),minRep)
#minRepdf$Gene_Name <- paste("Gene",letters[1:8],sep="_")
#write.table(minRepdf,file="readThisTable.csv",sep=",",row.names=F)
kable(minRepdf[,1:4], format='html')



## import os
## 

## 
## os.getcwd()
## 

## 
## os.chdir("/Users/mattpaul/Downloads/Intro_To_Python-master/r_course/")
## 

## 
## os.listdir()
## 

## 
## os.listdir("data")
## 

## import numpy as np
## my_table = np.genfromtxt("data/ToRead.csv", delimiter=",")
## 
## type(my_table)

## my_table

## 
## dtype = ['U10' , 'f', 'f' ]
## 
## my_table2 = np.genfromtxt('data/height-weight.csv', delimiter = ",", skip_header=True, dtype=dtype)
## 

## my_table2
## 

## 
## sex, height, weight = np.genfromtxt('data/height-weight.csv', unpack = True, delimiter = ",", skip_header=True, dtype=dtype)
## 
## sex
## 

## 
## sex, height, weight = np.genfromtxt('data/height-weight.csv', delimiter = ",", skip_header=True, unpack = True, dtype=None, encoding=None)
## 
## sex

## 
## new_array = np.array([sex, height, weight])

## to_subset = new_array[0,:]=="Female"
## to_subset

## 
## subset_array = new_array[:,to_subset]
## subset_array
## 

## 
## np.savetxt("height-weight_female.csv", subset_array, delimiter=',', fmt='%s')
## 

## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Running Scripts

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Running Scripts
      
---
"    
  )
  
}



## 
## import numpy as np
## 
## # Read in dataset
## sex, height, weight = np.genfromtxt('data/height-weight.csv', delimiter = ",", skip_header=True, unpack = True, encoding=None, dtype=None)
## new_array = np.array([sex, height, weight])
## # Subset array
## to_subset = new_array[0,:]=="Female"
## subset_array = new_array[:,to_subset]
## # Print out number of Females in data set and export subset
## print(str(sum(to_subset)) + " are female")
## np.savetxt("data/height-weight_female.csv", subset_array, delimiter=',', fmt='%s')
## 

## 
## import sys
## import numpy as np
## 
## print("My Script Name:", sys.argv[0])
## print("My Argument:", sys.argv[1])
## arg1 = sys.argv[1]
## 
## # Read in dataset
## sex, height, weight = np.genfromtxt('data/height-weight.csv', delimiter = ",", skip_header=True, unpack = True, encoding=None, dtype=None)
## new_array = np.array([sex, height, weight])
## # Subset array
## to_subset = new_array[0,:]==arg1
## subset_array = new_array[:,to_subset]
## # Print out number of Females in data set and export subset
## print(str(sum(to_subset)) + " are " + arg1)
## np.savetxt("data/height-weight_"+arg1+".csv", subset_array, delimiter=',', fmt='%s')
## 
