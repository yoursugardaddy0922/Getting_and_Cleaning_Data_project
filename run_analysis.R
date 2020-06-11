#download the file
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "C:/Users/123/Desktop/data/smartphone.zip")
#unzip the file
unzippedSP<- unzip("C:/Users/123/Desktop/data/smartphone.zip", exdir = "C:/Users/123/Desktop/data")
#load the data
test.subject <- read.table("C:/Users/123/Desktop/data/UCI HAR Dataset/test/subject_test.txt")
test.x <- read.table("C:/Users/123/Desktop/data/UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("C:/Users/123/Desktop/data/UCI HAR Dataset/test/y_test.txt")
train.subject <- read.table("C:/Users/123/Desktop/data/UCI HAR Dataset/train/subject_train.txt")
train.x <- read.table("C:/Users/123/Desktop/data/UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("C:/Users/123/Desktop/data/UCI HAR Dataset/train/y_train.txt")
#merging the train sets
train<-cbind(train.subject,train.x,train.y)
#merging the test sets
test<-cbind(test.subject,test.x,test.y)
#merging "test" and "train" to create a new data frame
train_test<-rbind(test,train)
#Extracts only the measurements on the mean and standard deviation for each measurement. 
##load feature to R(only keep the first two columns )
feature<-read.table("C:/Users/123/Desktop/data/UCI HAR Dataset/features.txt",stringsAsFactors = FALSE)[,2]
##extracting the mean and standard deviation.
feature1<-grep("mean\\(\\)|std\\(\\)",feature)
overall<-train_test[,c(1,2,feature1+2)]
colnames(overall) <- c("subject", "activity", feature[feature1])

#Using descriptive activity names to name the activities in the data set
##load the activity data to R
activity<-read.table("C:/Users/123/Desktop/data/UCI HAR Dataset/activity_labels.txt")
#replace activity within overall with activity names
overall$activity<-factor(overall$activity, levels = activity[,1], labels = activity[,2])
#replacing the data sets with descriptive names
names(overall) <- gsub("\\()", "", names(overall))
names(overall) <- gsub("^t", "time", names(overall))
names(overall) <- gsub("^f", "frequence", names(overall))
names(overall) <- gsub("-mean", "Mean", names(overall))
names(overall) <- gsub("-std", "Std", names(overall))
#creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
second<-group_by(overall,subject,activity)
summarise_each(second,funs(mean))

write.table(second,"C:/Users/123/Desktop/GACD/second.txt",row.names = FALSE)
