   Firstly, I download the zipped file from the URL 
   "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and named it "smartphone". Then I unzipped the file using unzip command and named the unzipped file unzippedSP. After loading the unzipped file to R, there are different various data frames contained in the unzipped file "unzippedSP". since I need those data frames to merge into a new data frame, I'll talk about them specificly in the follwing paragraph
   test.subject: derived from "C:/Users/123/Desktop/data/UCI HAR Dataset/test/subject_test.txt",There are 2947 observations of 1 variable  and this table shows 9 of the 30 volunteers being observed.
   
   test.x: derived from "C:/Users/123/Desktop/data/UCI HAR Dataset/test/X_test.txt",there are 2947 observations of 561 variables and this table expresses the recorded features test data
   
   test.y: derived from "C:/Users/123/Desktop/data/UCI HAR Dataset/test/y_test.txt", there are 2947 observations of 1 variable. This table describes the test data of activites' code labels.
   
   train.subject: derived from "C:/Users/123/Desktop/data/UCI HAR Dataset/train/subject_train.txt", there are 7352 observations of 1 variabke. This data frame collects training data about another 21 volunteers in the study.
   
   train.x:derived from "C:/Users/123/Desktop/data/UCI HAR Dataset/train/X_train.txt", there are 7352 observations of 561 variables. This table expresses recorded features training data.
   
   train.y: derived from "C:/Users/123/Desktop/data/UCI HAR Dataset/train/y_train.txt", there are 7352 observations of 1 variable. This data frame shows the training data of activities' code labels.
   
After loading the previous tables to R, I start to merge them into a new data frame
 train: I use cbind() command to merge those three train data sets: train.subject,train.x and train.y. There are 7352 observations and 563 variables within the merged table "train".
   
  test: I use cbind() command to merge those three test data sets: test.subject, test.x and test.y. There are 2947 observations of 563 variables within the merged table "test".
  
Then I use rbind() command to merge "test" and "train" into a new data frame "train_test" which has 10299 observations of 563 variables.

Then I extract only the measurements on the mean and standard deviation for each measurement. 
 feature: derived from "C:/Users/123/Desktop/data/UCI HAR Dataset/features.txt", but it only keeps the previous two columns from the original resource.
 feature1: it contains the extracted measurements on the mean and standard deviation with the use of grep() command from the resource "feature".
 
 overall: a data frame which is extracted from "train_test" and "feature", has 10299 observations of 68 variables.
 
 Using descriptive activity names to name the activities in the data set.
 activity: derived from "C:/Users/123/Desktop/data/UCI HAR Dataset/activity_labels.txt". It has 6 observations of  2 variables.
 
Then I use factor() command to coerce the activity column within overall into factor class.
Next, I use gsub() command to replace the data sets with descriptive names.

Finally, I must create a second, independent tidy data set with the average of each variable for each activity and each subject.
Firstly, I upload the dplyr package to R. Then I create a data frame called second grouped by activity and subject within overall with the use of group_by() command. Next I use summarise_each() command to obtain the average of each variable for each activity and each subject. Finally I use write.table() command to create a tidy data set "second: to the directory "C:/Users/123/Desktop/GACD/second.txt". The row.names are setted to FALSE.

 
