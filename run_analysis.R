setwd("C:/Users/karl_/CourseraRprogramming/CleaningDataProject")


# This code applies the necessary operations to the training and test dataset provided in  
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# to fulfill the requirements of the final submission in the Getting and Cleaning Data course on Coursera

# This is achieved by:
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measuremeants on the mean and standard devition for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each 
#   variable for each activity and each subject.

############################################
# ATTACH LIBRARIES 
############################################
library(reshape2)


############################################
# LOAD DATA
############################################
# Load Training sets
xTrain<-read.table("UCI HAR Dataset/train/X_train.txt")
yTrain<-read.table("UCI HAR Dataset/train/Y_train.txt")
SubjectTrain<-read.table("UCI HAR Dataset/train/subject_train.txt")

# Load Test sets
xTest<-read.table("UCI HAR Dataset/test/X_test.txt")
yTest<-read.table("UCI HAR Dataset/test/Y_test.txt")
SubjectTest<-read.table("UCI HAR Dataset/test/subject_test.txt")

# Load labels to the dataset
Features<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors = FALSE)

# Load activity Labels
ActivityLabels<-read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors = FALSE)

############################################
# COMBINE DATASETS
############################################
# Add y_labels and subjects to each of the datasets
Train<-cbind(SubjectTrain,yTrain,xTrain)
Test<-cbind(SubjectTest,yTest,xTest)

# combine Training and Test datasets to one dataset (Task 1)
DataIn<-rbind(Train,Test)


############################################
# ADD HEADINGS AND SUBSET DATA  
############################################
# apply headings to the dataset
colnames(DataIn)<-c("Subject","Activity",Features$V2)

# Extracts only the measuremeants on the mean and standard devition for each measurement. (Task2)
# (Activity and Subject columns are also included as these  indices for metadata and not actual meassurements)
TidyData<-DataIn[,grepl("mean|std|Subject|Activity", colnames(DataIn))]


############################################
# CLEAN LABELS AND HEADINGS
############################################

# Add descriptive activity names converting activity ID to factor data type and adding labels (Task 3)
TidyData$Activity<-factor(TidyData$Activity,labels=ActivityLabels[,2])

# Appropriately labels the data set with descriptive variable names (Task 4)
# 1 - Clarify Frequency Domain Variables
colnames(TidyData)<-gsub("^f","Frequency",colnames(TidyData))

# 2 - Clarify Time Domain Variables 
colnames(TidyData)<-gsub("^t","Time",colnames(TidyData))

# 3 - Clarify std() with Std 
colnames(TidyData)<-gsub("std","Std",colnames(TidyData))

# 4 - Tidy mean by changing to uppercase M and eplace meanFreq() with Mean (frequency is implied as the variables are specified with f in the beginning of their names)
colnames(TidyData)<-gsub("mean","Mean",colnames(TidyData))

# 5 - replace repeated BodyBody with just Body 
colnames(TidyData)<-gsub("BodyBody","Body",colnames(TidyData))

# 6 - remove all highfin symbols in names
colnames(TidyData)<-gsub("-","",colnames(TidyData))

# 7 - replace all brackets in names
colnames(TidyData)<-gsub("\\(|\\)","",colnames(TidyData))

# 8 - clarify that X,Y,Z means X,Y or Z-axis
colnames(TidyData)<-gsub("X$","Xaxis",colnames(TidyData))
colnames(TidyData)<-gsub("Y$","Yaxis",colnames(TidyData))
colnames(TidyData)<-gsub("Z$","Zaxis",colnames(TidyData))


############################################
# CREATE INDEPENDENT TIDY DATASET WITH AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND SUBJECT
############################################
# Create melted dataset
MeltedData<-melt(TidyData,id=c("Subject","Activity"))

# Apply mean function grouped by subject and activity against variable (Task 5)
TidyDataMeans<-dcast(MeltedData, Subject + Activity ~ variable, mean)


############################################
# WRITE DATA TO CSV
############################################
write.csv(TidyDataMeans,file="TidyDataMeans.csv")
write.csv(TidyData,file="TidyData.csv")

