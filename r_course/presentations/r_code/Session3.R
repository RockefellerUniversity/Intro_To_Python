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
## ax.set_ylim(6, 10)
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

## from scipy.optimize import curve_fit
## 
## # define the function with the independent variable first, followed by fit parameters
## def line(x, m, b):
##     return  m * x + b
## 
## popt_m, pcov_m = curve_fit(f=line, xdata=weight_m, ydata=height_m)
## popt_f, pcov_f = curve_fit(f=line, xdata=weight_f, ydata=height_f)
## 
## print(popt_m)

## x = np.linspace(start=60, stop=100, num=100)
## print(x)

## y_male = line(x, m = popt_m[0], b = popt_m[1])
## y_female = line(x, m = popt_f[0], b = popt_f[1])

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5)
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5)
## 
## ax1.plot(x, y_male, c = 'royalblue')
## ax1.plot(x, y_female, c = 'magenta')
## 
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## 
## plt.show()

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5)
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5)
## 
## ax1.plot(x, y_male, c = 'royalblue')
## ax1.plot(x, y_female, c = 'magenta')
## 
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## 
## plt.show()

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, label = 'Male')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, label='Female')
## 
## ax1.plot(x, y_male, c = 'royalblue')
## ax1.plot(x, y_female, c = 'magenta')
## 
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## 
## ax1.legend()
## 
## plt.show()

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, label = 'Male')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, label='Female')
## 
## ax1.plot(x, y_male, c = 'royalblue')
## ax1.plot(x, y_female, c = 'magenta')
## 
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## 
## ax1.legend()
## 
## plt.show()

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, label = 'Male')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, label='Female')
## 
## ax1.plot(x, y_male, c = 'royalblue')
## ax1.plot(x, y_female, c = 'magenta')
## 
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## ax1.legend()
## 
## ax2.hist(height_m, bins=5, color = 'royalblue', alpha = 0.5)
## ax2.hist(height_f, bins=5, color = 'magenta', alpha = 0.5)
## 
## plt.show()

## # Generate figure and axes
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## 
## # Plot data
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, label = 'Male')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, label='Female')
## 
## ax1.plot(x, y_male, c = 'royalblue')
## ax1.plot(x, y_female, c = 'magenta')
## 
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## ax1.legend()
## 
## ax2.hist(height_m, bins=5, color = 'royalblue', alpha = 0.5)
## ax2.hist(height_f, bins=5, color = 'magenta', alpha = 0.5)
## 
## plt.show()

## 
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, label = 'Male')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, label='Female')
## ax1.plot(x, y_male, c = 'royalblue')
## ax1.plot(x, y_female, c = 'magenta')
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## ax1.legend()
## ax2.hist(height_m, bins=5, color = 'royalblue', alpha = 0.5, label = 'Male')
## ax2.hist(height_f, bins=5, color = 'magenta', alpha = 0.5, label = 'Female')
## 
## ax2.set_ylabel('Count')
## ax2.set_xlabel('Height (cm)')
## ax2.legend()
## ax2.set_title('Height Distributions by Sex')
## 
## plt.show()

## 
## fig, (ax1, ax2) = plt.subplots(ncols = 2, nrows = 1, figsize=(10, 4))
## ax1.scatter(weight_m, height_m, c = 'royalblue', alpha = 0.5, label = 'Male')
## ax1.scatter(weight_f, height_f, c = 'magenta', alpha = 0.5, label='Female')
## ax1.plot(x, y_male, c = 'royalblue')
## ax1.plot(x, y_female, c = 'magenta')
## ax1.set_title("Height vs Weight")
## ax1.set_xlabel("Weight (kg)")
## ax1.set_ylabel("Height (cm)")
## ax1.legend()
## ax2.hist(height_m, bins=5, color = 'royalblue', alpha = 0.5, label = 'Male')
## ax2.hist(height_f, bins=5, color = 'magenta', alpha = 0.5, label = 'Female')
## 
## ax2.set_ylabel('Count')
## ax2.set_xlabel('Height (cm)')
## ax2.legend()
## ax2.set_title('Height Distributions by Sex')
## 
## plt.show()

## import seaborn as sns
## 
## fig, ax = plt.subplots(figsize = (4, 4))
## 
## sns.violinplot(weight_m, ax = ax)
## 

## fig, ax = plt.subplots(figsize = (4, 4))
## 
## sns.violinplot(weight_m, ax = ax, color = 'royalblue', alpha = 0.5, linewidth=0, label = "Male")
## sns.violinplot(weight_f, ax = ax, color = 'magenta', alpha = 0.5, linewidth=0, label = "Female")
## 
## ax.set_ylabel('Weight (kg)')
## ax.set_title("Weight Distribution by Sex")
## ax.legend()
## 
## plt.show()

## fig, ax = plt.subplots(figsize = (6, 5))
## 
## sns.violinplot(weight_m, ax = ax, color = 'royalblue', alpha = 0.5, linewidth=0, label = "Male")
## sns.violinplot(weight_f, ax = ax, color = 'magenta', alpha = 0.5, linewidth=0, label = "Female")
## 
## ax.set_ylabel('Weight (kg)')
## ax.set_title("Weight Distribution by Sex")
## ax.legend()
## 
## plt.show()

## fig.tight_layout()
## fig.savefig("my_violin_plot.pdf", bbox_inches = "tight")

## 
## 
## data = np.genfromtxt('data/gene_data.csv', unpack = True, delimiter = ",", skip_header=True)
## 
## print(data)

## fig, ax = plt.subplots(figsize = (5,4))
## sns.heatmap(data, linewidth = 0.5, cmap = 'viridis', annot = True)
## ax.set_xlabel("Time")
## ax.set_ylabel("Gene")
## ax.set_title("Gene Progression")
## plt.show()
## 

## # Generate figure and axes
## fig, ax = plt.subplots(figsize=(6, 4))
## ratio = weight/height
## im = ax.scatter(weight, height, c=ratio, cmap='viridis')
## fig.colorbar(im, ax=ax)
## 
## ax.set_xlabel("Weight (kg)")
## ax.set_ylabel("Height (cm)")
## ax.set_title("Weight vs Height")
## 
## plt.show()

## # Generate figure and axes
## fig, ax = plt.subplots(figsize=(6, 4))
## ratio = weight/height
## im = ax.scatter(weight, height, c=ratio, cmap='viridis')
## 
## fig.colorbar(im, ax=ax)
## 
## ax.set_xlabel("Weight (kg)")
## ax.set_ylabel("Height (cm)")
## ax.set_title("Weight vs Height")
## 
## plt.show()
