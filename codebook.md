This file describes the variables, the data, and any transformations or work that I have performed to clean up the data.

	•	The site where the data was obtained:
	•	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	•	The data for the project:
	•	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	•	The run_analysis.R script performs the following steps to clean the data:
	i	Read X_train.txt, y_train.txt and subject_train.txt from the “./UCI_Data/train" folder and store them in MyTrainData, MyTrainLabel and MyTrainSubject variables respectively.
	ii	Read X_test.txt, y_test.txt and subject_test.txt from the “./UCI_Data/test" folder and store them in MytestData, MytestLabel and MytestSubject variables respectively.
	iii	Join MyTestData to MyTrainData to generate a 10299 x 561 data frame,  MyJoinData; concatenate MyTestLabel to MyTrainLabel to generate a 10299x1 data frame, MyJoinLabel; concatenate MyTestSubject to MyTrainSubject to generate a 10299x1 data frame, MyJoinSubject.
	iv	Read the features.txt file from the “/UCI_Data" folder and store the data in a variable called features. We only extract the measurements on the mean and standard deviation. This results in a 66 indices list. We get a subset of joinData with the 66 corresponding columns.
	v	Clean the column names of the subset. We remove the "()" and "-" symbols in the names, as well as make the first letter of "mean" and "std" a capital letter "M" and "S" respectively.
	vi	Read the activity_labels.txt file from the “./UCI_Data"" folder and store the data in a variable called activity.
	vii	Clean the activity names in the second column of activity. We first make all names to lower cases. If the name has an underscore between letters, we remove the underscore and capitalize the letter immediately after the underscore.
	viii	Transform the values of MyJoinLabel according to the activity data frame.
	ix	Combine the MyJoinSubject, MyJoinLabel and MyJoinData by column to get a new cleaned 10299x68 data frame, MyCleanedData. Properly name the first two columns, "subject" and "activity". The "subject" column contains integers that range from 1 to 30 inclusive; the "activity" column contains 6 kinds of activity names; the last 66 columns contain measurements that range from -1 to 1 exclusive.
	x	Write the MyCleanedData out to "merged_data.txt" file in current working directory.
	xi	Finally, generate a second independent tidy data set with the average of each measurement for each activity and each subject. We have 30 unique subjects and 6 unique activities, which result in a 180 combinations of the two. Then, for each combination, we calculate the mean of each measurement with the corresponding combination. So, after initializing the MyResult data frame and performing the two for-loops, we get a 180x68 data frame.
	xii	Write the result out to "data_with_means.txt" file in current working directory.