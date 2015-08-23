library(dplyr)

# Read in test data
test <- read.table( "UCI HAR Dataset/test/X_test.txt", header=FALSE, col.names = c("ax","ay","az","aA","aB","aC",1:555) )
testSubject <- read.table( "UCI HAR Dataset/test/subject_test.txt" , header=FALSE, col.names = "Subject" )
testActivity <- read.table( "UCI HAR Dataset/test/y_test.txt" , header=FALSE, col.names = "Activity" )

# read in training data
train <- read.table( "UCI HAR Dataset/train/X_train.txt", header=FALSE, col.names = c("ax","ay","az","aA","aB","aC",1:555) )
trainSubject <- read.table( "UCI HAR Dataset/train/subject_train.txt" , header=FALSE, col.names = "Subject" )
trainActivity <- read.table( "UCI HAR Dataset/train/y_train.txt" , header=FALSE, col.names = "Activity" )

# Put both sets together
test$Subject <- testSubject$Subject
test$Activity <- testActivity$Activity
train$Subject <- trainSubject$Subject
train$Activity <- trainActivity$Activity

# put the tables together
newFrame <- rbind(test,train)

# Make labels for Activities
newFrame$ActivityName <- cut( newFrame$Activity, 6, labels=c("Walking", "Walking upstrains", "Walking downstrains", "Sitting", "Standing", "Laying" ) )

# Calculate mean and stddev for each variable
meanX <- mean( newFrame$ax )
meanY <- mean( newFrame$ay )
meanZ <- mean( newFrame$az )
meanA <- mean( newFrame$aA )
meanB <- mean( newFrame$aB )
meanC <- mean( newFrame$aC )
stddevX <- sd( newFrame$ax )
stddevY <- sd( newFrame$ay )
stddevZ <- sd( newFrame$az )
stddevA <- sd( newFrame$aA )
stddevB <- sd( newFrame$aB )
stddevC <- sd( newFrame$aC )

