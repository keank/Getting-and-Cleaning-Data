# Getting-and-Cleaning-Data
##Getting and Cleaning Data Course Assignment

This is my Course Project submission for the Getting and Cleaning Data course. 

###Files
* An R script, run_analysis.R, which:
  1. Calls and loads the required packages
  2. Imports the data from the working directory (as instructed, the script will only work if the Samsung data is in the working directory, saved as "UCI HAR Dataset".)
  3. Merges the training and tests datasets
  4. Calls the column and activity labels
  5. Binds the activity names and the required variables together
  6. Labels the dataset with information on the subject
  7. Performs some data integrity checks to ensure the ordering of the data is set (have left this code in as comments)
  8. Creates a tidy dataset to show the mean value of each variable for each subject and activity combination 
  
*  This README file
*  A Codebook

###Loading Tidy Data Set
To load tidydat.txt in R, please use read.table(header=TRUE).

###Tidiness of Dataset
The dataset, tidydat.txt, is tidy as per the discussion in https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/. The final form is wide and gives the average of each variable for each combination of the identifiers *subject* and *activity*.
