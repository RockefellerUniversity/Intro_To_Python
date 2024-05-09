
## data analysis on Biostars questions 

#https://github.com/itsvenu/DataScience-Projects/blob/be79623248f638c29a1102d7f5ec916554416dc0/Biostars/Biostars_QA_websiteAnalysis.R#L117

library(rvest)
library(tidyverse)
library(mondate)
library(RColorBrewer)

## get question, add relevant tags

## function to return a dataframe with
## question and tags & question asked time per-each question for each page

#https://www.biostars.org/?page=1&limit=all

page_num<- 2000


return_questions_tags_df <- function(page_num){
  
  ## base url
  url_part_one <- "https://www.biostars.org/?page="
  url_part_two <- "&limit=all?order=date"
  
  total_url <- paste0(url_part_one, page_num, url_part_two)
  
  ## read url
  url_dat <- read_html(total_url)
  
  ## get questions in this page
  
  tags <- url_dat %>% html_nodes(".content") %>% lapply(function(x){
    x %>% html_nodes(".ptag") %>% html_text(trim = TRUE)})
  
  return(tags)
}
  
  # python <-  %>% toString() %>% str_count("/tag/python|/tag/Python")
  # R <- url_dat %>% html_nodes(".ptag") %>% toString() %>% str_count("/tag/R|/tag/r")
  # python <- url_dat %>% html_nodes(".ptag") %>% toString() %>% str_count("/tag/ruby|/tag/Ruby")
  

## total pages in biostars site, 2295| 2337

biostars_dat <- NULL

## These are the number of pages when you open incognito mode
## this number of different when you open biostars as a user
## I took the number from incognito mode

all_pages <- 1:2337
#all_pages <- 1:3

for(i in 1:length(all_pages)){
  
  my_res <- return_questions_tags_df(page_num = all_pages[i])
  
  biostars_dat <- rbind(biostars_dat, my_res)
  
  message(" ## Page: ", all_pages[i])
  
}

saveRDS(biostars_dat,"~/Desktop/biostars.rds")


biostars_dat_sub <- biostars_dat[,-1]

unlist(biostars_dat_sub)

python <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("Python", "python"))
  return(present)
})

r <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("r", "R"))
  return(present)
})

perl <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("perl", "Perl"))
  return(present)
})

ruby <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("ruby", "Ruby"))
  return(present)
})

java <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("java", "Java"))
  return(present)
})

rust <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("rust", "Rust"))
  return(present)
})

library(slider)  
python_percentile <- slide_dbl(python, ~sum(.x), .before = 49, .after = 50)
r_percentile <- slide_dbl(r, ~sum(.x), .before = 49, .after = 50)
perl_percentile <- slide_dbl(perl, ~sum(.x), .before = 49, .after = 50)
ruby_percentile <- slide_dbl(ruby, ~sum(.x), .before = 49, .after = 50)
java_percentile <- slide_dbl(java, ~sum(.x), .before = 49, .after = 50)
rust_percentile <- slide_dbl(rust, ~sum(.x), .before = 49, .after = 50)

to_plot <- data.frame("Python"=python_percentile, "R"=r_percentile,
      "Perl"=perl_percentile, "Ruby"=ruby_percentile,
      "Java"=java_percentile, "Rust"= rust_percentile, "Posts"=length(rust_percentile):1)

to_plot3 <- to_plot[-c(1:100,(nrow(to_plot)-100):nrow(to_plot)),]

to_plot2 <- pivot_longer(to_plot,cols=1:6, names_to = "Language", values_to = "Tag%")
to_plot4 <- pivot_longer(to_plot3,cols=1:6, names_to = "Language", values_to = "Tag%")

library(ggplot2)

ggplot(to_plot4, aes(x=Time, y=`Tag%`, color=Language)) + geom_smooth()

ggplot(to_plot2, aes(x=Time, y=`Tag%`, color=Language)) + geom_smooth(span = 10000)

ggplot(to_plot2, aes(x=Time, y=`Tag%`, color=Language)) + geom_smooth(span = 0.01)



biopython <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("Biopython", "biopython"))
  return(present)
})

bioconductor <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("Biopython", "biopython"))
  return(present)
})

scanpy <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("Scanpy", "scanpy"))
  return(present)
})

seurat <- sapply(t(biostars_dat_sub) ,function(x){
  present <- any(x %in% c("Seurat", "seurat"))
  return(present)
})


bioconductor_percentile <- slide_dbl(bioconductor, ~sum(.x), .before = 49, .after = 50)
biopython_percentile <- slide_dbl(biopython, ~sum(.x), .before = 49, .after = 50)
scanpy_percentile <- slide_dbl(scanpy, ~sum(.x), .before = 49, .after = 50)
seurat_percentile <- slide_dbl(seurat, ~sum(.x), .before = 49, .after = 50)

to_plot <- data.frame("Bioconductor"=bioconductor_percentile, "Biopython"=biopython_percentile,
                      "Scanpy"=scanpy_percentile, "Seurat"=seurat_percentile, "Posts"=length(rust_percentile):1)
to_plot2 <- pivot_longer(to_plot,cols=1:4, names_to = "Package", values_to = "Tag%")

ggplot(to_plot2, aes(x=Posts, y=`Tag%`, color=Package)) + geom_smooth()
