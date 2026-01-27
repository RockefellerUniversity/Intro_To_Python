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


## import matplotlib.pyplot as plt

## fig, ax = plt.subplots()

## fig, ax = plt.subplots()

## fig, ax = plt.subplots()

## fig, ax = plt.subplots(figsize=(4, 3))
## plt.show()

## fig, ax = plt.subplots(figsize=(3, 2))
## ax.set_xlim(-3, 4)
## plt.show()

## fig1, (ax1, ax2) = plt.subplots(nrows=1, ncols=2)
## 
## fig2, (ax3, ax4) = plt.subplots(nrows=2, ncols=1)

## fig, ((ax_nw, ax_ne), (ax_sw, ax_se)) = plt.subplots(nrows=2, ncols=2)
## 
## plt.show()

## import numpy as np
## sex, height, weight = np.genfromtxt('data/height-weight.csv', unpack = True, delimiter = ",", skip_header=True, dtype=None, encoding='UTF-8')
## print(sex)

## height_m = []
## height_f = []
## weight_m = []
## weight_f = []
## 
## for i in range(len(sex)):
##     if sex[i] == 'Male':
##         height_m.append(height[i])
##         weight_m.append(weight[i])
##     else:
##         height_f.append(height[i])
##         weight_f.append(weight[i])

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data on ax1
## ax1.scatter(weight_m, height_m)
## ax1.scatter(weight_f, height_f)
## 
## plt.show()
## 

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data on ax1
## ax1.scatter(weight_m, height_m)
## ax1.scatter(weight_f, height_f)
## 
## plt.show()
## 

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data on ax1
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, marker = 's')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, marker = 'o')
## 
## plt.show()
## 

## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data on ax1
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, marker = 's')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, marker = 'o')
## 
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## 
## plt.show()
## 

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data on ax1
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, marker = 's')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, marker = 'o')
## 
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## 
## plt.show()
## 

## ax2.hist(height_m, bins=5, color = 'royalblue', alpha = 0.5)
## ax2.hist(height_f, bins=5, color = 'magenta', alpha = 0.5)
## 
## 
## ax2.set_title('Height Distributions by Sex')
## ax2.set_ylabel('Count')
## ax2.set_xlabel('Height (cm)')
## 

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data on ax1
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, marker = 's')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, marker = 'o')
## 
## # Plot data on ax2
## 
## ax2.hist(height_m, bins=5, color = 'royalblue', alpha = 0.5)
## ax2.hist(height_f, bins=5, color = 'magenta', alpha = 0.5)
## 
## # Add labels
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## 
## ax2.set_title('Height Distributions by Sex')
## ax2.set_ylabel('Count')
## ax2.set_xlabel('Height (cm)')
## 
## # Suppress automatic notebook output
## plt.show()
## 
## 

## 
## # Add legend
## ax1.legend()
## ax2.legend()
## 

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data on ax1
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, marker = 's')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, marker = 'o')
## 
## # Plot data on ax2
## 
## ax2.hist(height_m, bins=5, color = 'royalblue', alpha = 0.5)
## ax2.hist(height_f, bins=5, color = 'magenta', alpha = 0.5)
## 
## # Add labels
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## 
## ax2.set_title('Height Distributions by Sex')
## ax2.set_ylabel('Count')
## ax2.set_xlabel('Height (cm)')
## 
## # Add legend
## ax1.legend()
## ax2.legend()
## 
## # Suppress automatic notebook output
## plt.show()
## 
## 

## 
## x_values = np.linspace(0, 2, 100)
## 
## def f(x):
##     return x**2
## 
## y_values = f(x_values)
## 

## fig, ax = plt.subplots()
## 
## ax.plot(x_values, y_values, c = 'teal', linestyle = '--')
## 
## ax.set_title("Quadratic Function $y = x^2$")
## ax.set_xlabel("x")
## ax.set_ylabel("y")
## 
## plt.show()
