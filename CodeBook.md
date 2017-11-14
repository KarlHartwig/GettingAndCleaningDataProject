# **Code Book**
The following variables are created based on the dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data come from accelerometer and angular velocity 3-axial raw signals in the time domain (variables containing TimeAcc below) as well as Gyroscopic movement in the time domain along the same axes (variables containing with Gyro in below). 
These time domain signals (prefix Time to denote time) were captured at a constant rate of 50 Hz and filtered using a 3rd order low pass median Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Variable names containing TimeBodyAcc and TimeGravityAcc) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk and TimeBodyGyroJerk). The magnitude of these three-dimensional signals were also calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals to produce frequency domain variables FrequencyBodyAcc, FrequencyBodyAccJerk, FrequencyBodyGyro, FrequencyBodyAccJerkMag, FrequencyBodyGyroMag, FrequencyBodyGyroJerkMag.

The units for the acceleration measurements are given in “g”-force units where 1g is equivalent to 9.80665 m/segment2. Hence, the reader should be aware the SI units are not used for annotation below.
The gyro data is given in radians per segment (rad/seg). 

Please refer to ReadMe.md and the run_analysis.R code file (including its comments ) for additional details regarding how the datasets were transformed.
 


## **TidyData**
The dataset stored within the file TidyData.csv is a tidied verson of the source data provided within https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . Annotation of the variables are presented below together with a reference to the corrensponding source features provided in the original dataset.

