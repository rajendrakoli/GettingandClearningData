myTrainData <- read.table("./UCI_Data/train/X_train.txt")
dim(myTrainData) # 7352*561

head(myTrainData)
MyTrainLabel <- read.table("./UCI_Data/train/y_train.txt")

dim(MyTrainLabel) #7352*1
table(MyTrainLabel)

MyTrainSubject <- read.table("./UCI_Data/train/subject_train.txt")
MyTestData <- read.table("./UCI_Data/test/X_test.txt")
dim(MyTestData) # 2947*561
MyTestLabel <- read.table("./UCI_Data/test/y_test.txt") 
table(MyTestLabel) 

MytestSubject <- read.table("./UCI_Data/test/subject_test.txt")
MyJoinedData <- rbind(myTrainData, MyTestData)

dim(MyJoinedData) # 10299*561

MyJoinLabel <- rbind(MyTrainLabel, MyTestLabel)
dim(MyJoinLabel) # 10299*1

MyJoinSubject <- rbind(MyTrainSubject, MytestSubject)
dim(MyJoinSubject) # 10299*1

# Step2. Extracts only the measurements on the mean and standard 

# deviation for each measurement. 

MyFeatures <- read.table("./UCI_Data/features.txt")

dim(MyFeatures)  # 561*2

meanStdIndices <- grep("mean\\(\\)|std\\(\\)", MyFeatures[, 2])

length(meanStdIndices) # 66

MyJoinedData <- MyJoinedData[, meanStdIndices]

dim(MyJoinedData) # 10299*66

names(MyJoinedData) <- gsub("\\(\\)", "", MyFeatures[meanStdIndices, 2]) # remove "()"
names(MyJoinedData) <- gsub("mean", "Mean", names(MyJoinedData)) # capitalize M
names(MyJoinedData) <- gsub("std", "Std", names(MyJoinedData)) # capitalize S
names(MyJoinedData) <- gsub("-", "", names(MyJoinedData)) # remove "-" in column names 


# Step3. Use descriptive activity names to name the activities in the dataset

MyActivity <- read.table("./UCI_Data/activity_labels.txt")
MyActivity[, 2] <- tolower(gsub("_", "", MyActivity[, 2]))
substr(MyActivity[2, 2], 8, 8) <- toupper(substr(MyActivity[2, 2], 8, 8))
substr(MyActivity[3, 2], 8, 8) <- toupper(substr(MyActivity[3, 2], 8, 8))
MyActivityLabel <- activity[MyJoinLabel[, 1], 2]

MyJoinLabel[, 1] <- MyActivityLabel

names(MyJoinLabel) <- "activity"


# Step4. Label the dataset with descriptive activity names 

names(MyJoinSubject) <- "subject"

MyCleanedData <- cbind(MyJoinSubject, MyJoinLabel, MyJoinedData)

dim(MyCleanedData) # 10299*68

write.table(MyCleanedData, "merged_data.txt") # write out the 1st dataset


# Step5. Creates a second, independent tidy data set with the average of 

# each variable for each activity and each subject. 

subjectLen <- length(table(MyJoinSubject)) # 30

activityLen <- dim(activity)[1] # 6

columnLen <- dim(MyCleanedData)[2] #68

MyResult <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 

MyResult <- as.data.frame(MyResult)

colnames(MyResult) <- colnames(MyCleanedData)

row <- 1

for(i in 1:subjectLen) {
  for(j in 1:activityLen) {
    MyResult[row, 1] <- sort(unique(MyJoinSubject)[, 1])[i]
    
    MyResult[row, 2] <- activity[j, 2]
    
    bool1 <- i == MyCleanedData$subject
    
    bool2 <- activity[j, 2] == MyCleanedData$activity
    
    MyResult[row, 3:columnLen] <- colMeans(MyCleanedData[bool1&bool2, 3:columnLen])
    row <- row + 1
  }
}

head(MyResult)

write.table(MyResult, "data_with_means.txt") # write out the 2nd dataset




# data <- read.table("./data_with_means.txt")

# data[1:12, 1:3]
