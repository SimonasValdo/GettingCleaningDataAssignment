# GettingCleaningDataAssignment
Course project for Getting and Cleaning Data

First, we read data from the "train" folder (we assume that it is in the working directory).
Specifically, we read the training set and its corresponding subjects and labels. We do that by calling 
the "read.table" function.

'''
train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")
'''

We do the same with the "test" data.

test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

Now we read the features that name our data columns and activity labels for the "y_train" and "y_test" data.

features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

Having all that, we bind subjects, labels and the rest of the data by columns separately for the "test"
and "train" data, and then bind both of them by rows.
Then we can call the "colnames" function to set the column names for our merged data set using the "features" table.

test_data <- cbind(subject_test, y_test, test)
train_data <- cbind(subject_train, y_train, train)
merged_data <- rbind(test_data, train_data)
colnames(merged_data) <- c("subject", "activity", as.character(features[,2]))

Using a "for" cycle, we iterate through the activity labels column of our merged data set and replace its coded
numeric values with exact names from the "activity_labels" table.

for (k in 1:6) {
  merged_data[,2] <- replace(merged_data[,2], which(merged_data[,2] == k), as.character(activity_labels[k,2]))
}

Our goal is to extract only the measurements on the mean and standart deviation of the measurements, therefore
we look through the column names for "merged_data" using "grep" and subset our data set, leaving only the first, 
second and all other columns, that contain the phrases "mean" and "std".

mean_columns <- grep("mean", colnames(merged_data))
std_columns <- grep("std", colnames(merged_data))
subsetted_data <- merged_data[,c(1,2,sort(unique(c(mean_columns, std_columns))))]

We declare two empty data frames for upcoming work.

means_data <- data.frame()
subject_data <- data.frame()

We iterate through every subject and then through every activity in our subsetted data set to calculate the mean of
all their corresponding variables. On each iteration, we bind our data to "means_data" and also we keep a look on
the subject numbers.

for (f in 1:30){  
  for (b in as.character(activity_labels[,2])) {
    means_data <- rbind(means_data, mapply(mean, subsetted_data[which((subsetted_data[,1] == f)&(subsetted_data[,2] == b)),])[3:ncol(subsetted_data)])
    subject_data <- rbind(subject_data, f)   
  }
}

We create a list of activity labels to correspond with our new found data. Then, we can bind "subject_data",
"activity_data" and "means_data" to form the tidy set that was our goal.

activity_data <- rep(as.character(activity_labels[,2]), 30)
tidy_data <- cbind(subject_data, activity_data, means_data)

Finally, the last criteria to fulfil for our data set to be tidy is to create clearer variable names.
We apply a vector of their character values to the "tidy_data" column names.

colnames(tidy_data) <- c("Subject", "Activity", "BodyAccelerometerTimeXMean", "BodyAccelerometerTimeYMean", "BodyAccelerometerTimeZMean", "BodyAccelerometerTimeXDeviation",                 
                     "BodyAccelerometerTimeYDeviation", "BodyAccelerometerTimeZDeviation", "GravityAccelerometerTimeXMean", "GravityAccelerometerTimeYMean",                   
                     "GravityAccelerometerTimeZMean","GravityAccelerometerTimeXDeviation", "GravityAccelerometerTimeYDeviation", "GravityAccelerometerTimeZDeviation",              
                     "BodyAccelerometerJerkTimeXMean", "BodyAccelerometerJerkTimeYMean", "BodyAccelerometerJerkTimeZMean", "BodyAccelerometerJerkTimeXDeviation", "BodyAccelerometerJerkTimeYDeviation",             
                     "BodyAccelerometerJerkTimeZDeviation", "BodyGyroscopeTimeXMean", "BodyGyroscopeTimeYMean", "BodyGyroscopeTimeZMean", "BodyGyroscopeTimeXDeviation",                     
                     "BodyGyroscopeTimeYDeviation", "BodyGyroscopeTimeZDeviation", "BodyGyroscopeJerkTimeXMean", "BodyGyroscopeJerkTimeYMean", "BodyGyroscopeJerkTimeZMean",                      
                     "BodyGyroscopeJerkTimeXDeviation", "BodyGyroscopeJerkTimeYDeviation", "BodyGyroscopeJerkTimeZDeviation", "BodyAccelerometerMagnitudeTimeMean",              
                     "BodyAccelerometerMagnitudeTimeDeviation", "GravityAccelerometerMagnitudeTimeMean", "GravityAccelerometerMagnitudeTimeDeviation", "BodyAccelerometerJerkMagnitudeTimeMean",          
                     "BodyAccelerometerJerkMagnitudeTimeDeviation", "BodyGyroscopeMagnitudeTimeMean", "BodyGyroscopeMagnitudeTimeDeviation", "BodyGyroscopeJerkMagnitudeTimeMean",              
                     "BodyGyroscopeJerkMagnitudeTimeDeviation", "BodyAccelerometerFrequencyXMean", "BodyAccelerometerFrequencyYMean", "BodyAccelerometerFrequencyZMean",                 
                     "BodyAccelerometerFrequencyXDeviation", "BodyAccelerometerFrequencyYDeviation", "BodyAccelerometerFrequencyZDeviation", "BodyAccelerometerFrequencyXFrequencyMean",       
                     "BodyAccelerometerFrequencyYFrequencyMean", "BodyAccelerometerFrequencyZFrequencyMean", "BodyAccelerometerJerkFrequencyXMean", "BodyAccelerometerJerkFrequencyYMean",             
                     "BodyAccelerometerJerkFrequencyZMean", "BodyAccelerometerJerkFrequencyXDeviation", "BodyAccelerometerJerkFrequencyYDeviation", "BodyAccelerometerJerkFrequencyZDeviation",        
                     "BodyAccelerometerJerkFrequencyXFrequencyMean", "BodyAccelerometerJerkFrequencyYFrequencyMean", "BodyAccelerometerJerkFrequencyZFrequencyMean", "BodyGyroscopeFrequencyXMean",                    
                     "BodyGyroscopeFrequencyYMean", "BodyGyroscopeFrequencyZMean", "BodyGyroscopeFrequencyXDeviation", "BodyGyroscopeFrequencyYDeviation", "BodyGyroscopeFrequencyZDeviation",                
                     "BodyGyroscopeFrequencyXFrequencyMean", "BodyGyroscopeFrequencyYFrequencyMean", "BodyGyroscopeFrequencyZFrequencyMean", "BodyAcceleratorMagnitudeFrequencyMean",           
                     "BodyAcceleratorMagnitudeFrequencyDeviation", "BodyAcceleratorMagnituteFrequencyFrequencyMean", "BodyAcceleratorJerkMagnitudeFrequencyMean", "BodyAcceleratorJerkMagnitudeFrequencyDeviation",  
                     "BodyAcceleratorJerkMagnitudeFrequencyMean", "BodyGyroscopeMagnitudeFrequencyMean", "BodyGyroscopeMagnitudeFrequencyDeviation", "BodyGyroscopeMagnitudeFrequencyFrequencyMean",    
                     "BodyGyroscopeJerkMagnitudeFrequencyMean", "BodyGyroscopeJerkMagnitudeFrequencyDeviation", "BodyGyroscopeJerkMagnitudeFrequencyFrequencyMean")

We can view our tidy data set using the "View" function. 

View(tidy_data)
