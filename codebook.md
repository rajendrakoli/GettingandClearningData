{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red50\green98\blue178;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listlevel\levelnfc2\levelnfcn2\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{lower-roman\}}{\leveltext\leveltemplateid2\'01\'01;}{\levelnumbers\'01;}\fi-360\li1440\lin1440 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\paperw11900\paperh16840\margl1440\margr1440\vieww19980\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs32 \cf2 \expnd0\expndtw0\kerning0
This file describes the variables, the data, and any transformations or work that I have performed to clean up the data.\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	\'95	}\expnd0\expndtw0\kerning0
The site where the data was obtained:\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf3 \kerning1\expnd0\expndtw0 {\listtext	\'95	}{\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt \expnd0\expndtw0\kerning0
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}}\cf2 \expnd0\expndtw0\kerning0
\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	\'95	}\expnd0\expndtw0\kerning0
The data for the project:\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf3 \kerning1\expnd0\expndtw0 {\listtext	\'95	}{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt \expnd0\expndtw0\kerning0
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}\cf2 \expnd0\expndtw0\kerning0
\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	\'95	}\expnd0\expndtw0\kerning0
The run_analysis.R script performs the following steps to clean the data:\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440
\ls1\ilvl1\cf2 \kerning1\expnd0\expndtw0 {\listtext	i	}\expnd0\expndtw0\kerning0
Read X_train.txt, y_train.txt and subject_train.txt from the \'93./UCI_Data/train" folder and store them in 
\i \expnd0\expndtw0\kerning0
trainData
\i0 \expnd0\expndtw0\kerning0
, 
\i \expnd0\expndtw0\kerning0
trainLabel
\i0 \expnd0\expndtw0\kerning0
 and 
\i \expnd0\expndtw0\kerning0
trainSubject
\i0 \expnd0\expndtw0\kerning0
 variables respectively.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	ii	}\expnd0\expndtw0\kerning0
Read X_test.txt, y_test.txt and subject_test.txt from the \'93./UCI_Data/test" folder and store them in 
\i \expnd0\expndtw0\kerning0
testData
\i0 \expnd0\expndtw0\kerning0
, 
\i \expnd0\expndtw0\kerning0
testLabel
\i0 \expnd0\expndtw0\kerning0
 and 
\i \expnd0\expndtw0\kerning0
testsubject
\i0 \expnd0\expndtw0\kerning0
 variables respectively.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	iii	}\expnd0\expndtw0\kerning0
Concatenate 
\i \expnd0\expndtw0\kerning0
testData
\i0 \expnd0\expndtw0\kerning0
 to 
\i \expnd0\expndtw0\kerning0
trainData
\i0 \expnd0\expndtw0\kerning0
 to generate a 10299x561 data frame, 
\i \expnd0\expndtw0\kerning0
joinData
\i0 \expnd0\expndtw0\kerning0
; concatenate 
\i \expnd0\expndtw0\kerning0
testLabel
\i0 \expnd0\expndtw0\kerning0
 to 
\i \expnd0\expndtw0\kerning0
trainLabel
\i0 \expnd0\expndtw0\kerning0
 to generate a 10299x1 data frame, 
\i \expnd0\expndtw0\kerning0
joinLabel
\i0 \expnd0\expndtw0\kerning0
; concatenate 
\i \expnd0\expndtw0\kerning0
testSubject
\i0 \expnd0\expndtw0\kerning0
 to 
\i \expnd0\expndtw0\kerning0
trainSubject
\i0 \expnd0\expndtw0\kerning0
 to generate a 10299x1 data frame, 
\i \expnd0\expndtw0\kerning0
joinSubject
\i0 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	iv	}\expnd0\expndtw0\kerning0
Read the features.txt file from the \'93/UCI_Data" folder and store the data in a variable called 
\i \expnd0\expndtw0\kerning0
features
\i0 \expnd0\expndtw0\kerning0
. We only extract the measurements on the mean and standard deviation. This results in a 66 indices list. We get a subset of 
\i \expnd0\expndtw0\kerning0
joinData
\i0 \expnd0\expndtw0\kerning0
 with the 66 corresponding columns.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	v	}\expnd0\expndtw0\kerning0
Clean the column names of the subset. We remove the "()" and "-" symbols in the names, as well as make the first letter of "mean" and "std" a capital letter "M" and "S" respectively.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	vi	}\expnd0\expndtw0\kerning0
Read the activity_labels.txt file from the \'93./UCI_Data"" folder and store the data in a variable called 
\i \expnd0\expndtw0\kerning0
activity
\i0 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	vii	}\expnd0\expndtw0\kerning0
Clean the activity names in the second column of 
\i \expnd0\expndtw0\kerning0
activity
\i0 \expnd0\expndtw0\kerning0
. We first make all names to lower cases. If the name has an underscore between letters, we remove the underscore and capitalize the letter immediately after the underscore.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	viii	}\expnd0\expndtw0\kerning0
Transform the values of 
\i \expnd0\expndtw0\kerning0
joinLabel
\i0 \expnd0\expndtw0\kerning0
 according to the 
\i \expnd0\expndtw0\kerning0
activity
\i0 \expnd0\expndtw0\kerning0
 data frame.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	ix	}\expnd0\expndtw0\kerning0
Combine the 
\i \expnd0\expndtw0\kerning0
joinSubject
\i0 \expnd0\expndtw0\kerning0
, 
\i \expnd0\expndtw0\kerning0
joinLabel
\i0 \expnd0\expndtw0\kerning0
 and 
\i \expnd0\expndtw0\kerning0
joinData
\i0 \expnd0\expndtw0\kerning0
 by column to get a new cleaned 10299x68 data frame, 
\i \expnd0\expndtw0\kerning0
cleanedData
\i0 \expnd0\expndtw0\kerning0
. Properly name the first two columns, "subject" and "activity". The "subject" column contains integers that range from 1 to 30 inclusive; the "activity" column contains 6 kinds of activity names; the last 66 columns contain measurements that range from -1 to 1 exclusive.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	x	}\expnd0\expndtw0\kerning0
Write the 
\i \expnd0\expndtw0\kerning0
cleanedData
\i0 \expnd0\expndtw0\kerning0
 out to "merged_data.txt" file in current working directory.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	xi	}\expnd0\expndtw0\kerning0
Finally, generate a second independent tidy data set with the average of each measurement for each activity and each subject. We have 30 unique subjects and 6 unique activities, which result in a 180 combinations of the two. Then, for each combination, we calculate the mean of each measurement with the corresponding combination. So, after initializing the 
\i \expnd0\expndtw0\kerning0
result
\i0 \expnd0\expndtw0\kerning0
 data frame and performing the two for-loops, we get a 180x68 data frame.\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	xii	}\expnd0\expndtw0\kerning0
Write the 
\i \expnd0\expndtw0\kerning0
result
\i0 \expnd0\expndtw0\kerning0
 out to "data_with_means.txt" file in current working directory.}