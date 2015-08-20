{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;\f1\fnil\fcharset0 Menlo-Regular;\f2\fswiss\fcharset0 Helvetica;
}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red14\green0\blue45;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs32 \cf2 \expnd0\expndtw0\kerning0
This document describes the data and transofrmations used by 
\i \expnd0\expndtw0\kerning0
run_analysis.R
\i0 \expnd0\expndtw0\kerning0
 and the definition of variables in 
\i \expnd0\expndtw0\kerning0
tidydata.txt
\i0 \expnd0\expndtw0\kerning0
.\
\
Transformations with the input dataset:\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0
\f1\fs28 \cf3 \cb1 \expnd0\expndtw0\kerning0
X_train.txt
\f0\fs32 \expnd0\expndtw0\kerning0
 		is read into 	
\f1\fs28 \expnd0\expndtw0\kerning0
featuresTrain
\f0\fs32 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl0
\f1\fs28 \expnd0\expndtw0\kerning0
y_train.txt
\f0\fs32 \expnd0\expndtw0\kerning0
 		is read into 	
\f1\fs28 \expnd0\expndtw0\kerning0
activityTrain
\f0\fs32 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl0
\f1\fs28 \expnd0\expndtw0\kerning0
subject_train.txt
\f0\fs32 \expnd0\expndtw0\kerning0
 is read into 	
\f1\fs28 \expnd0\expndtw0\kerning0
subjectTrain
\f0\fs32 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl0
\f1\fs28 \expnd0\expndtw0\kerning0
X_test.txt
\f0\fs32 \expnd0\expndtw0\kerning0
 		is read into 	
\f1\fs28 \expnd0\expndtw0\kerning0
featuresTest
\f0\fs32 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl0
\f1\fs28 \expnd0\expndtw0\kerning0
y_test.txt
\f0\fs32 \expnd0\expndtw0\kerning0
 		is read into 	
\f1\fs28 \expnd0\expndtw0\kerning0
activityTest
\f0\fs32 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl0
\f1\fs28 \expnd0\expndtw0\kerning0
subject_test.txt
\f0\fs32 \expnd0\expndtw0\kerning0
 	is read into 	
\f1\fs28 \expnd0\expndtw0\kerning0
subjectTest
\f0\fs32 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl0
\f1\fs28 \expnd0\expndtw0\kerning0
features.txt
\f0\fs32 \expnd0\expndtw0\kerning0
 		is read into 	
\f1\fs28 \expnd0\expndtw0\kerning0
featureNames
\f0\fs32 \expnd0\expndtw0\kerning0
.\
\ls1\ilvl0
\f1\fs28 \expnd0\expndtw0\kerning0
activity_labels.txt
\f0\fs32 \expnd0\expndtw0\kerning0
 is read into 	
\f1\fs28 \expnd0\expndtw0\kerning0
activityLabels
\f0\fs32 \expnd0\expndtw0\kerning0
.
\b\fs56 \expnd0\expndtw0\kerning0
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural

\f2\b0\fs24 \cf3 \kerning1\expnd0\expndtw0 \
\cb1 \
\cf0 \
[1] "Activity"                                          \
 [2] "Subject"                                           \
 [3] "TimeBodyAccelerometer-mean()-X"                    \
 [4] "TimeBodyAccelerometer-mean()-Y"                    \
 [5] "TimeBodyAccelerometer-mean()-Z"                    \
 [6] "TimeBodyAccelerometer-std()-X"                     \
 [7] "TimeBodyAccelerometer-std()-Y"                     \
 [8] "TimeBodyAccelerometer-std()-Z"                     \
 [9] "TimeGravityAccelerometer-mean()-X"                 \
