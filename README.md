Getting and Cleaning Data 

This document helps to understand how to execute run_analysis.R script and related steps - 

	•	Download and unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and rename the folder with “UCI_Data"
	•	Execute dir() command to verify if the folder “UCI_Data" has  run_analysis.R script is in working directory
	•	Execute source("run_analysis.R") command in RStudio
	•	The script generates two output files in the working directory:
	◦	merged_data.txt (7.9 Mb): it contains a data frame called cleanedData with 10299*68 dimension
	◦	data_with_means.txt (220 Kb): it contains a data frame called result with 180*68 dimension
	•	To read the data frame execute data <- read.table("data_with_means.txt") command in RStudio to read the file
	•	There are 180 rows combined of 6 activities, and 30 subjects for each of 68 features. 