# Wearable data cleaning
Yuyang Lao

This is the final project of Coursera Course Getting and cleaning data.

# Overview of the data
This data set is the wearable device data collected from the accelerometers from the Samsung Galaxy S smartphone. A [full description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) is available at the site where the data was obtained. The data can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

# How it works?
First you need to download the run_analysis.R file into your working directory. Also in the directory should be a folder named 'input' with all the necessary data inside. When you run the script, it will do the following:
1. Read the all the related data.
2. Combine the training data with the testing data.
3. Extract the measurement of mean and standard deviation.
4. Change the feature name to be clean and readable.
5. Group the data based on subject and activity, and then calculate the average of the measurement. Then save the result into a new file called 'tidy.txt'

# More information
About the variable in the 'tidy.txt' file, please see the Codebook.md.