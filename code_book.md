# GettingCleaningDataAssignment
Course project for Getting and Cleaning Data

# Project description
This project deals with a data set that contains information about a group of 30 volunteers, each performing 6 activities
while wearing a smartphone. The data has been randomly partitioned into two data sets, both containing 561 variables that
include things like the body and gravity acceleration of the volunteers and more. Our goal is to merge the two data
sets (called "train" and "test"), extract only the measurements on the mean and standard deviation for each measurement,
descriptively and appropriately name the variables and their values and form a tidy data set containing the mean values
of each variable for each activity and each subject.

# Data processing
The data can be collected from "X_train.txt", "y_train.txt", "subject_train.txt", "X_test.txt", "y_test.txt",
"subject_test.txt", "features.txt" and "activity_labels.txt" files in the given folders. After reading it into tables,
to successfully merge it into one data set, we need to bind "X_train", "y_train" and "subject_train" by columns
(the same goes for the "test" data) and then bind these two data sets by rows. Then we can add the "features.txt" and
"activity_labels.txt" to form a more coherent data set that is ready for work.

# Creating the tidy data file
The details on using the "run_analysis.R" script can be found in the README.md file.

https://github.com/SimonasValdo/GettingCleaningDataAssignment/blob/master/README.md

# Variable descriptions for the tidy data set
[1] "Subject" - integer class variable. It has values from 1 to 30 and marks volunteers for the aforementioned project.

 [2] "Activity" - factor class variable. It's values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
 STANDING, LAYING and it notes the activity of a certain subject.
 
 Note: All of the following variables are numeric and their values are from the interval [-1,1].
 
 [3] "BodyAccelerometerTimeXMean" - the mean of the body acceleration time domain signal's X axis.
 
 [4] "BodyAccelerometerTimeYMean" - the mean of the body acceleration time domain signal's Y axis.  
 
 [5] "BodyAccelerometerTimeZMean" - the mean of the body acceleration time domain signal's Z axis. 
 
 [6] "BodyAccelerometerTimeXDeviation" - the standard deviation of the body acceleration time domain signal's X axis. 
 
 [7] "BodyAccelerometerTimeYDeviation" - the standard deviation of the body acceleration time domain signal's Y axis.
 
 [8] "BodyAccelerometerTimeZDeviation" - the standard deviation of the body acceleration time domain signal's Z axis. 
 
 [9] "GravityAccelerometerTimeXMean" - the mean of the gravity acceleration time domain signal's X axis.
 
[10] "GravityAccelerometerTimeYMean" - the mean of the gravity acceleration time domain signal's X axis.

[11] "GravityAccelerometerTimeZMean" - the mean of the gravity acceleration time domain signal's X axis. 

[12] "GravityAccelerometerTimeXDeviation" - the standard deviation of the gravity acceleration time domain signal's X axis.     

[13] "GravityAccelerometerTimeYDeviation" - the standard deviation of the gravity acceleration time domain signal's Y axis.    

[14] "GravityAccelerometerTimeZDeviation" - the standard deviation of the gravity acceleration time domain signal's Z axis.   

[15] "BodyAccelerometerJerkTimeXMean" - the mean of the body acceleration Jerk time domain signal's X axis. 

[16] "BodyAccelerometerJerkTimeYMean" - the mean of the body acceleration Jerk time domain signal's Y axis. 

[17] "BodyAccelerometerJerkTimeZMean" - the mean of the body acceleration Jerk time domain signal's Z axis. 

[18] "BodyAccelerometerJerkTimeXDeviation" - the standard deviation of the body acceleration Jerk time domain signal's X axis. 

[19] "BodyAccelerometerJerkTimeYDeviation" - the standard deviation of the body acceleration Jerk time domain signal's Y axis. 

[20] "BodyAccelerometerJerkTimeZDeviation" - the standard deviation of the body acceleration Jerk time domain signal's Z axis. 

[21] "BodyGyroscopeTimeXMean" - the mean of the body gyroscope time domain signal's X axis.

[22] "BodyGyroscopeTimeYMean" - the mean of the body gyroscope time domain signal's Y axis. 

