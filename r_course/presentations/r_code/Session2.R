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

# Control Statements

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Control Statements
      
---
"    
  )
  
}



## 
## x = True
## if x:
##   print("x is true")
## 

## 
## x = False
## if x:
##   print("x is true")
## 

## 
## x = 10
## y = 4
## if x > y:
##   print("The value of x is",x,"which is greater than", y)
## 

## y = 20
## if x > y:
##   print("The value of x is",x,"which is greater than", y)
## 

## 
## x = 3
## if x < 5:
##   print(x, "is less than to 5")
## else:
##   print(x, "is greater than or equal to 5")
## 

## 
## x = 10
## if x < 5:
##   print(x, "is less than to 5")
## else:
##   print(x, "is greater than or equal to 5")
## 

## 
## x = 5
## if x < 5:
##   print(x, "is less than to 5")
## elif x > 5:
##   print(x, "is greater than 5")
## else:
##   print(x, "is 5")
## 

## 
## x = 1
## while x < 3:
##   print("x is",x)
##   x = x+1
## 

## 
## x = ['Alpha','Bravo','Charlie']
## for i in x:
##   print(i)
## 

## for i in range(3):
##   print("i is", i)
## 

## 
## geneName = ["Ikzf1","Myc","Igll1"]
## expression = [10.4, 4.3, 6.5]
## iterations = len(geneName)
## 
## for i in range(iterations):
##   print(geneName[i]," has an TPM of ",expression[i])
## 

## 
## for i in range(8):
##   if i > 5:
##     print("Number",i,"is greater than 5")
##   elif i == 5:
##     print("Number",i,"is  5")
##   else:
##     print("Number",i,"is less than 5")
## 

## x = range(8)
## 
## for i in range(8):
##   if i > 5:
##     print("Number",i,"is greater than 5")
##   elif i == 5:
##     print("Number",i,"is  5")
##     break
##   else:
##     print("Number",i,"is less than 5")
## 

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
## sex, height, weight = np.genfromtxt('data/height-weight.csv', delimiter = ",", skip_header=True, unpack = True, dtype=None)
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