[10] "TimeGravityAccelerometer-mean()-Y"                 \
[11] "TimeGravityAccelerometer-mean()-Z"                 \
[12] "TimeGravityAccelerometer-std()-X"                  \
[13] "TimeGravityAccelerometer-std()-Y"                  \
[14] "TimeGravityAccelerometer-std()-Z"                  \
[15] "TimeBodyAccelerometerJerk-mean()-X"                \
[16] "TimeBodyAccelerometerJerk-mean()-Y"                \
[17] "TimeBodyAccelerometerJerk-mean()-Z"                \
[18] "TimeBodyAccelerometerJerk-std()-X"                 \
[19] "TimeBodyAccelerometerJerk-std()-Y"                 \
[20] "TimeBodyAccelerometerJerk-std()-Z"                 \
[21] "TimeBodyGyroscope-mean()-X"                        \
[22] "TimeBodyGyroscope-mean()-Y"                        \
[23] "TimeBodyGyroscope-mean()-Z"                        \
[24] "TimeBodyGyroscope-std()-X"                         \
[25] "TimeBodyGyroscope-std()-Y"                         \
[26] "TimeBodyGyroscope-std()-Z"                         \
[27] "TimeBodyGyroscopeJerk-mean()-X"                    \
[28] "TimeBodyGyroscopeJerk-mean()-Y"                    \
[29] "TimeBodyGyroscopeJerk-mean()-Z"                    \
[30] "TimeBodyGyroscopeJerk-std()-X"                     \
[31] "TimeBodyGyroscopeJerk-std()-Y"                     \
[32] "TimeBodyGyroscopeJerk-std()-Z"                     \
[33] "TimeBodyAccelerometerMagnitude-mean()"             \
[34] "TimeBodyAccelerometerMagnitude-std()"              \
[35] "TimeGravityAccelerometerMagnitude-mean()"          \
[36] "TimeGravityAccelerometerMagnitude-std()"           \
[37] "TimeBodyAccelerometerJerkMagnitude-mean()"         \
[38] "TimeBodyAccelerometerJerkMagnitude-std()"          \
[39] "TimeBodyGyroscopeMagnitude-mean()"                 \
[40] "TimeBodyGyroscopeMagnitude-std()"                  \
[41] "TimeBodyGyroscopeJerkMagnitude-mean()"             \
[42] "TimeBodyGyroscopeJerkMagnitude-std()"              \
[43] "FrequencyBodyAccelerometer-mean()-X"               \
[44] "FrequencyBodyAccelerometer-mean()-Y"               \
[45] "FrequencyBodyAccelerometer-mean()-Z"               \
[46] "FrequencyBodyAccelerometer-std()-X"                \
[47] "FrequencyBodyAccelerometer-std()-Y"                \
[48] "FrequencyBodyAccelerometer-std()-Z"                \
[49] "FrequencyBodyAccelerometer-meanFreq()-X"           \
[50] "FrequencyBodyAccelerometer-meanFreq()-Y"           \
[51] "FrequencyBodyAccelerometer-meanFreq()-Z"           \
[52] "FrequencyBodyAccelerometerJerk-mean()-X"           \
[53] "FrequencyBodyAccelerometerJerk-mean()-Y"           \
[54] "FrequencyBodyAccelerometerJerk-mean()-Z"           \
[55] "FrequencyBodyAccelerometerJerk-std()-X"            \
[56] "FrequencyBodyAccelerometerJerk-std()-Y"            \
[57] "FrequencyBodyAccelerometerJerk-std()-Z"            \
[58] "FrequencyBodyAccelerometerJerk-meanFreq()-X"       \
[59] "FrequencyBodyAccelerometerJerk-meanFreq()-Y"       \
[60] "FrequencyBodyAccelerometerJerk-meanFreq()-Z"       \
[61] "FrequencyBodyGyroscope-mean()-X"                   \
[62] "FrequencyBodyGyroscope-mean()-Y"                   \
[63] "FrequencyBodyGyroscope-mean()-Z"                   \
[64] "FrequencyBodyGyroscope-std()-X"                    \
[65] "FrequencyBodyGyroscope-std()-Y"                    \
[66] "FrequencyBodyGyroscope-std()-Z"                    \
[67] "FrequencyBodyGyroscope-meanFreq()-X"               \
[68] "FrequencyBodyGyroscope-meanFreq()-Y"               \
[69] "FrequencyBodyGyroscope-meanFreq()-Z"               \
[70] "FrequencyBodyAccelerometerMagnitude-mean()"        \
[71] "FrequencyBodyAccelerometerMagnitude-std()"         \
[72] "FrequencyBodyAccelerometerMagnitude-meanFreq()"    \
[73] "FrequencyBodyAccelerometerJerkMagnitude-mean()"    \
[74] "FrequencyBodyAccelerometerJerkMagnitude-std()"     \
[75] "FrequencyBodyAccelerometerJerkMagnitude-meanFreq()"\
[76] "FrequencyBodyGyroscopeMagnitude-mean()"            \
[77] "FrequencyBodyGyroscopeMagnitude-std()"             \
[78] "FrequencyBodyGyroscopeMagnitude-meanFreq()"        \
[79] "FrequencyBodyGyroscopeJerkMagnitude-mean()"        \
[80] "FrequencyBodyGyroscopeJerkMagnitude-std()"         \
[81] "FrequencyBodyGyroscopeJerkMagnitude-meanFreq()"    \
[82] "angle(TimeBodyAccelerometerMean,gravity)"          \
[83] "angle(TimeBodyAccelerometerJerkMean),gravityMean)" \
[84] "angle(TimeBodyGyroscopeMean,gravityMean)"          \
[85] "angle(TimeBodyGyroscopeJerkMean,gravityMean)"      \
[86] "angle(X,gravityMean)"                              \
[87] "angle(Y,gravityMean)"                              \
[88] "angle(Z,gravityMean)"\
\
\pard\pardeftab720

\f0\fs32 \cf2 \expnd0\expndtw0\kerning0
The output data 
\f1\fs28 \expnd0\expndtw0\kerning0
tidydata.txt
\f0\fs32 \expnd0\expndtw0\kerning0
. The header line contains the names of the variables. It contains the mean and standard deviation values of the data contained in the input files.}