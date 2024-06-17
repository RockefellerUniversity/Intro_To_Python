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


## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Background of Python

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Background of Python
      
---
"    
  )
  
}



## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
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



## conda

## 
##  conda create -n intro_to_python
##  conda activate intro_to_python
##  conda install python
## 
## 

## conda install
## 
## 

## ----results='asis',include=TRUE,echo=FALSE-----------------------------------
if(params$isSlides == "yes"){
  cat("class: inverse, center, middle

# Data Types and Functions in Python

<html><div style='float:left'></div><hr color='#EB811B' size=1px width=720px></html> 

---
"    
  )
}else{
  cat("# Data Types and Functions in Python
      
---
"    
  )
  
}



## 1+1
## 2*5

## round(3.14159)

## help(round)

## round(3.14159, 3)

## round(ndigits=3, number=3.14159)

## greeting = 'Hello!'
## greeting

## number = 3.14159
## number

## number

## round(number)
## 

## greeting = 'Hello!'
## type(greeting )

## number = 3.14159
## type(number )

## newnumber = round(number)
## newnumber
## type(newnumber)

## string_number = str(number)
## string_number

## float_string_number = float(string_number)
## float_string_number
## 

## int_float_string_number = int(float_string_number)
## int_float_string_number
## 

## greeting = 'Hello!'
## int(greeting)

## 
## try:
##   float(greeting)
## except Exception as e:
##   print(e)
## 

## newgreeting = 'Hi' ' there'
## newgreeting
## newgreeting2 = 'Hi' + ' there'
## newgreeting2
## newgreeting3 = 'Hi'
## newgreeting3 += ' there'
## newgreeting3

## newgreeting4 = 'Hi' * 5
## newgreeting4

## 
## my_strs = ['a','b','c','d','e']
## my_strs
## 

## 
## my_ints= [1,2,3,4,5]
## my_ints
## 

## 
## my_floats = [1.1,2.2,3.3,4.4,5.5]
## my_floats
## 

## my_strs[2]

## my_strs[0]

## my_strs[-1]

## my_strs[2:4]

## my_strs[2:-1]

## my_strs[2:]

## my_strs[0] = 'z'

## my_lists = ["a",['b1','b2'], ['c1',['c2']]]
## my_lists

## my_lists[2][1][0]

## my_lists
## list1, list2, list3 = my_lists
## list1
## list2
## list3

## biglist = my_strs + my_ints
## biglist

## biglist = my_strs
## biglist += my_ints
## biglist

## biglist = my_strs * 5
## biglist

## my_strs.append('f')
## my_strs

## my_strs.append(1)
## my_strs

## my_strs.insert(3,'c')
## my_strs

## my_strs.remove('c')
## my_strs

## del(my_strs[3])
## my_strs

## my_strs.index('c')

## my_list = [1,4,9,4,11,12,6]
## my_list.sort()
## my_list
## my_list.sort(reverse=True)
## my_list
## my_list = ["b","c","a"]
## my_list.sort()
## my_list

## my_list = ['a','b','c','d','e']
## my_list[0] = 'z'
## my_list

## my_tuple = ('a','b','c','d','e')
## my_tuple[0] = 'z'

## my_tuple = ('a','b','c','d','e')
## try:
##   my_tuple[0] = 'z'
## except Exception as e:
##   print(e)
## 

## my_list = ['a','b','c','d','e']
## my_tuple_list = tuple(my_list)
## my_tuple_list
## type(my_tuple_list)

## my_list_tuple_list = list(my_tuple_list)
## my_list_tuple_list
## type(my_list_tuple_list)

## my_dict = {
##     'my_list': [1,2,3],
##     'my_tuple': (4,5,6),
##     'language': 'python',
##     'technique': 'scRNAseq'
## }
## my_dict

## my_dict.keys()

## 
## my_dict.values()

## 
## my_dict.items()

## 
## my_dict['my_list']

## 
## my_dict['language']
## 
## my_dict.get('language')

## 
## my_dict.setdefault('metadata', True)
## my_dict

## 
## 'metadata' in my_dict.keys()
## 
## 'metadata' in my_dict
## 

## 
## 'scRNAseq' in my_dict.values()
## 

## dict_1 = {'my_list': [1,2,3],
##   'my_tuple': (4,5,6),}
## 
## dict_2 = {'a': 1, 'b': 2}

## 
## dict_3 = {**dict_1, **dict_2}
## dict_3
## 

## 
## dict_3 = dict_1 | dict_2
## dict_3
## 

## 
## dict_1.update(dict_2)
## 
## dict_1

## myset = {"a", "b", "c"}
## myset
## myset = set(["a", "b", "c"])
## myset

## myset.add("d")
## myset

## myset.remove("d")
## myset

## 
## myset[0]
## 

## 
## try:
##   myset[0]
## except Exception as e:
##   print(e)
## 

## myset = set(["a", "b", "c","c","c"])
## myset

## myset1 = {1, 2, 3, 4}
## myset2 = {3, 4, 5, 6}
## myset1.union(myset2)

## myset1 = {1, 2, 3, 4}
## myset2 = {3, 4, 5, 6}
## myset1.difference(myset2)

## def myFirstFunction(num1, num2):
##   sumNum = num1 + num2
##   return sumNum
## 
## myResult = myFirstFunction(num1=2, num2=3)
## myResult

## 
## def myFirstFunction(num1, num2):
##   sumNum = num1 + num2
##   multipleNum = num1*num2
##   return sumNum multipleNum
## 

## ----eval=T, echo=F-----------------------------------------------------------

cat('File "<string>", line 1
    return sumNum multipleNum
IndentationError: unexpected indent')

# try:
#   def myFirstFunction(num1, num2):
#     sumNum = num1 + num2
#     multipleNum = num1*num2
#     return sumNum multipleNum
# except Exception as e:
#   print(e)



## 
## def myFirstFunction(num1, num2):
##   sumNum = num1 + num2
##   multipleNum = num1*num2
##   return [sumNum, multipleNum]
## 
## myResult = myFirstFunction(num1=2, num2=3)
## myResult

## 
## def myFirstFunction(num1, num2):
##   sumNum = num1 + num2
##   multipleNum = num1*num2
##   print("Before return")
##   return [sumNum, multipleNum]
##   print("After return")
## 
## myFirstFunction(num1=2, num2=3)
## 

## 
## def myFirstFunction(num1, num2):
##   sumNum = num1 + num2
##   multipleNum = num1*num2
## 
## myFirstFunction(num1=2, num2=3)
## 

## 
## def myFirstFunction(num1, num2):
##   sumNum = num1 + num2
##   multipleNum = num1*num2
##   return [sumNum, multipleNum]
## 
## myFirstFunction(num1=2, num2=3)
## 
## sumNum
## 

## 
## def myFirstFunction(num1, num2):
##   sumNum = num1 + num2
##   multipleNum = num1*num2
##   return [sumNum, multipleNum]
## 
## myFirstFunction(num1=2, num2=3)
## 
## try:
##   sumNum
## except Exception as e:
##   print(e)
## 

## num3 = 4
## 
## def myFirstFunction(num1, num2, num3):
##   num3 = num1+num2+num3
##   return num3
## 
## myFirstFunction(num1=2, num2=3, num3=num3)
## 
## num3
## 

## def myFirstFunction(num1=1,num2=3):
##   sumNum = num1+num2
##   return sumNum
## 
## myFirstFunction()
## 

## myFirstFunction(5,10)
