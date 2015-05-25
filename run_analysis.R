## Course Assignment

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./UCI HAR Dataset.zip")
unzip("./UCI HAR Dataset.zip")

library(dplyr)
library(data.table)

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
varnames <- read.table("./UCI HAR Dataset/features.txt")
vname <- gsub("\\(|\\)|\\,|\\-","_",varnames$V2, useBytes=TRUE, perl=TRUE)

## Read in TRAIN data
trainx <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, nrow=7500, col.names=vname)
trains <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, nrow=7500, col.names="subject")
trainy <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE, nrow=7500)
trainy2 <- merge(trainy, activity_labels)
names(trainy2) <- c("V1", "Activity")

train_all <- bind_cols(trains, trainy2[2], trainx)

## Read in TEST data
testx <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, nrow=3000, col.names=vname)
tests <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, nrow=3000, col.names="subject")
testy <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE, nrow=3000)
testy2 <- merge(testy, activity_labels)
names(testy2) <- c("V1", "Activity")

test_all <- bind_cols(tests, testy2[2], testx)


## Combine all the data
Activity_Data <- rbind_list(train_all, test_all)

## Extracting only the "mean()" & "std()" variables
AD_subset1 <- select(Activity_Data, contains("mean__", ignore.case=TRUE))
AD_subset2 <- select(Activity_Data, contains("std__", ignore.case=TRUE))

AD_subset <- bind_cols(Activity_Data[1:2], AD_subset1, AD_subset2)

AD1 <- tbl_df(AD_subset)

by_AD <- group_by(AD1, subject, Activity)

tidy1 <- AD1[, lapply(.SD, mean), by = list(subject, Activity)]

write.table(tidy1, "./tidy1.txt",row.names=FALSE)


 