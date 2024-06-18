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



## ----eval=T, echo=F, warning=F, message=F-------------------------------------
library(IntroToPython)
library(reticulate)
py_install(c("matplotlib", "numpy", "scipy","seaborn"))


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

## x = range(8)
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
