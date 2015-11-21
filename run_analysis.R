## Load packages
library(reshape2)

## Download the file (if it doesn't already exist) and unzip it
if(!file.exists("FUCI%20HAR%20Dataset.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","FUCI%20HAR%20Dataset.zip")
}
unzip("FUCI%20HAR%20Dataset.zip")

## Load the training and test data into R (X, y and subject)
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")

## Load the labels for the features and activities
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")
features<-read.table("UCI HAR Dataset/features.txt")

## Label the datasets
colnames(X_test)<-features$V2
colnames(X_train)<-features$V2
colnames(subject_test)<-"subject"
colnames(subject_train)<-"subject"
colnames(y_test)<-"activity"
colnames(y_train)<-"activity"
colnames(activity_labels)<-c("activity","activity.full")

## Add activity.full to y
y_test<-join(y_test,activity_labels,by='activity')
y_train<-join(y_train,activity_labels,by='activity')

## Merge subject, activity and data for training and test data
train_data<-cbind(subject_train,y_train,X_train)
test_data<-cbind(subject_test,y_test,X_test)

## Merge training and test data
data<-rbind(train_data,test_data)

## Create a dataset with subject, activity and only the mean and std related variables
dataMeanStd<-data[,grep(paste(c("subject","activity","activity.full","mean","std"),collapse="|"),colnames(data), value=TRUE)]

## Create a new table with the mean of each mean and std variable for each
## subject / activity combination.
measure<-names(dataMeanStd[,4:82])
dataMelt<-reshape2::melt(dataMeanStd,id.vars=c("subject","activity.full"),measure.vars=measure)
dataMeansBySubjectActivity<-reshape2::dcast(dataMelt, subject + activity.full ~ variable, value.var="value",fun.aggregate=mean)

## Write dataMeanStd and dataMeansBySubjectActivity to text files
write.table(dataMeanStd,"dataMeanStd.txt",row.names = FALSE)
write.table(dataMeansBySubjectActivity,"dataMeansBySubjectActivity.txt",row.names=FALSE)