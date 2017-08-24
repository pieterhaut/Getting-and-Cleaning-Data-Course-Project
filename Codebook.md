Code book for submitted tidy data set "tidy_data.txt" for the Getting and Cleaning Data Course Project
by pieterhaut

This code book includes descriptions and summary statistics for all variables in the data set "tidy_data.txt" (and values for the first variable)


measurement_variables: 		This variable contains all measurement variables which were required by the assignment, namely the measurements on the mean and standard deviation for each measurement.
								
							Factor variable
							
							Summary statistics:
							N/A
							
							Values:  [1] "tBodyAcc-mean()-X"          
									 [2] "tBodyAcc-mean()-Y"          
									 [3] "tBodyAcc-mean()-Z"          
									 [4] "tBodyAcc-std()-X"           
									 [5] "tBodyAcc-std()-Y"           
									 [6] "tBodyAcc-std()-Z"           
									 [7] "tGravityAcc-mean()-X"       
									 [8] "tGravityAcc-mean()-Y"       
									 [9] "tGravityAcc-mean()-Z"       
									[10] "tGravityAcc-std()-X"        
									[11] "tGravityAcc-std()-Y"        
									[12] "tGravityAcc-std()-Z"        
									[13] "tBodyAccJerk-mean()-X"      
									[14] "tBodyAccJerk-mean()-Y"      
									[15] "tBodyAccJerk-mean()-Z"      
									[16] "tBodyAccJerk-std()-X"       
									[17] "tBodyAccJerk-std()-Y"       
									[18] "tBodyAccJerk-std()-Z"       
									[19] "tBodyGyro-mean()-X"         
									[20] "tBodyGyro-mean()-Y"         
									[21] "tBodyGyro-mean()-Z"         
									[22] "tBodyGyro-std()-X"          
									[23] "tBodyGyro-std()-Y"          
									[24] "tBodyGyro-std()-Z"          
									[25] "tBodyGyroJerk-mean()-X"     
									[26] "tBodyGyroJerk-mean()-Y"     
									[27] "tBodyGyroJerk-mean()-Z"     
									[28] "tBodyGyroJerk-std()-X"      
									[29] "tBodyGyroJerk-std()-Y"      
									[30] "tBodyGyroJerk-std()-Z"      
									[31] "tBodyAccMag-mean()"         
									[32] "tBodyAccMag-std()"          
									[33] "tGravityAccMag-mean()"      
									[34] "tGravityAccMag-std()"       
									[35] "tBodyAccJerkMag-mean()"     
									[36] "tBodyAccJerkMag-std()"      
									[37] "tBodyGyroMag-mean()"        
									[38] "tBodyGyroMag-std()"         
									[39] "tBodyGyroJerkMag-mean()"    
									[40] "tBodyGyroJerkMag-std()"     
									[41] "fBodyAcc-mean()-X"          
									[42] "fBodyAcc-mean()-Y"          
									[43] "fBodyAcc-mean()-Z"          
									[44] "fBodyAcc-std()-X"           
									[45] "fBodyAcc-std()-Y"           
									[46] "fBodyAcc-std()-Z"           
									[47] "fBodyAccJerk-mean()-X"      
									[48] "fBodyAccJerk-mean()-Y"      
									[49] "fBodyAccJerk-mean()-Z"      
									[50] "fBodyAccJerk-std()-X"       
									[51] "fBodyAccJerk-std()-Y"       
									[52] "fBodyAccJerk-std()-Z"       
									[53] "fBodyGyro-mean()-X"         
									[54] "fBodyGyro-mean()-Y"         
									[55] "fBodyGyro-mean()-Z"         
									[56] "fBodyGyro-std()-X"          
									[57] "fBodyGyro-std()-Y"          
									[58] "fBodyGyro-std()-Z"          
									[59] "fBodyAccMag-mean()"         
									[60] "fBodyAccMag-std()"          
									[61] "fBodyBodyAccJerkMag-mean()" 
									[62] "fBodyBodyAccJerkMag-std()"  
									[63] "fBodyBodyGyroMag-mean()"    
									[64] "fBodyBodyGyroMag-std()"     
									[65] "fBodyBodyGyroJerkMag-mean()"
									[66] "fBodyBodyGyroJerkMag-std()"				

									
mean_of_LAYING				This variable contains the means of the activty LAYING for each of the measurements in the variable "measurement_variables".
							
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9848 -0.9732 -0.9595 -0.7309 -0.9328  0.6223

							
mean_of_SITTING:			This variable contains the means of the activity SITTING for each of the measurements in the variable "measurement_variables".
							
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9879 -0.9820 -0.9595 -0.7301 -0.9345  0.8797

							
mean_of_STANDING: 			This variable contains the means of the activity STANDING for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9880 -0.9730 -0.9550 -0.7315 -0.9308  0.9415 

							
mean_of_WALKING:			This variable contains the means of the activity WALKING for each of the measurements in the variable "measurement_variables".
							
							Numeric variable
							
							Summary statistics:
								Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
							-0.97761 -0.41022 -0.29698 -0.27014 -0.09651  0.93499 
							
							
mean_of_WALKING_DOWNSTAIRS:	This variable contains the means of the activity WALKING DOWNSTAIRS for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
								 Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
							-0.949749 -0.333661 -0.098589 -0.157451 -0.008357  0.926457

							
