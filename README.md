# **ReadMe**
This repository contains the materials submitted as part of the Getting and Cleaning Data course delivered by John Hopkins University on Coursera. 
The goal of the assignment is to demonstrate skills in collecting, working with, and cleaning a data set by preparing a tidy data set that can be used for later analysis. 
The work presented here is based on data collected from smart phone the accelerometers. A full description is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
and the data set can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The content of the repository can be summarised as follows:
* run_analysis.R: A R script were the code used to tidy the data is provided together with descriptive comments to guide the reader through the process
* CodeBook.md: A code book describing the tidied data set and its relationship to the original data is also provided in CodeBook.md
* TidyData.csv: A tidy data set created by the run_analysis.R
* TidyDataMean.csv: A second tidy data set containing the mean of each variable grouped according to Subject (person) and Activity conducted


## **Assumptions and notes**
* It is assumed that the data set has already been downloaded and unzipped in the users working directory
* As specified in the assignment instructions; only variables containing the words mean() and std() in their feature names are used and hence the data provided within the “Inertial Signals” directory has been omitted
*  The final TidyDataMean file is constructed with functions provided in the reshape2 R-package created by Hadley Wickham, which therefore is required in order to run the code
