#Load necessary library
library(dplyr)
# Read the data, assuming all the data are stored in the input folder
X_train <- read.table('./input/train/X_train.txt')
X_test <- read.table('./input/test/X_test.txt')
y_train <- read.table('./input/train/y_train.txt')
y_test <- read.table('./input/test/y_test.txt')
subject_train <- read.table('./input/train/subject_train.txt')
subject_test <- read.table('./input/test/subject_test.txt')
features <- read.table('./input/features.txt')
act_names <- read.table('./input/activity_labels.txt')
# Combine subject id
X_train <- cbind(X_train,subject_train)
X_test <- cbind(X_test,subject_test)
# Combine training and test set
X<-rbind(X_train,X_test)
# extract measurement of mean and standard deviation
extracted_X<-X[,grepl('mean|std',features$V2)]
extracted<-as.character(features[grepl('mean|std',features$V2),2])
# clean the feature name 
extracted <- gsub("(\\(\\))|-",'',extracted)
new_X<-setNames(extracted_X,c(extracted,'subject'))


y<-rbind(y_train,y_test)
#Use join instead of merge here becuase we want to preseve the order so that we
#can combine with X
y_merged <- left_join(y,act_names,by='V1')
y_merged<-rename(y_merged,activity=V2)
total <- cbind(new_X,activity=y_merged$activity)
head(total)

#Use pipeline to create the tidy dataset
tidy<-total%>%
        group_by(subject,activity)%>%
        summarize_each(funs(mean))
head(tidy)
write.table(tidy,'tidy.txt',row.names = F)
