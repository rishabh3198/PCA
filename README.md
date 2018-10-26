# PCA
First step for hiring process at Elucidata

## Introduction
In this assignment i'm suppose to build a PCA package either in R or Python which can be able to plot PC1 vs PC2 with desired data cleaning. 
There is a function called PCAplot in the package which performs all the given task but only if genedata consists rownames as first column
and symbol as second column. No matter how many samples are given.

Dataset:
* gene_data<- genedata consists of row_names, symbol of gene and 30 samples.
* metadata<- metadata explains hour of the day when sample taken.

Input/output for PCAplot:
* Input<- as given, PCAplot function will take genedata and metadata as input. 
* Output<- The output will be a grid consists of a PCA plot and metadata plot.
* PCA plot is PC1 vs PC2 and metadata plot is a point plot showing at which time the given sample is taken.

## Installation
* Get the dev version from github: `devtools::install_github("rishabh3198/PCA")`
