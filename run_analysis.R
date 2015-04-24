
# unzip file
unzip(zipfile="Dataset.zip")

# getting a list of the files
path_files <- file.path("UCI HAR Dataset")
files<-list.files(path_files, recursive=TRUE)
files

# Merges X data from train and test folders.
Xtrain <- read.table('./UCI HAR Dataset/train/X_train.txt')
Xtest <- read.table('./UCI HAR Dataset/test/X_test.txt')
X <- rbind(Xtrain, Xtest)

# Merges subject data from train and test folders.
subjecttrain <- read.table('./UCI HAR Dataset/train/subject_train.txt')
subjecttest <- read.table('./UCI HAR Dataset/test/subject_test.txt')
subject <- rbind(subjecttrain, subjecttest)


# Merges y data from train and test folders.
ytrain <- read.table('./UCI HAR Dataset/train/y_train.txt')
ytest <- read.table('./UCI HAR Dataset/test/y_test.txt')
y <- rbind(ytrain, ytest)

# remove unecessary data
rm(Xtrain)
rm(Xtest)
rm(subjecttrain)
rm(subjecttest)
rm(ytrain)
rm(ytest)


# set names to variables
names(subject)<-c("subject")
FeaturesNames <- read.table('./UCI HAR Dataset/features.txt',head=FALSE)

names(X)<- FeaturesNames$V2

# combine columns to get the data frame Data for X and subject
Data <- cbind(X, subject)

# subset only the measurements on the mean and standard deviation for each measurement
# taking the names with mean() and std()
subFeaturesNames<-FeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", FeaturesNames$V2)]

# subsetting Data by selected names
selectedNames<-c(as.character(subFeaturesNames), "subject")
Data<-subset(Data,select=selectedNames)
str(Data)


# Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table('./UCI HAR Dataset/activity_labels.txt',head=FALSE)

activityLabels[,2] = gsub("_", "", tolower(as.character(activityLabels[,2])))
y[,1] = activityLabels[y[,1], 2]
names(y) <- "activity"

# combine columns to get Data with y as factor
Data <- cbind(Data,y)
Data$activity<-as.factor(Data$activity)


# Appropriately labels the data set with descriptive variable names
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

# Creates a second,independent tidy data set and ouput it
library(plyr);
Data2<-aggregate(. ~subject + activity, Data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "./UCI HAR Dataset/Data2.txt",row.name=FALSE)


