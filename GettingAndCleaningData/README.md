## Version
Version 1.0

## Requirements
R 3.2.0 or later.

##Overview
The run_analysis.R script is written in the R programming language. The script will read, process and clean the "Human Activity Recognition Using Smartphones Dataset" 
which can be downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

##Tidy Data Set
The output is a clean data set named "cleanDataSet" loaded in R.
The output is in wide format where each row represents an observed measurement where one subject perform one action with the measurements of multiple sensors recorded.
The column names have been updated with human understandable terms and are syntactically valid R variable names.
We have removed any columns that do not measure the mean or standard deviation measurements.

This conforms to the tidy data principals because...
* Each variable that is measured is in one column.
* Each observation of the variables are in a different row.

## Usage
To recreate the clean data set.
* Download the data set from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
* Extract the contents of the data set to a directory named "working" under your R current working directory.
* Open and execute the run_analysis.R file in R or RStudio.


##Transformations
The run_analysis.R script performs the following actions.

#### Read common files and create descriptive variable names.
* Read the activity labels from the "activity_labels.txt" file.
* Read the feature names from the "features.txt" file.
* Remove all columns from the features that are not mean or standard deviation.
* Expand the feature names so they are more descriptive.
* Replace any non-alpha numeric characters so the feature variables are syntactically valid.

#### Read and clean the "Test" data set.
* Read the Test subjects from the "Test/subject_Test.txt" file.
* Relabel the column in the TestSubjects data set to "subjects"
* Read the Test activity data set from the "Test/Y_Test.txt" file.
* Relabel the column in the Test activity data set to "activity"
* Replace the activity references with activity names.
* Read the Test experiment data set from the "Test/X_Test.txt" file.
* Remove Columns that are not needed
* Relabel the columns in the Test data set to match the features.
* Combine the Test columns in to the 'cleanTest' dataset.

#### Read and clean the "Train" data set.
* Read the Train subjects from the "Train/subject_Train.txt" file.
* Relabel the column in the TrainSubjects data set to "subjects"
* Read the Train activity data set from the "Train/Y_Train.txt" file.
* Relabel the column in the Train activity data set to "activity"
* Replace the activity references with activity names.
* Read the Train experiment data set from the "Train/X_Train.txt" file.
* Remove Columns that are not needed
* Relabel the columns in the Train data set to match the features.
* Combine the Train columns in to the 'cleanTrain' dataset.

#### Combine Test and Train data sets.
* Combine the CleanTest and cleanTrain data sets in to the new data set cleanDataSet.










