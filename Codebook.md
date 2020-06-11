Variables
Categorical variables:
“subject”
Missing variables:
“activity”
Continuous variables:
"timeBodyAccMean-X"                "timeBodyAccMean-Y"               
"timeBodyAccMean-Z"                "timeBodyAccStd-X"                
"timeBodyAccStd-Y"                 "timeBodyAccStd-Z"                
"timeGravityAccMean-X"             "timeGravityAccMean-Y"            
"timeGravityAccMean-Z"             "timeGravityAccStd-X"             
"timeGravityAccStd-Y"              "timeGravityAccStd-Z"             
"timeBodyAccJerkMean-X"            "timeBodyAccJerkMean-Y"           
"timeBodyAccJerkMean-Z"            "timeBodyAccJerkStd-X"            
"timeBodyAccJerkStd-Y"             "timeBodyAccJerkStd-Z"            
"timeBodyGyroMean-X"               "timeBodyGyroMean-Y"              
"timeBodyGyroMean-Z"               "timeBodyGyroStd-X"               
"timeBodyGyroStd-Y"                "timeBodyGyroStd-Z"               
"timeBodyGyroJerkMean-X"           "timeBodyGyroJerkMean-Y"          
"timeBodyGyroJerkMean-Z"           "timeBodyGyroJerkStd-X"           
"timeBodyGyroJerkStd-Y"            "timeBodyGyroJerkStd-Z"           
"timeBodyAccMagMean"               "timeBodyAccMagStd"               
"timeGravityAccMagMean"            "timeGravityAccMagStd"            
"timeBodyAccJerkMagMean"           "timeBodyAccJerkMagStd"           
 "timeBodyGyroMagMean"              "timeBodyGyroMagStd"              
"timeBodyGyroJerkMagMean"          "timeBodyGyroJerkMagStd"          
"frequenceBodyAccMean-X"           "frequenceBodyAccMean-Y"          
 "frequenceBodyAccMean-Z"           "frequenceBodyAccStd-X"           
"frequenceBodyAccStd-Y"            "frequenceBodyAccStd-Z"           
"frequenceBodyAccJerkMean-X"       "frequenceBodyAccJerkMean-Y"      
"frequenceBodyAccJerkMean-Z"       "frequenceBodyAccJerkStd-X"       
"frequenceBodyAccJerkStd-Y"        "frequenceBodyAccJerkStd-Z"       
 "frequenceBodyGyroMean-X"          "frequenceBodyGyroMean-Y"         
"frequenceBodyGyroMean-Z"          "frequenceBodyGyroStd-X"          
"frequenceBodyGyroStd-Y"           "frequenceBodyGyroStd-Z"          
 "frequenceBodyAccMagMean"          "frequenceBodyAccMagStd"          
 "frequenceBodyBodyAccJerkMagMean"  "frequenceBodyBodyAccJerkMagStd"  
 "frequenceBodyBodyGyroMagMean"     "frequenceBodyBodyGyroMagStd"     
 "frequenceBodyBodyGyroJerkMagMean" "frequenceBodyBodyGyroJerkMagStd" 

Source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The transformation to clean up the data
replacing the data sets with descriptive names by using gsub() function,then the readable variable names are in the first separate row
creating a new data frame called second that only includes the tidy data
