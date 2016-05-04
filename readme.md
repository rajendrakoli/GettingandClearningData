{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;\f1\fswiss\fcharset0 Helvetica;\f2\fnil\fcharset0 LucidaGrande;
}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red32\green94\blue198;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{circle\}}{\leveltext\leveltemplateid2\'01\uc0\u9702 ;}{\levelnumbers;}\fi-360\li1440\lin1440 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\paperw11900\paperh16840\margl1440\margr1440\vieww20140\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\b\fs72 \cf2 \expnd0\expndtw0\kerning0
Getting and Cleaning Data \
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
\
This document helps to understand how to execute run_analysis.R script and related steps - \
\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	\'95	}\expnd0\expndtw0\kerning0
Download and unzip the data from 
\f1 \cf3 \expnd0\expndtw0\kerning0
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
\f0 \cf2 \kerning1\expnd0\expndtw0  \expnd0\expndtw0\kerning0
and rename the folder with \'93UCI_Data"\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	\'95	}Execute dir() command to verify if \expnd0\expndtw0\kerning0
the folder \'93UCI_Data" has  run_analysis.R script is in working directory\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	\'95	}\expnd0\expndtw0\kerning0
Execute source("run_analysis.R") command in RStudio\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	\'95	}The script generates \expnd0\expndtw0\kerning0
two output files in the working directory:\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440
\ls1\ilvl1\cf2 \kerning1\expnd0\expndtw0 {\listtext	
\f2 \uc0\u9702 
\f0 	}\expnd0\expndtw0\kerning0
merged_data.txt (7.9 Mb): it contains a data frame called cleanedData with 10299*68 dimension\
\ls1\ilvl1\kerning1\expnd0\expndtw0 {\listtext	
\f2 \uc0\u9702 
\f0 	}\expnd0\expndtw0\kerning0
data_with_means.txt (220 Kb): it contains a data frame called result with 180*68 dimension\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	\'95	}\expnd0\expndtw0\kerning0
To read the data frame execute data <- read.table("data_with_means.txt") command in RStudio to read the file\kerning1\expnd0\expndtw0 \
{\listtext	\'95	}There are 180 rows combined of 6 activities, and 30 subjects for each of 68 features. }