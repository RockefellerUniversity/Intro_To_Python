# Teaching at RU
A template repository from which to build workshops and other teaching materials in a standard manner to allow integration with other RU material. An example can be found [here](https://rockefelleruniversity.github.io/RU_RNAseq/)


## How to use this template

* Use this as a template. Just click on the *'Use this template'* button on the top right of the repository to get started and set up your own course repository.   

* All the course content will be contained in the package (currently titled "MyCoursePackage"). This structure is important as we will use this, along with the GitHub actions to automatically compile your course.  

* You will need to first rename the package and the associated R project. From there you can add in the appropriate files for the course content, and update the config files. There are placeholders along with examples and formatting guides for most files. Anything surrounded by double question marks [??] is text to help, but should be replaced. 

* Another thing to look out for is links. You will need to update any paths that point into the package to reflect the packages name.

* If there are mistakes, or areas of the template you think are not as clear as they could be please take a fork, and submit a pull request with suggested updates so we can improve it. Alternatively raise an issue.

* To see how the course template is compiled visit the [web page](https://rockefelleruniversity.github.io/RU_course_template/). Alternatively look at other [compiled courses](https://rockefelleruniversity.github.io/RU_RNAseq/) and their [Rmd files](https://github.com/RockefellerUniversity/RU_RNAseq/tree/master/rnaseq/inst/extdata/presRaw) on GitHub. 


## Course Content

#### Course slides
Find these at _MyCoursePackage/inst/extdata/presRaw/*_  
Check out the example to get some idea of formatting within the Rmd

#### Exercises
Find these at _MyCoursePackage/inst/doc/*_  
Check out the example to get some idea of formatting within the Rmd

## Config files

#### DESCRIPTION
Find this at *MyCoursePackage/DESCRIPTION*  
Basic package description file. Ensure you have added in all dependencies you use in the package. Otherwise it will not compile. 

If you have non-R dependencies put them in the SystemRequirements field. Use the name associated with the conda installation. We will use Herper to install the software. 

#### Descriptions
Find these at *MyCoursePackage/inst/doc/Descriptions*  
These files contain descriptive text, from which the cover page for the course is built. The placeholders show roughly what to expect. There are two types. 

1. The Course Overview: This Rmd contains a description of the overall course.
2. The session overview: There will be one of these for each session you break the course down into. There could just be one, if you just have a single session. 

#### course.yml
Find this at *MyCoursePackage/inst/doc/_course.yml*  
This yml will contain the name for all the Rmd files.
You will first need to update the CourseName. 
If any of the Rmds have a different name to the template, update the .yml to reflect that. The order is important so the RMd for your first section should be first.   
Each Rmd should be separated by a space. Except for exercises. Exercises should be in the order they appear. Exercises in the same section will be comma separated. There will then be a space between sections i.e. in the template the first 2 exercises are associated with the first session, while the 3rd exercise is associated with the final session. 


## .github files for compiling
The workflows for compilation are contained in the .github directory on the top level. These contain the github actions required to recognize updates to the repository, then recompile the content. Along with running basic checks of the R code. 

There are two. You will have to replace the package name in these scripts. There may be further customization needed, but this is on a case by case basis to get compilation running. Most standard courses will work though. 

## Finished?
Once you have finished let us know and we will take a fork onto the Rockefeller GitHub. We can then start the process of getting it compiling and help review the course content.

## Help
If you need help contact the BRC [brc@rockefeller.edu], or raise an issue. 


