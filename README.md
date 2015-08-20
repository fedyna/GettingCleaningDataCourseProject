# GettingCleaningDataCourseProject
Project for getdata-031 on Coursera.
# Goal
__In this project, you find:__  
• The R-code run on the data set — _run_analysis.R_  
• The clean data extracted from the given data by run_analysis.R — _tidydata.txt_  
• The CodeBook reference to the variables in tidydata.txt — _CodeBook.md_  
• The analysis of the code in run_analysis.R — _README.md_  
# Getting Started  
## Read training data  
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE  
featuresTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)  
activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)  
## Read test data  
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)  
featuresTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)  
activityTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)  
## Read Supporting Metadata  
__metadata with the name of the features:__  
featureNames <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)[,2]  
__metadata with the name of the activities:__  
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)  

# 1) Merge the training and the test sets to create one data set.  
__Combine the respective data in training and test data sets corresponding to subject, activity and features. RECEIVE -> _subject_, _activity_, _features_:__  
subject <- rbind(subjectTrain, subjectTest)  
features <- rbind(featuresTrain, featuresTest)  
activity <- rbind(activityTrain, activityTest)  
__Assigns the name of the column:__  
colnames(features) <- featureNames  
colnames(activity) <- "Activity"  
colnames(subject) <- "Subject"    
## The data in features,activity and subject are merged and the mergedDATA  
mergedDATA <- cbind(activity, subject, features)  