| Column   Name                     | Data Type | Units   | Source Feature Identity                                                     |
|-----------------------------------|-----------|---------|-----------------------------------------------------------------------------|
| Activity                          | integer   | N/A     | Activities within file   activity_labels.txt                                |
| Subject                           | factor    | N/A     | SubectID numbers originally   within subject_train.txt and subject_test.txt |
| TimeBodyAccMeanXaxis              | numeric   | g       | tBodyAcc-mean()-X                                                           |
| TimeBodyAccMeanYaxis              | numeric   | g       | tBodyAcc-mean()-Y                                                           |
| TimeBodyAccMeanZaxis              | numeric   | g       | tBodyAcc-mean()-Z                                                           |
| TimeBodyAccStdXaxis               | numeric   | g       | tBodyAcc-std()-X                                                            |
| TimeBodyAccStdYaxis               | numeric   | g       | tBodyAcc-std()-Y                                                            |
| TimeBodyAccStdZaxis               | numeric   | g       | tBodyAcc-std()-Z                                                            |
| TimeGravityAccMeanXaxis           | numeric   | g       | tGravityAcc-mean()-X                                                        |
| TimeGravityAccMeanYaxis           | numeric   | g       | tGravityAcc-mean()-Y                                                        |
| TimeGravityAccMeanZaxis           | numeric   | g       | tGravityAcc-mean()-Z                                                        |
| TimeGravityAccStdXaxis            | numeric   | g       | tGravityAcc-std()-X                                                         |
| TimeGravityAccStdYaxis            | numeric   | g       | tGravityAcc-std()-Y                                                         |
| TimeGravityAccStdZaxis            | numeric   | g       | tGravityAcc-std()-Z                                                         |
| TimeBodyAccJerkMeanXaxis          | numeric   | g       | tBodyAccJerk-mean()-X                                                       |
| TimeBodyAccJerkMeanYaxis          | numeric   | g       | tBodyAccJerk-mean()-Y                                                       |
| TimeBodyAccJerkMeanZaxis          | numeric   | g       | tBodyAccJerk-mean()-Z                                                       |
| TimeBodyAccJerkStdXaxis           | numeric   | g       | tBodyAccJerk-std()-X                                                        |
| TimeBodyAccJerkStdYaxis           | numeric   | g       | tBodyAccJerk-std()-Y                                                        |
| TimeBodyAccJerkStdZaxis           | numeric   | g       | tBodyAccJerk-std()-Z                                                        |
| TimeBodyGyroMeanXaxis             | numeric   | rad/seg | tBodyGyro-mean()-X                                                          |
| TimeBodyGyroMeanYaxis             | numeric   | rad/seg | tBodyGyro-mean()-Y                                                          |
| TimeBodyGyroMeanZaxis             | numeric   | rad/seg | tBodyGyro-mean()-Z                                                          |
| TimeBodyGyroStdXaxis              | numeric   | rad/seg | tBodyGyro-std()-X                                                           |
| TimeBodyGyroStdYaxis              | numeric   | rad/seg | tBodyGyro-std()-Y                                                           |
| TimeBodyGyroStdZaxis              | numeric   | rad/seg | tBodyGyro-std()-Z                                                           |
| TimeBodyGyroJerkMeanXaxis         | numeric   | rad/seg | tBodyGyroJerk-mean()-X                                                      |
| TimeBodyGyroJerkMeanYaxis         | numeric   | rad/seg | tBodyGyroJerk-mean()-Y                                                      |
| TimeBodyGyroJerkMeanZaxis         | numeric   | rad/seg | tBodyGyroJerk-mean()-Z                                                      |
| TimeBodyGyroJerkStdXaxis          | numeric   | rad/seg | tBodyGyroJerk-std()-X                                                       |
| TimeBodyGyroJerkStdYaxis          | numeric   | rad/seg | tBodyGyroJerk-std()-Y                                                       |
| TimeBodyGyroJerkStdZaxis          | numeric   | rad/seg | tBodyGyroJerk-std()-Z                                                       |
| TimeBodyAccMagMean                | numeric   | g       | tBodyAccMag-mean()                                                          |
| TimeBodyAccMagStd                 | numeric   | g       | tBodyAccMag-std()                                                           |
| TimeGravityAccMagMean             | numeric   | g       | tGravityAccMag-mean()                                                       |
| TimeGravityAccMagStd              | numeric   | g       | tGravityAccMag-std()                                                        |
| TimeBodyAccJerkMagMean            | numeric   | g       | tBodyAccJerkMag-mean()                                                      |
| TimeBodyAccJerkMagStd             | numeric   | g       | tBodyAccJerkMag-std()                                                       |
| TimeBodyGyroMagMean               | numeric   | rad/seg | tBodyGyroMag-mean()                                                         |
| TimeBodyGyroMagStd                | numeric   | rad/seg | tBodyGyroMag-std()                                                          |
| TimeBodyGyroJerkMagMean           | numeric   | rad/seg | tBodyGyroJerkMag-mean()                                                     |
| TimeBodyGyroJerkMagStd            | numeric   | rad/seg | tBodyGyroJerkMag-std()                                                      |
| FrequencyBodyAccMeanXaxis         | numeric   | g       | fBodyAcc-mean()-X                                                           |
| FrequencyBodyAccMeanYaxis         | numeric   | g       | fBodyAcc-mean()-Y                                                           |
| FrequencyBodyAccMeanZaxis         | numeric   | g       | fBodyAcc-mean()-Z                                                           |
| FrequencyBodyAccStdXaxis          | numeric   | g       | fBodyAcc-std()-X                                                            |
| FrequencyBodyAccStdYaxis          | numeric   | g       | fBodyAcc-std()-Y                                                            |
| FrequencyBodyAccStdZaxis          | numeric   | g       | fBodyAcc-std()-Z                                                            |
| FrequencyBodyAccMeanFreqXaxis     | numeric   | g       | fBodyAcc-meanFreq()-X                                                       |
| FrequencyBodyAccMeanFreqYaxis     | numeric   | g       | fBodyAcc-meanFreq()-Y                                                       |
| FrequencyBodyAccMeanFreqZaxis     | numeric   | g       | fBodyAcc-meanFreq()-Z                                                       |
| FrequencyBodyAccJerkMeanXaxis     | numeric   | g       | fBodyAccJerk-mean()-X                                                       |
| FrequencyBodyAccJerkMeanYaxis     | numeric   | g       | fBodyAccJerk-mean()-Y                                                       |
| FrequencyBodyAccJerkMeanZaxis     | numeric   | g       | fBodyAccJerk-mean()-Z                                                       |
| FrequencyBodyAccJerkStdXaxis      | numeric   | g       | fBodyAccJerk-std()-X                                                        |
| FrequencyBodyAccJerkStdYaxis      | numeric   | g       | fBodyAccJerk-std()-Y                                                        |
| FrequencyBodyAccJerkStdZaxis      | numeric   | g       | fBodyAccJerk-std()-Z                                                        |
| FrequencyBodyAccJerkMeanFreqXaxis | numeric   | g       | fBodyAccJerk-meanFreq()-X                                                   |
| FrequencyBodyAccJerkMeanFreqYaxis | numeric   | g       | fBodyAccJerk-meanFreq()-Y                                                   |
| FrequencyBodyAccJerkMeanFreqZaxis | numeric   | g       | fBodyAccJerk-meanFreq()-Z                                                   |
| FrequencyBodyGyroMeanXaxis        | numeric   | rad/seg | fBodyGyro-mean()-X                                                          |
| FrequencyBodyGyroMeanYaxis        | numeric   | rad/seg | fBodyGyro-mean()-Y                                                          |
| FrequencyBodyGyroMeanZaxis        | numeric   | rad/seg | fBodyGyro-mean()-Z                                                          |
| FrequencyBodyGyroStdXaxis         | numeric   | rad/seg | fBodyGyro-std()-X                                                           |
| FrequencyBodyGyroStdYaxis         | numeric   | rad/seg | fBodyGyro-std()-Y                                                           |
| FrequencyBodyGyroStdZaxis         | numeric   | rad/seg | fBodyGyro-std()-Z                                                           |
| FrequencyBodyGyroMeanFreqXaxis    | numeric   | rad/seg | fBodyGyro-meanFreq()-X                                                      |
| FrequencyBodyGyroMeanFreqYaxis    | numeric   | rad/seg | fBodyGyro-meanFreq()-Y                                                      |
| FrequencyBodyGyroMeanFreqZaxis    | numeric   | rad/seg | fBodyGyro-meanFreq()-Z                                                      |
| FrequencyBodyAccMagMean           | numeric   | g       | fBodyAccMag-mean()                                                          |
| FrequencyBodyAccMagStd            | numeric   | g       | fBodyAccMag-std()                                                           |
| FrequencyBodyAccMagMeanFreq       | numeric   | g       | fBodyAccMag-meanFreq()                                                      |
| FrequencyBodyAccJerkMagMean       | numeric   | g       | fBodyBodyAccJerkMag-mean()                                                  |
| FrequencyBodyAccJerkMagStd        | numeric   | g       | fBodyBodyAccJerkMag-std()                                                   |
| FrequencyBodyAccJerkMagMeanFreq   | numeric   | g       | fBodyBodyAccJerkMag-meanFreq()                                              |
| FrequencyBodyGyroMagMean          | numeric   | rad/seg | fBodyBodyGyroMag-mean()                                                     |
| FrequencyBodyGyroMagStd           | numeric   | rad/seg | fBodyBodyGyroMag-std()                                                      |
| FrequencyBodyGyroMagMeanFreq      | numeric   | rad/seg | fBodyBodyGyroMag-meanFreq()                                                 |
| FrequencyBodyGyroJerkMagMean      | numeric   | rad/seg | fBodyBodyGyroJerkMag-mean()                                                 |
| FrequencyBodyGyroJerkMagStd       | numeric   | rad/seg | fBodyBodyGyroJerkMag-std()                                                  |
| FrequencyBodyGyroJerkMagMeanFreq  | numeric   | rad/seg | fBodyBodyGyroJerkMag-meanFreq()                                             |                                          |
 

