All the variables are selected from the features.txt file. 
Both the x_train and x_test files are fixed width files with 561 columns.
These columns do not have any title. They are values from the variables within the features.txt file.
For my analysis, it's unnecessary to clean or modify the data in both the x_train and x_test files.
All I need to do is to attach a variable name (column name) with the corresponding names within the features.txt file.
For y_train and y_test files, things are a bit tricky.
These two files contain numerical values from 1 to 6, which correspond to the activity_lables. txt file.
It's mandatory for me to replace these numeric values with the actual activity name contained within the activity_lables file. 
Another transformation I conducted is to select the columns containing mean and standard deviation, as not all the columns are means and standard deviations.
In short, my data cleansing process involves the following steps:
1) attach the correct variable name/column name to the x_train and x_test files based on the result from features.txt
2) Transform the y_train and y_test files with the actual activity names within the activity_lables files.
3) Attach the y_train and y_test to x_train and x_test correspondingly.
4) Using rbind to combine the two files into an integrated files containing the rows from two data sets.
5) Select only the means and standard deviations by using the grep package. 
6) Group by the new data set by activity and find the averages of means and standard deviations.
7) Write this new data set into a txt file.
The final variables are:

[1] "activity" "subject" "tBodyAcc-mean()-X"
[4] "tBodyAcc-mean()-Y" "tBodyAcc-mean()-Z" "tBodyAcc-std()-X"
[7] "tBodyAcc-std()-Y" "tBodyAcc-std()-Z" "tGravityAcc-mean()-X"
[10] "tGravityAcc-mean()-Y" "tGravityAcc-mean()-Z" "tGravityAcc-std()-X"
[13] "tGravityAcc-std()-Y" "tGravityAcc-std()-Z" "tBodyAccJerk-mean()-X"
[16] "tBodyAccJerk-mean()-Y" "tBodyAccJerk-mean()-Z" "tBodyAccJerk-std()-X"
[19] "tBodyAccJerk-std()-Y" "tBodyAccJerk-std()-Z" "tBodyGyro-mean()-X"
[22] "tBodyGyro-mean()-Y" "tBodyGyro-mean()-Z" "tBodyGyro-std()-X"
[25] "tBodyGyro-std()-Y" "tBodyGyro-std()-Z" "tBodyGyroJerk-mean()-X"
[28] "tBodyGyroJerk-mean()-Y" "tBodyGyroJerk-mean()-Z" "tBodyGyroJerk-std()-X"
[31] "tBodyGyroJerk-std()-Y" "tBodyGyroJerk-std()-Z" "tBodyAccMag-mean()"
[34] "tBodyAccMag-std()" "tGravityAccMag-mean()" "tGravityAccMag-std()"
[37] "tBodyAccJerkMag-mean()" "tBodyAccJerkMag-std()" "tBodyGyroMag-mean()"
[40] "tBodyGyroMag-std()" "tBodyGyroJerkMag-mean()" "tBodyGyroJerkMag-std()"
[43] "fBodyAcc-mean()-X" "fBodyAcc-mean()-Y" "fBodyAcc-mean()-Z"
[46] "fBodyAcc-std()-X" "fBodyAcc-std()-Y" "fBodyAcc-std()-Z"
[49] "fBodyAccJerk-mean()-X" "fBodyAccJerk-mean()-Y" "fBodyAccJerk-mean()-Z"
[52] "fBodyAccJerk-std()-X" "fBodyAccJerk-std()-Y" "fBodyAccJerk-std()-Z"
[55] "fBodyGyro-mean()-X" "fBodyGyro-mean()-Y" "fBodyGyro-mean()-Z"
[58] "fBodyGyro-std()-X" "fBodyGyro-std()-Y" "fBodyGyro-std()-Z"
[61] "fBodyAccMag-mean()" "fBodyAccMag-std()" "fBodyBodyAccJerkMag-mean()" [64] "fBodyBodyAccJerkMag-std()" "fBodyBodyGyroMag-mean()" "fBodyBodyGyroMag-std()"
[67] "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"

The activity variables are: walking, walking upstairs, walking downstairs, sitting, standing, and laying.


