# CodeBook of data file tidy.txt
Yuyang Lao

# Original data 
## Human Activity Recognition Using Smartphones Dataset Version 1.0
This data set is the wearable device data collected from the accelerometers from the Samsung Galaxy S smartphone. A [full description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) is available at the site where the data was obtained. The data can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

# Operation

From the original data to the tidy.txt, we perform the following operation:

1. Read the all the related data.

2. Combine the training data with the testing data.

3. Extract the measurement of mean and standard deviation, i.e. to extract any measurement with 'mean' and 'std' in their names.

4. Change the feature name to be clean and readable. More specifically, I delete the parentesses () and - symbol. I also add two feature names 'subject' and 'activity' to denote the different group.

5. Group the data based on subject and activity, and then calculate the average of the measurement. Then save the result into a new file called 'tidy.txt'

# Variable

* subject: the subject id number of this set of data. The range goes from 1 to 30

* activity: the activity name of this set of data. Including:  LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS

* These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. The average value of the following quantity is included in the file:

    * tBodyAcc-XYZ
    * tGravityAcc-XYZ
    * tBodyAccJerk-XYZ
    * tBodyGyro-XYZ
    * tBodyGyroJerk-XYZ
    * tBodyAccMag
    * tGravityAccMag
    * tBodyAccJerkMag
    * tBodyGyroMag
    * tBodyGyroJerkMag
    * fBodyAcc-XYZ
    * fBodyAccJerk-XYZ
    * fBodyGyro-XYZ
    * fBodyAccMag
    * fBodyAccJerkMag
    * fBodyGyroMag
    * fBodyGyroJerkMag