[23] "BodyGyroscopeTimeZMean" - the mean of the body gyroscope time domain signal's Z axis. 

[24] "BodyGyroscopeTimeXDeviation" - the standard deviation of the body gyroscope time domain signal's X axis.

[25] "BodyGyroscopeTimeYDeviation" - the standard deviation of the body gyroscope time domain signal's Y axis. 

[26] "BodyGyroscopeTimeZDeviation" - the standard deviation of the body gyroscope time domain signal's Z axis.

[27] "BodyGyroscopeJerkTimeXMean" - the mean of the body gyroscope Jerk time domain signal's X axis.    

[28] "BodyGyroscopeJerkTimeYMean" - the mean of the body gyroscope Jerk time domain signal's Y axis.   

[29] "BodyGyroscopeJerkTimeZMean" - the mean of the body gyroscope Jerk time domain signal's Z axis. 

[30] "BodyGyroscopeJerkTimeXDeviation" - the standard deviation of the body gyroscope Jerk time domain signal's X axis.

[31] "BodyGyroscopeJerkTimeYDeviation" - the standard deviation of the body gyroscope Jerk time domain signal's Y axis. 

[32] "BodyGyroscopeJerkTimeZDeviation" - the standard deviation of the body gyroscope Jerk time domain signal's Z axis.           

[33] "BodyAccelerometerMagnitudeTimeMean" - the mean of the body acceleration time domain signal's magnitude.      

[34] "BodyAccelerometerMagnitudeTimeDeviation" - the standard deviation of the body acceleration time domain signal's magnitude.          

[35] "GravityAccelerometerMagnitudeTimeMean" - the mean of the gravity acceleration time domain signal's magnitude. 

[36] "GravityAccelerometerMagnitudeTimeDeviation" - the standard deviation of the gravity acceleration time domain signal's magnitude. 

[37] "BodyAccelerometerJerkMagnitudeTimeMean" - the mean of the body acceleration Jerk time domain signal's magnitude.  

[38] "BodyAccelerometerJerkMagnitudeTimeDeviation" - the standard deviation of the body acceleration Jerk time domain signal's magnitude.

[39] "BodyGyroscopeMagnitudeTimeMean" - the mean of the body gyroscope time domain signal's magnitude.   

[40] "BodyGyroscopeMagnitudeTimeDeviation" - the standard deviation of the body gyroscope time domain signal's standard deviation. 

[41] "BodyGyroscopeJerkMagnitudeTimeMean" - the mean of the body gyroscope Jerk time domain signal's magnitude.     

[42] "BodyGyroscopeJerkMagnitudeTimeDeviation" - the standard deviation of the body gyroscope Jerk time domain signal's standard deviation. 

[43] "BodyAccelerometerFrequencyXMean" - the mean of the body acceleration frequency domain signal's X axis.  

[44] "BodyAccelerometerFrequencyYMean" - the mean of the body acceleration frequency domain signal's Y axis.   

[45] "BodyAccelerometerFrequencyZMean" - the mean of the body acceleration frequency domain signal's Z axis. 

[46] "BodyAccelerometerFrequencyXDeviation" - the standard deviation of the body acceleration frequency domain signal's X axis.  

[47] "BodyAccelerometerFrequencyYDeviation" - the standard deviation of the body acceleration frequency domain signal's Y axis. 

[48] "BodyAccelerometerFrequencyZDeviation" - the standard deviation of the body acceleration frequency domain signal's Z axis.    

[49] "BodyAccelerometerFrequencyXFrequencyMean" - the frequency mean of the body acceleration frequency domain signal's X axis.  

[50] "BodyAccelerometerFrequencyYFrequencyMean" - the frequency mean of the body acceleration frequency domain signal's Y axis. 

[51] "BodyAccelerometerFrequencyZFrequencyMean" - the frequency mean of the body acceleration frequency domain signal's Z axis. 

[52] "BodyAccelerometerJerkFrequencyXMean" - the mean of the body acceleration Jerk frequency domain signal's X axis. 

[53] "BodyAccelerometerJerkFrequencyYMean" - the mean of the body acceleration Jerk frequency domain signal's Y axis. 

