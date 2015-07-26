###############################################################################
# R Script
# run_analysis.R
# version 1.0
###############################################################################
# Common
###############################################################################

# Declare and se the root path variable.
rootPath <- file.path(getwd(), "working")

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

featuresShortened <- features[c(colFilter),]

# Replace names with human understandable and syntactically valid names
featuresShortened2 <- gsub(pattern = "^t",replacement = "Time ", x = featuresShortened$V2)
featuresShortened3 <- gsub(pattern = "^f",replacement = "Frequency Domain ", x = featuresShortened2)
featuresFiltered <- make.names(names = featuresShortened3, )


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

