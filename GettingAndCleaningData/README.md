## Version
Version 1.0

## Requirements
R 3.2.0 or later.

##Overview
The run_analysis.R script is written in the R programming language. The script will read, process and clean the "Human Activity Recognition Using Smartphones Dataset" 
which can be downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

##Tidy Data Set
The output is a clean data set named "cleanDataSet" loaded in R.
The output is in wide format where each row represents an observed measurement where one subject performed one action with the measurements of multiple sensors recorded.
The column names have been updated with human understandable terms and are syntactically valid R variable names.
Any columns that do not measure the mean or standard deviation measurements has been removed.

This conforms to the tidy data principals because...
* Each variable that is measured is in one column.
* Each observation of the variables are in a different row.

## Usage
To recreate the clean data set.
* Download the data set from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
* Extract the contents of the data set to a directory named "working" under your R current working directory.
* Open and execute the run_analysis.R file in R or RStudio.











