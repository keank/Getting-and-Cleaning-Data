#Code Book
This code book explains the variable names found in the script and the script output.

##Variable Name: subject

This identifies the subject that was being measured for that observation
There were 30 subjects and each were labelled by a number from 1 to 30. 

##Variable Name: activity

This identifies the activity the subject was performing for that observation. The activities (with the variable names given in brackets) are:

1. Walking (WALKING)
2. Walking Upstairs (WALKING UPSTAIRS)
3. Walking Downstairs (WALKING DOWNSTAIRS)
4. Sitting (SITTING)
5. Standing (STANDING)
6. Laying (LAYING)

## Measurements
Only the mean and standard deviation (std) signals were extracted. The first term in the signal names identifies the signal. The second term identifies
if it is a mean or standard deviation measurement. The third term gives the direction of measurement, if applicable, on the X, Y and Z plane. 
###Frequency domain signals
* fBodyAcc mean X
* fBodyAcc mean Y
* fBodyAcc mean Z
* fBodyAcc std X
* fBodyAcc std Y
* fBodyAcc std Z
* fBodyAccJerk mean X
* fBodyAccJerk mean Y
* fBodyAccJerk mean Z
* fBodyAccJerk std X
* fBodyAccJerk std Y
* fBodyAccJerk std Z
* fBodyAccMag mean
* fBodyAccMag std
* fBodyBodyAccJerkMag mean
* fBodyBodyAccJerkMag std
* fBodyBodyGyroJerkMag mean
* fBodyBodyGyroJerkMag std
* fBodyBodyGyroMag mean
* fBodyBodyGyroMag std
* fBodyGyro mean X
* fBodyGyro mean Y
* fBodyGyro mean Z
* fBodyGyro std X
* fBodyGyro std Y
* fBodyGyro std Z

###Time domain signals
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 

* tBodyAcc mean X
* tBodyAcc mean Y
* tBodyAcc mean Z
* tBodyAcc std X
* tBodyAcc std Y
* tBodyAcc std Z
* tBodyAccJerk mean X
* tBodyAccJerk mean Y
* tBodyAccJerk mean Z
* tBodyAccJerk std X
* tBodyAccJerk std Y
* tBodyAccJerk std Z
* tBodyAccJerkMag mean
* tBodyAccJerkMag std
* tBodyAccMag mean
* tBodyAccMag std
* tBodyGyro mean X
* tBodyGyro mean Y
* tBodyGyro mean Z
* tBodyGyro std X
* tBodyGyro std Y
* tBodyGyro std Z
* tBodyGyroJerk mean X
* tBodyGyroJerk mean Y
* tBodyGyroJerk mean Z
* tBodyGyroJerk std X
* tBodyGyroJerk std Y
* tBodyGyroJerk std Z
* tBodyGyroJerkMag mean
* tBodyGyroJerkMag std
* tBodyGyroMag mean
* tBodyGyroMag std
* tGravityAcc mean X
* tGravityAcc mean Y
* tGravityAcc mean Z
* tGravityAcc std X
* tGravityAcc std Y
* tGravityAcc std Z
* tGravityAccMag mean
* tGravityAccMag st