## **TidyDataMean**
The dataset TidyData.csv has been transformed to create a second tidy data set called TidyDataMean.csv. The latter shows the mean of all the measurements grouped by subject and activity. Below follows a detailed list of all variables. 

| Column   Name                     | Data Type | Units   |
|-----------------------------------|-----------|---------|
| Subject                           | integer   | N/A     |
| Activity                          | factor    | N/A     |
| TimeBodyAccMeanXaxis              | numeric   | g       |
| TimeBodyAccMeanYaxis              | numeric   | g       |
| TimeBodyAccMeanZaxis              | numeric   | g       |
| TimeBodyAccStdXaxis               | numeric   | g       |
| TimeBodyAccStdYaxis               | numeric   | g       |
| TimeBodyAccStdZaxis               | numeric   | g       |
| TimeGravityAccMeanXaxis           | numeric   | g       |
| TimeGravityAccMeanYaxis           | numeric   | g       |
| TimeGravityAccMeanZaxis           | numeric   | g       |
| TimeGravityAccStdXaxis            | numeric   | g       |
| TimeGravityAccStdYaxis            | numeric   | g       |
| TimeGravityAccStdZaxis            | numeric   | g       |
| TimeBodyAccJerkMeanXaxis          | numeric   | g       |
| TimeBodyAccJerkMeanYaxis          | numeric   | g       |
| TimeBodyAccJerkMeanZaxis          | numeric   | g       |
| TimeBodyAccJerkStdXaxis           | numeric   | g       |
| TimeBodyAccJerkStdYaxis           | numeric   | g       |
| TimeBodyAccJerkStdZaxis           | numeric   | g       |
| TimeBodyGyroMeanXaxis             | numeric   | rad/seg |
| TimeBodyGyroMeanYaxis             | numeric   | rad/seg |
| TimeBodyGyroMeanZaxis             | numeric   | rad/seg |
| TimeBodyGyroStdXaxis              | numeric   | rad/seg |
| TimeBodyGyroStdYaxis              | numeric   | rad/seg |
| TimeBodyGyroStdZaxis              | numeric   | rad/seg |
| TimeBodyGyroJerkMeanXaxis         | numeric   | rad/seg |
| TimeBodyGyroJerkMeanYaxis         | numeric   | rad/seg |
| TimeBodyGyroJerkMeanZaxis         | numeric   | rad/seg |
| TimeBodyGyroJerkStdXaxis          | numeric   | rad/seg |
| TimeBodyGyroJerkStdYaxis          | numeric   | rad/seg |
| TimeBodyGyroJerkStdZaxis          | numeric   | rad/seg |
| TimeBodyAccMagMean                | numeric   | g       |
| TimeBodyAccMagStd                 | numeric   | g       |
| TimeGravityAccMagMean             | numeric   | g       |
| TimeGravityAccMagStd              | numeric   | g       |
| TimeBodyAccJerkMagMean            | numeric   | g       |
| TimeBodyAccJerkMagStd             | numeric   | g       |
| TimeBodyGyroMagMean               | numeric   | rad/seg |
| TimeBodyGyroMagStd                | numeric   | rad/seg |
| TimeBodyGyroJerkMagMean           | numeric   | rad/seg |
| TimeBodyGyroJerkMagStd            | numeric   | rad/seg |
| FrequencyBodyAccMeanXaxis         | numeric   | g       |
| FrequencyBodyAccMeanYaxis         | numeric   | g       |
| FrequencyBodyAccMeanZaxis         | numeric   | g       |
| FrequencyBodyAccStdXaxis          | numeric   | g       |
| FrequencyBodyAccStdYaxis          | numeric   | g       |
| FrequencyBodyAccStdZaxis          | numeric   | g       |
| FrequencyBodyAccMeanFreqXaxis     | numeric   | g       |
| FrequencyBodyAccMeanFreqYaxis     | numeric   | g       |
| FrequencyBodyAccMeanFreqZaxis     | numeric   | g       |
| FrequencyBodyAccJerkMeanXaxis     | numeric   | g       |
| FrequencyBodyAccJerkMeanYaxis     | numeric   | g       |
| FrequencyBodyAccJerkMeanZaxis     | numeric   | g       |
| FrequencyBodyAccJerkStdXaxis      | numeric   | g       |
| FrequencyBodyAccJerkStdYaxis      | numeric   | g       |
| FrequencyBodyAccJerkStdZaxis      | numeric   | g       |
| FrequencyBodyAccJerkMeanFreqXaxis | numeric   | g       |
| FrequencyBodyAccJerkMeanFreqYaxis | numeric   | g       |
| FrequencyBodyAccJerkMeanFreqZaxis | numeric   | g       |
| FrequencyBodyGyroMeanXaxis        | numeric   | rad/seg |
| FrequencyBodyGyroMeanYaxis        | numeric   | rad/seg |
| FrequencyBodyGyroMeanZaxis        | numeric   | rad/seg |
| FrequencyBodyGyroStdXaxis         | numeric   | rad/seg |
| FrequencyBodyGyroStdYaxis         | numeric   | rad/seg |
| FrequencyBodyGyroStdZaxis         | numeric   | rad/seg |
| FrequencyBodyGyroMeanFreqXaxis    | numeric   | rad/seg |
| FrequencyBodyGyroMeanFreqYaxis    | numeric   | rad/seg |
| FrequencyBodyGyroMeanFreqZaxis    | numeric   | rad/seg |
| FrequencyBodyAccMagMean           | numeric   | g       |
| FrequencyBodyAccMagStd            | numeric   | g       |
| FrequencyBodyAccMagMeanFreq       | numeric   | g       |
| FrequencyBodyAccJerkMagMean       | numeric   | g       |
| FrequencyBodyAccJerkMagStd        | numeric   | g       |
| FrequencyBodyAccJerkMagMeanFreq   | numeric   | g       |
| FrequencyBodyGyroMagMean          | numeric   | rad/seg |
| FrequencyBodyGyroMagStd           | numeric   | rad/seg |
| FrequencyBodyGyroMagMeanFreq      | numeric   | rad/seg |
| FrequencyBodyGyroJerkMagMean      | numeric   | rad/seg |
| FrequencyBodyGyroJerkMagStd       | numeric   | rad/seg |
| FrequencyBodyGyroJerkMagMeanFreq  | numeric   | rad/seg |
