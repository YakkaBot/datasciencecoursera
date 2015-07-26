###############################################################################
# R Script
# run_analysis.R

# You should create one R script called run_analysis.R that does the following. 
# + Merges the training and the test sets to create one data set.
# + Extracts only the measurements on the mean and standard deviation for each measurement. 
# + Uses descriptive activity names to name the activities in the data set
# + Appropriately labels the data set with descriptive variable names. 
# - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
###############################################################################
# Over all Plan
# 
# Read in the Test Values (Features)
# Read in the feature names and relabel the test data set with the feature names.
# Read in the Y_Test data (activity referenceds)
# Replace the activity data in with the activity labels.
# Re-label the activity column.
# 
# 
# 
# 
# 
# 

###############################################################################
# File Description Details.

# REMOVE THIS FROM THE FINAL VERSION
# REMOVE THIS FROM THE FINAL VERSION
# Set Working Directory
setwd("C:/Users/Justin/Documents/R-Working/3-GetCleanData/UCI HAR Dataset")
# REMOVE THIS FROM THE FINAL VERSION
# REMOVE THIS FROM THE FINAL VERSION

###############################################################################
# Common
###############################################################################

# Declare and se the root path variable.
rootPath <- getwd()


# Read the activity labels.
activityLabelFile <- file.path(rootPath, "activity_labels.txt")
activityLabels <- read.table(activityLabelFile, stringsAsFactors = FALSE)

# Read the feature labels.
featuresFile <- file.path(rootPath, "features.txt")
features <- read.table(featuresFile)

# Filter feature columns that contain mean and std and return the columns 
# in the order they originally appeared.
colFilterMean <- which(apply(features[2], 1, function(x) any(grepl("mean", x))))
colFilterStd <- which(apply(features[2], 1, function(x) any(grepl("std", x))))
colFilter <- sort(append(as.numeric(colFilterMean), as.numeric(colFilterStd)))

featuresFiltered <- features[c(colFilter),]

###############################################################################
# Read and clean Test Data Set
###############################################################################

# Read the Test subjects.
TestSubjectFile <- file.path(rootPath, "Test/subject_Test.txt")
TestSubject <- read.table(TestSubjectFile)

# Relabel the column in the TestSubjects data set.
names(TestSubject)[1] <- "subject"

# Read the Test activity data set.
TestActivityFile <- file.path(rootPath, "Test/Y_Test.txt")
TestActivity <- read.table(TestActivityFile)

# Relabel the column in the Test activity data set.
names(TestActivity)[1] <- "activity"

# Replace the activity references with activity names.
for (i in seq_along(TestActivity[,1])){
    TestActivity[i,1] <- activityLabels[TestActivity[i,1],2]
}

# Read the Test experiment data set.
TestExpFile <- file.path(rootPath, "Test/X_Test.txt")
TestExp <- read.fwf(TestExpFile,buffersize = 100, widths = rep(16, times = 561))

# Remove Columns that are not needed
TestExpFiltered <- TestExp[,colFilter]

# Relabel the columns in the Test data set to match the features.
for (i in seq_along(TestExpFiltered)){
    names(TestExpFiltered)[i] <- toString(featuresFiltered[i,2])
}

# Combine the Test columns in to the 'cleanTest' dataset.
cleanTest <- cbind(TestSubject,TestActivity ,TestExpFiltered)


###############################################################################
# Read and clean Train Data Set
###############################################################################

# Read the Train subjects.
TrainSubjectFile <- file.path(rootPath, "Train/subject_Train.txt")
TrainSubject <- read.table(TrainSubjectFile)

# Relabel the column in the TrainSubjects data set.
names(TrainSubject)[1] <- "subject"

# Read the Train activity data set.
TrainActivityFile <- file.path(rootPath, "Train/Y_Train.txt")
TrainActivity <- read.table(TrainActivityFile)

# Relabel the column in the Train activity data set.
names(TrainActivity)[1] <- "activity"

# Replace the activity references with activity names.
for (i in seq_along(TrainActivity[,1])){
  TrainActivity[i,1] <- activityLabels[TrainActivity[i,1],2]
}

# Read the Train experiment data set.
TrainExpFile <- file.path(rootPath, "Train/X_Train.txt")
TrainExp <- read.fwf(TrainExpFile,buffersize = 100, widths = rep(16, times = 561))

# Remove Columns that are not needed
TrainExpFiltered <- TrainExp[,colFilter]

# Relabel the columns in the Train data set to match the features.
for (i in seq_along(TrainExpFiltered)){
  names(TrainExpFiltered)[i] <- toString(featuresFiltered[i,2])
}

# Combine the Train columns in to the 'cleanTrain' dataset.
cleanTrain <- cbind(TrainSubject,TrainActivity ,TrainExpFiltered)


###############################################################################
# Combine Test and Train data sets.
###############################################################################
# Combine Test and Train data sets.
cleanDataSet <- rbind(cleanTest, cleanTrain)








# EOF
###############################################################################
###############################################################################
###############################################################################
###############################################################################
###############################################################################
###############################################################################
###############################################################################
###############################################################################
###############################################################################

# Renaming headers.
#Works!
for(i in 1:561)
{
  names(test)[i] <- toString(features[i,2])
}

str(names(test))
names(test)[3] <-toString(features[3,2])
test <- head(X_TestExp)
str(test)
names(test)
features[3,2]
names(test)[1] <- features[1,2]
names(test)[1] <- features[features[1,2],2]
names(test)[1] <-toString(features[1,2])



# Reading Large File.

X_TestFile <- read.fwf(X_TestFilePath,buffersize = 100, widths = rep(c(1,15), times = 561))

# Remove NULL (Odd) columns.
X_TestClean <- subset(x = X_TestFile, select = seq(from = 2, to = 1122, by = 2))


str(X_TestClean)

seq(from = 2, to = 1122, by = 2)

read.fwf(file.path(path, rawX_TestFile), 1)

read.fwf("C:/Users/Justin/Documents/R-Working/3-GetCleanData/UCI HAR Dataset/test/X_test.txt",
         widths = c(1,15))
       

rawX <- read.delim("C:/Users/Justin/Documents/R-Working/3-GetCleanData/UCI HAR Dataset/test/X_test.txt",header = FALSE, sep = " ")
replicate(2, "1,15")

rep(c(1,15), time = 3)