[54] "BodyAccelerometerJerkFrequencyZMean" - the mean of the body acceleration Jerk frequency domain signal's Z axis. 

[55] "BodyAccelerometerJerkFrequencyXDeviation" - the standard deviation of the body acceleration Jerk frequency domain signal's X axis.  

[56] "BodyAccelerometerJerkFrequencyYDeviation" - the standard deviation of the body acceleration Jerk frequency domain signal's Y axis.

[57] "BodyAccelerometerJerkFrequencyZDeviation" - the standard deviation of the body acceleration Jerk frequency domain signal's Z axis.

[58] "BodyAccelerometerJerkFrequencyXFrequencyMean" - the frequency mean of the body acceleration Jerk frequency domain signal's X axis.

[59] "BodyAccelerometerJerkFrequencyYFrequencyMean" - the frequency mean of the body acceleration Jerk frequency domain signal's Y axis. 

[60] "BodyAccelerometerJerkFrequencyZFrequencyMean" - the frequency mean of the body acceleration Jerk frequency domain signal's Z axis.

[61] "BodyGyroscopeFrequencyXMean" - the mean of the body acceleration frequency domain signal's X axis.  

[62] "BodyGyroscopeFrequencyYMean" - the mean of the body acceleration frequency domain signal's Y axis.  

[63] "BodyGyroscopeFrequencyZMean" - the mean of the body acceleration frequency domain signal's Z axis.  

[64] "BodyGyroscopeFrequencyXDeviation" - the standard deviation of the body acceleration frequency domain signal's X axis.  

[65] "BodyGyroscopeFrequencyYDeviation" - the standard deviation of the body acceleration frequency domain signal's Y axis.  

[66] "BodyGyroscopeFrequencyZDeviation" - the standard deviation of the body acceleration frequency domain signal's Z axis.

[67] "BodyGyroscopeFrequencyXFrequencyMean" - the frequency mean of the body gyroscope frequency domain signal's X axis.   

[68] "BodyGyroscopeFrequencyYFrequencyMean" - the frequency mean of the body gyroscope frequency domain signal's Y axis. 

[69] "BodyGyroscopeFrequencyZFrequencyMean" - the frequency mean of the body gyroscope frequency domain signal's Z axis.

[70] "BodyAcceleratorMagnitudeFrequencyMean" - the mean of the body acceleration frequency domain signal's magnitude. 

[71] "BodyAcceleratorMagnitudeFrequencyDeviation" - the standard deviation of the body acceleration frequency domain signal's magnitude.

[72] "BodyAcceleratorMagnituteFrequencyFrequencyMean" - the frequency mean of the body acceleration frequency domain signal's magnitude. 

[73] "BodyAcceleratorJerkMagnitudeFrequencyMean" - the mean of the body acceleration Jerk frequency domain signal's magnitude.  

[74] "BodyAcceleratorJerkMagnitudeFrequencyDeviation" - the standard deviation of the body acceleration Jerk frequency domain signal's magnitude. 

[75] "BodyAcceleratorJerkMagnitudeFrequencyMean" - the frequency mean of the body acceleration Jerk frequency domain signal's magnitude. 

[76] "BodyGyroscopeMagnitudeFrequencyMean" - the mean of the body acceleration frequency domain signal's magnitude.

[77] "BodyGyroscopeMagnitudeFrequencyDeviation" - the standard deviation of the body acceleration frequency domain signal's magnitude.

[78] "BodyGyroscopeMagnitudeFrequencyFrequencyMean" - the frequency mean of the body acceleration frequency domain signal's magnitude.

[79] "BodyGyroscopeJerkMagnitudeFrequencyMean" - the mean of the body gyroscope Jerk frequency domain signal's magnitude.   

[80] "BodyGyroscopeJerkMagnitudeFrequencyDeviation" - the standard deviation of the body gyroscope Jerk frequency domain signal's magnitude.  

[81] "BodyGyroscopeJerkMagnitudeFrequencyFrequencyMean" - the frequency mean of the body gyroscope Jerk frequency domain signal's magnitude.   
