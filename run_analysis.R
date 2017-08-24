### Getting and Cleaning Data, Assignment

setwd("./Data/UCI HAR Dataset/")
library(dplyr)

#####################         Step 1            ############################

# load files in general map, which is the "UCI HAR Dataset" map which was downloaded as a zipfile

column_names_original <- read.table("./features.txt")
column_names_original <- column_names_original[, 2] #only keep factor variable to get a vector

# browse through column_names_original to see if everything checks out
str(column_names_original) 
unique(column_names_original) #it seems there are only 477 unique values
duplicated(column_names_original) #duplicate values are not of concern since non of them contain a mean() or std()

activity_label <- read.table("./activity_labels.txt")


## Load and manage test data first

test_data <- read.table("./test/X_test.txt")
colnames(test_data) <- column_names_original # assign original column names (extracted from the "features.txt" file) to test data

test_subject <- read.table("./test/subject_test.txt")
test_activity <- read.table("./test/y_test.txt")

test_activity$row_number <- 1:nrow(test_activity) # create variable containing row numbers in order to restore original order after merge
test_activity <- merge(test_activity, activity_label, by.x = "V1", by.y = "V1", all.x = TRUE, sort = FALSE) # merge activity numbers with the appropiate labels
test_activity <- arrange(test_activity, row_number) # apply original order so that it fits with test data
## These 3 steps above execute step 3

test_data <- cbind(test_subject, test_activity[,"V2"], group = "test", test_data) # merge by cbind() in order to bring files together into one exhaustive test data set
colnames(test_data)[c(1,2)] <- c("subject_label", "activity_label") # assign proper variable names <-- STEP 4

## The same steps apply for the train data
train_data <- read.table("./train/X_train.txt")
colnames(train_data) <- column_names_original

train_subject <- read.table("./train/subject_train.txt")
train_activity <- read.table("./train/y_train.txt")

train_activity$row_number <- 1:nrow(train_activity) 
train_activity <- merge(train_activity, activity_label, by.x = "V1", by.y = "V1", all.x = TRUE, sort = FALSE)
train_activity <- arrange(train_activity, row_number)
## These 3 steps above execute step 3

train_data <- cbind(train_subject, train_activity[,"V2"], group = "train", train_data)
colnames(train_data)[c(1,2)] <- c("subject_label", "activity_label")

## Append two datasets
data <- rbind(test_data, train_data)

#####################         Step 2            ############################

## The assignment clearly states to only extract the measurements on the mean and standard deviation for each measurement.
## I have interpreted this as only the measurements/features ending in mean(), mean()-XYZ, std() or std()-XYZ.
## Other features were weighted averages (e.g. features ending in meanFreq() ), or additional vectors which were not obtained through measuring the signals from the gyroscope and accelerometer

needed_columns <- grep("(label|mean\\(\\)|mean\\(\\)-[XYZ]|std\\(\\)|std\\(\\)-[XYZ])$", colnames(data)) # select the columns we need (as described above)

needed_columns # shows a list of the features we kept
length(needed_columns)

# Finalize the data as described so that we are up to the 4th step of the assignment
final_data <- data[, needed_columns]
sum(is.na(final_data)) # There are no NAs

final_data <- arrange(final_data, activity_label, subject_label)


#####################         Step 5        ############################

## Step 5: create a second, independent tidy data set with the average of each variable for each activity and each subject
## My interpretation is that for each (measurement) variable I have to show the average of each activity (WALKING, LAYING, etc...) and each subject (1, 2, 3, ... , 30)
## Therefore each observations will contain one measurement variable, which gives a total of 66 rows
## The number of columns will add up to 37: 1 column "measurement_variables", 6 columns with means of the activities, and 30 with means of each of the thirty subject.
## So my second, independent tidy data set with be a [66,37] matrix

variables <- names(final_data)
measurement_variables <- variables[3:length(names(final_data))] # This command selects the 66 measurement variables

#Loop over each of the measurement variables, generating the mean for each activity
for (var in measurement_variables) {

      measurements <- as.vector(t(final_data[, var])) # rewrite the needed column into a vector for the tapply function below     

      # This if/else loop creates a matrix with means of measurements per activity, where the measurement variables will be presented vertically, and the activities horizontally      
      if (var == "tBodyAcc-mean()-X") {
            var1 <- tapply(measurements, final_data$activity_label, mean)
            activity_means <- var1
      } else {
            var2 <- tapply(measurements, final_data$activity_label, mean)
            activity_means <- rbind(activity_means, var2)
      }
      
}
activity_means <- as.data.frame(activity_means)

#Loop over each of the measurement variables, generating the mean for each subject
for (var in measurement_variables) {
      
      measurements <- as.vector(t(final_data[, var])) # rewrite the needed column into a vector for the tapply function below    

      # This if/else loop creates a matrix with means of measurements per subject, where the measurement variables will be presented vertically, and the subjects horizontally      
      if (var == "tBodyAcc-mean()-X") {
            var1 <- tapply(measurements, final_data$subject_label, mean)
            subject_means <- var1
      } else {
            var2 <- tapply(measurements, final_data$subject_label, mean)
            subject_means <- rbind(subject_means, var2)
      }
      
}
subject_means <- as.data.frame(subject_means)

# Create the tidy data set
tidy_data <- cbind(measurement_variables, activity_means, subject_means)
rownames(tidy_data) <- 1:nrow(tidy_data) # Switch the rownames to numbers

# The next two loops assign proper and intuitive names to the variables of the tidy data set
for (varname in 2:7) {
      colnames(tidy_data)[varname] <- paste("mean_of_", colnames(tidy_data)[varname], sep="")
}

for (varname in 8:37) {
      colnames(tidy_data)[varname] <- paste("mean_of_Subject_", colnames(tidy_data)[varname], sep="")
}

#Create .txt file conting the tidy data set
write.table(tidy_data, "./tidy_data.txt", sep= " ", row.name = FALSE)

