library(data.table)
library(dplyr)
        # metadata with the name of the features
featureNames <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)[,2]
        # metadata with the name of the activities
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
        # read train data
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
featuresTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
        # read test data
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
featuresTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
activityTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

# 1) Merge the training and the test sets to create one data set.

subject <- rbind(subjectTrain, subjectTest)
features <- rbind(featuresTrain, featuresTest)
activity <- rbind(activityTrain, activityTest)

colnames(features) <- featureNames
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"

mergedDATA <- cbind(activity, subject, features)

# 2) Extracts only the measurements on the mean and standard deviation for each measurement.

colExtractMeanStd <- grep(".*mean.*|.*std.*", names(mergedDATA), ignore.case = TRUE)
extractedDATA <- mergedDATA[,colExtractMeanStd]
extractedDATA <- cbind(activity, subject, extractedDATA)


# 3) Uses descriptive activity names to name the activities in the data set
extractedDATA$Activity <- as.character(extractedDATA$Activity)
for (i in 1:6){
        extractedDATA$Activity[extractedDATA$Activity == i] <- as.character(activityLabels[i,2])
}

extractedDATA$Activity <- as.factor(extractedDATA$Activity)

# 4) Appropriately labels the data set with descriptive variable names

# names(extractedDATA)

# Following acronyms can be replaced:
# t is based on 'time' measurements;
# f is based on 'frequency' measurements;
# BodyBody is related to 'Body' movement;
# Acc is 'Accelerometer' measurement;
# Gyro is 'Gyroscopic' measurements;
# Mag is 'Magnitude' of movement.

names(extractedDATA) <- gsub("^t", "Time", names(extractedDATA))
names(extractedDATA) <- gsub("^f", "Frequency", names(extractedDATA))
names(extractedDATA) <- gsub("BodyBody", "Body", names(extractedDATA))
names(extractedDATA) <- gsub("Acc", "Accelerometer", names(extractedDATA))
names(extractedDATA) <- gsub("Gyro", "Gyroscope", names(extractedDATA))
names(extractedDATA) <- gsub("Mag", "Magnitude", names(extractedDATA))
names(extractedDATA) <- gsub("tBody", "TimeBody", names(extractedDATA))

# names(extractedDATA)

# 5) From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

# create tidyDATA as a data set with average for each subject and activity.
tidyDATA <- aggregate(. ~Subject + Activity, extractedDATA, mean)
# tidyDATA <- tidyDATA[order(tidyDATA$Subject,tidyDATA$Activity),]

write.table(tidyDATA, file = "tidydata.txt", row.names=FALSE)


