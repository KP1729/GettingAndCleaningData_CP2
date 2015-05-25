# GettingAndCleaningData_CP2
Getting And Cleaning Data -- Course Project 2

## How the code works

### Step-1
I read in the necessary files like the features.txt; activity_labels.tx files. I assign the data read from features.txt as column names to X_train.txt & X_test.txt files with a bit of manipulation of the values read in from features.txt
Also I read the individual train (subject_train.txt, y_Train.txt, X_train.txt) & test files (subject_test.txt, y_test.txt, X_test.txt) 
I combine the train files on a column basis; similarly the test files.  I then concatenate the train & test files to get the master file.

### Step-2
Now select the variables that contain "mean()" / "std()".  I do it separately and then combine on a column basis

### Step-3
Already merged the y_train/y_test with activity_labels.txt file to name the activities in the dataset.

### Step-4
The variable names have been assigned the values from features.txt file with a bit of manipulation (remove punctuation symbols and replaced them with underscore(_))

### Step-5
Using Lapply, calculate the average of all the numeric variables by subject and activity.

### Step- 6
Write the above dataset to a text file.

## Codebook

[1] "subject"    - Gives the unique ID of a particular test subject
[2] "Activity"   - Activity being measured                        
[3] "tBodyAcc_mean___X"  - Mean of the measurement "tBodyAcc_mean" by subject & Activity  
[4] "tBodyAcc_mean___Y"                   
[5] "tBodyAcc_mean___Z"    
[6] "tGravityAcc_mean___X"                
[7] "tGravityAcc_mean___Y"    
[8] "tGravityAcc_mean___Z"                
[9] "tBodyAccJerk_mean___X"    
[10]"tBodyAccJerk_mean___Y"               
[11]"tBodyAccJerk_mean___Z"    
[12]"tBodyGyro_mean___X"                  
[13]"tBodyGyro_mean___Y"        
[14]"tBodyGyro_mean___Z"                  
[15] "tBodyGyroJerk_mean___X"    
[16]"tBodyGyroJerk_mean___Y"              
[17]"tBodyGyroJerk_mean___Z"    
[18]"tBodyAccMag_mean__"                  
[19] "tGravityAccMag_mean__"    
[20]"tBodyAccJerkMag_mean__"              
[21] "tBodyGyroMag_mean__"     
[21]"tBodyGyroJerkMag_mean__"             
[23] "fBodyAcc_mean___X"      
[22] "fBodyAcc_mean___Y"                   
[25] "fBodyAcc_mean___Z"       
[26]"fBodyAccJerk_mean___X"               
[27] "fBodyAccJerk_mean___Y"   
[28]"fBodyAccJerk_mean___Z"               
[29] "fBodyGyro_mean___X"      
[30]"fBodyGyro_mean___Y"                  
[31] "fBodyGyro_mean___Z"      
[32]"fBodyAccMag_mean__"                  
[33] "fBodyBodyAccJerkMag_mean__"  
[34]"fBodyBodyGyroMag_mean__"             
[35] "fBodyBodyGyroJerkMag_mean__"  
[36]"angle_tBodyAccJerkMean__gravityMean_"
[37] "tBodyAcc_std___X"        
[38]"tBodyAcc_std___Y"                    
[39] "tBodyAcc_std___Z"         
[40]"tGravityAcc_std___X"                 
[41] "tGravityAcc_std___Y"       
[42]"tGravityAcc_std___Z"                 
[43] "tBodyAccJerk_std___X"      
[44]"tBodyAccJerk_std___Y"                
[45] "tBodyAccJerk_std___Z"      
[46]"tBodyGyro_std___X"                   
[47] "tBodyGyro_std___Y"          
[48]"tBodyGyro_std___Z"                   
[49]"tBodyGyroJerk_std___X"      
[50]"tBodyGyroJerk_std___Y"               
[51] "tBodyGyroJerk_std___Z"      
[52]"tBodyAccMag_std__"                   
[53] "tGravityAccMag_std__"       
[54] "tBodyAccJerkMag_std__"               
[55] "tBodyGyroMag_std__"         
[56]"tBodyGyroJerkMag_std__"              
[57] "fBodyAcc_std___X"            
[58]"fBodyAcc_std___Y"                    
[59] "fBodyAcc_std___Z"            
[60]"fBodyAccJerk_std___X"                
[61] "fBodyAccJerk_std___Y"        
[62]"fBodyAccJerk_std___Z"                
[63] "fBodyGyro_std___X"           
[64]"fBodyGyro_std___Y"                   
[65] "fBodyGyro_std___Z"            
[66]"fBodyAccMag_std__"                   
[67] "fBodyBodyAccJerkMag_std__"    
[68]"fBodyBodyGyroMag_std__"              
[69] "fBodyBodyGyroJerkMag_std__"          