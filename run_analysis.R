train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

test_data <- cbind(subject_test, y_test, test)
train_data <- cbind(subject_train, y_train, train)
merged_data <- rbind(test_data, train_data)
colnames(merged_data) <- c("subject", "activity", as.character(features[,2]))

for (k in 1:6) {
  merged_data[,2] <- replace(merged_data[,2], which(merged_data[,2] == k), as.character(activity_labels[k,2]))
}

mean_columns <- grep("mean", colnames(merged_data))
std_columns <- grep("std", colnames(merged_data))
subsetted_data <- merged_data[,c(1,2,sort(unique(c(mean_columns, std_columns))))]


means_data <- data.frame()
subject_data <- data.frame()

for (f in 1:30){  
  for (b in as.character(activity_labels[,2])) {
    means_data <- rbind(means_data, mapply(mean, subsetted_data[which((subsetted_data[,1] == f)&(subsetted_data[,2] == b)),])[3:ncol(subsetted_data)])
    subject_data <- rbind(subject_data, f)   
  }
}

activity_data <- rep(as.character(activity_labels[,2]), 30)
tidy_data <- cbind(subject_data, activity_data, means_data)

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

View(tidy_data)