mean_of_WALKING_UPSTAIRS:	This variable contains the means of the activity WALKING UPSTAIRS for each of the measurements in the variable "measurement_variables".
							
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9482 -0.4459 -0.3170 -0.3027 -0.1241  0.8750 						
							
							
mean_of_Subject_1:			This variable contains the means of Subject 1 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9599 -0.6168 -0.5063 -0.4334 -0.3942  0.7449 
							
							
mean_of_Subject_2:			This variable contains the means of Subject 2 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9630 -0.7079 -0.5886 -0.4859 -0.4406  0.6608 
							
mean_of_Subject_3:			This variable contains the means of Subject 3 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9665 -0.7187 -0.6388 -0.5184 -0.5020  0.7078 					
							
							
mean_of_Subject_4:			This variable contains the means of Subject 4 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9626 -0.7477 -0.6459 -0.5322 -0.5280  0.7066 
							
							
mean_of_Subject_5:			This variable contains the means of Subject 5 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9646 -0.7008 -0.5800 -0.4766 -0.4267  0.6982 	
							
							
mean_of_Subject_6:			This variable contains the means of Subject 6 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9589 -0.6417 -0.5218 -0.4439 -0.3932  0.6887 
							
							
mean_of_Subject_7:			This variable contains the means of Subject 7 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9565 -0.6573 -0.5884 -0.4775 -0.4733  0.6813 
							
							
mean_of_Subject_8:			This variable contains the means of Subject 8 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9543 -0.6320 -0.5540 -0.4482 -0.3759  0.6475 
							
							
mean_of_Subject_9:			This variable contains the means of Subject 9 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9588 -0.6890 -0.6090 -0.4962 -0.5052  0.6708 
							
							
mean_of_Subject_10:			This variable contains the means of Subject 10 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9658 -0.6599 -0.5532 -0.4774 -0.4987  0.6429 
							
							
mean_of_Subject_11:			This variable contains the means of Subject 11 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9754 -0.7513 -0.6618 -0.5333 -0.5098  0.7305
							
							
mean_of_Subject_12:			This variable contains the means of Subject 12 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9674 -0.7276 -0.5952 -0.5129 -0.5307  0.6992 
							
							
mean_of_Subject_13:			This variable contains the means of Subject 13 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9673 -0.6807 -0.6205 -0.4952 -0.4703  0.7100 
							
							
mean_of_Subject_14:			This variable contains the means of Subject 14 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9424 -0.6410 -0.4978 -0.4408 -0.3074  0.6721 
							
							
mean_of_Subject_15:			This variable contains the means of Subject 15 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9687 -0.7290 -0.6249 -0.5195 -0.5031  0.6889 
							
							
mean_of_Subject_16:			This variable contains the means of Subject 16 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9712 -0.7971 -0.7224 -0.5738 -0.6083  0.7009
							
							
mean_of_Subject_17:			This variable contains the means of Subject 17 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9718 -0.7683 -0.6851 -0.5506 -0.5684  0.6989 
							
							
mean_of_Subject_18:			This variable contains the means of Subject 18 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9801 -0.8008 -0.7408 -0.5847 -0.6392  0.7169
							
							
mean_of_Subject_19:			This variable contains the means of Subject 19 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9593 -0.6593 -0.5949 -0.4837 -0.5241  0.4753
							
							
mean_of_Subject_20:			This variable contains the means of Subject 20 for each of the measurements in the variable "measurement_variables"."
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9582 -0.6481 -0.5823 -0.4714 -0.3928  0.6280 
							
							
mean_of_Subject_21:			This variable contains the means of Subject 21 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9693 -0.7704 -0.6886 -0.5575 -0.5825  0.6458 
							
							
mean_of_Subject_22:			This variable contains the means of Subject 22 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9585 -0.7135 -0.6009 -0.5078 -0.5041  0.6094 
							
							
mean_of_Subject_23:			This variable contains the means of Subject 23 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9644 -0.6232 -0.5622 -0.4618 -0.4786  0.6623
							
							
mean_of_Subject_24:			This variable contains the means of Subject 24 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9753 -0.7533 -0.6931 -0.5494 -0.5989  0.6950 
							
							
mean_of_Subject_25:			This variable contains the means of Subject 25 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9500 -0.7835 -0.7107 -0.5622 -0.5444  0.6724 
							
							
mean_of_Subject_26:			This variable contains the means of Subject 26 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9678 -0.7703 -0.6861 -0.5465 -0.6004  0.6151 
							
							
mean_of_Subject_27:			This variable contains the means of Subject 27 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9746 -0.7835 -0.6943 -0.5616 -0.6286  0.6272 
							
							
mean_of_Subject_28:			This variable contains the means of Subject 28 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9739 -0.7407 -0.6749 -0.5465 -0.5875  0.6238 
							
							
mean_of_Subject_29:			This variable contains the means of Subject 29 for each of the measurements in the variable "measurement_variables".
														
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9733 -0.7315 -0.6304 -0.5175 -0.5584  0.6831
							
							
mean_of_Subject_30:			This variable contains the means of Subject 30 for each of the measurements in the variable "measurement_variables".
							
							Numeric variable
							
							Summary statistics:
							   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
							-0.9743 -0.6785 -0.6158 -0.5007 -0.5074  0.6969 
							
							
							