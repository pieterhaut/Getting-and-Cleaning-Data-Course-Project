README file for submitted tidy data set "tidy_data.txt" for the Getting and Cleaning Data Course Project
by pieterhaut

This README file contains a description of the steps which where taken to create the tidy data set which was required for the Getting and Cleaning Data Course Project.
In this files I will also try to explain my decision and interpretations on the assignment.
The script "run_analysis.R" does not exactly follow the steps as described in the assignment, but I have indicated which commands execute which steps in the comments of the script.

To check whether the data is tidy I highly commend importing the data set into R with the command read.table(). MAKE SURE YOU SPECIFY header = TRUE


To create the tidy data set, the next original files were used:

General files
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.

Train specific files
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Test specific files
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 



DESCRIPTION OF STEPS

- Step 1: Merge the training and the test sets to create one data set.

	1) 	First all the general (i.e. not test/train specific) files were imported into R. 
		Then I checked whether the "features.txt" file contains any duplicates.
		This was the case, but the duplicates were irrelevant for the tidy data set (as I will explain later on).
		
	2)	Next I imported the files in the test directory (i.e. the test specific files).
		Since the "features.txt" file had the same length as the width of the "X_test.txt" file, I used the features as column names.
		Then I merged the "y_test.txt" file with the "activity_labels.txt" in order to match the activity number with the activity lables (THIS ESSENTIALLY IS STEP 3!!).
		This merged data frame was merged with the "subject_test.txt" and "X_test.txt" file (is this order), and appropiate variable labels were given (THIS ESSENTIALLY IS STEP 4!!).
		The result was a merged data frame which was called "test_data".
			
	3)	The exact same steps were used for the files in the train directory, generating a "train_data" data frame.
		
	4)	Then "test_data" and "train_data" were appended into one data frame called "data", finishing Step 1.
	
	
- Step 2: Extract only the measures on the mean and standard deviation for each measurement.

	The assignment clearly states to only extract the measurements on the mean and standard deviation for each measurement.
	I have interpreted this as only the measurements/features ending in mean(), mean()-XYZ, std() or std()-XYZ.
	Other features which included 'mean' in any way were weighted averages (e.g. features ending in meanFreq() ), or additional vectors which were not obtained through measuring the signals from the gyroscope and accelerometer

	1)	From the column names of the data frama "data" the relevant columns (as described above) were extracted with the grep function, resulting in 68 variables (activity label, subject label & 66 measurement variables).

	2) 	A new data frame "final_data" was created, which included only the relevant rows.
		Next I checked whether the "final_data" data set contained any NAs, whicih was not the case.
		Lastly the "final_data" data frame was sorted by activity label (first) and subject label/number (second)
	

- Step 3: Use descriptive activity names to name the activities in the data set.

	This step was already performed in Step 1, as described in line 36


- Step 4: Appropiately label the data set with descriptive variable names.

	This step was already performed in Step 1, as described in line 37


- Step 5: From the data set in Step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

	My interpretation is that for each (measurement) variable I have to show the average of each activity (WALKING, LAYING, etc...) and each subject (1, 2, 3, ... , 30) independent from each other (i.e. not the mean of Subject 1 performing the activity LAYING).
	Therefore each observations will contain one measurement variable, which gives a total of 66 rows (since I have extracted 66 measurement features).
	The number of columns will add up to 37: 1 column "measurement_variables", 6 columns with means of each of the six the activities, and 30 with means of each of the thirty subjects.
	So my second, independent tidy data set with be a [66,37] data frame.
	I have considered transposing my tidy data set, making it a [36,67] data frame. However I prefer this presentation because for each observations it clearly gives an overview of the measurement variable and its mean for each activity and subject.
	
	1)	First I created a variable containing all the measurement variables.
		Then I used this variable to loop over twice: once to calculate the mean of each measurement variable for each activity, and once for each subject.
		The results were recorded in data frames.
		
	2) 	Next I combined the results into a new data frame called "tidy_data".
		Rather than using the measurement variables as row names, I included these in a separate variable, such that the row names just equal the number of the observation.
		Two more loops were used to give the tidy data set intuitive variable labels
		
	3) 	Using the write.table() function a new file called "tidy_data.txt", which contains the final tidy data set to be submitted to Coursera.
		
