### This document describes the data and transofrmations used by run_analysis.R and the definition of variables in tidydata.txt.

__Transformations with the input dataset:__  
X_train.txt 		_is read into_ 	featuresTrain.  
y_train.txt 		_is read into_ 	activityTrain.  
subject_train.txt _is read into_ 	subjectTrain.  
X_test.txt 		_is read into_ 	featuresTest.  
y_test.txt 		_is read into_ 	activityTest.  
subject_test.txt 	_is read into_ 	subjectTest.  
features.txt 		_is read into_ 	featureNames.  
activity_labels.txt _is read into_ 	activityLabels.   

__Acronyms replacement in variable names:__   
'Acc' _is replaced_ 'Accelerometer';  
'Gyro' _is replaced_ 'Gyroscope';  
'Mag' _is replaced_ 'Magnitude';  
't' _is replaced_ 'Time';  
'f' _is replaced_ 'Frequency';  
'BodyBody' _is replaced_ 'Body'  

__tidyDATA is created as a set with average for each activity and subject of extractedDATA.__   

__Finally, data in tidyDATA is written into tidydata.txt.__

__The header line of tidydata.txt file contains the names of the variables:__  
[1] "Activity"                                            
[2] "Subject"                                            
[3] "TimeBodyAccelerometer-mean()-X"                      
[4] "TimeBodyAccelerometer-mean()-Y"                      
[5] "TimeBodyAccelerometer-mean()-Z"                      
[6] "TimeBodyAccelerometer-std()-X"                       
[7] "TimeBodyAccelerometer-std()-Y"                       
[8] "TimeBodyAccelerometer-std()-Z"                       
[9] "TimeGravityAccelerometer-mean()-X"                 
[10] "TimeGravityAccelerometer-mean()-Y"                 
[11] "TimeGravityAccelerometer-mean()-Z"                 
[12] "TimeGravityAccelerometer-std()-X"                  
[13] "TimeGravityAccelerometer-std()-Y"                  
[14] "TimeGravityAccelerometer-std()-Z"                  
[15] "TimeBodyAccelerometerJerk-mean()-X"                
[16] "TimeBodyAccelerometerJerk-mean()-Y"                
[17] "TimeBodyAccelerometerJerk-mean()-Z"                
[18] "TimeBodyAccelerometerJerk-std()-X"                 
[19] "TimeBodyAccelerometerJerk-std()-Y"                 
[20] "TimeBodyAccelerometerJerk-std()-Z"                 
[21] "TimeBodyGyroscope-mean()-X"                        
[22] "TimeBodyGyroscope-mean()-Y"                        
[23] "TimeBodyGyroscope-mean()-Z"                        
[24] "TimeBodyGyroscope-std()-X"                         
[25] "TimeBodyGyroscope-std()-Y"                         
[26] "TimeBodyGyroscope-std()-Z"                         
[27] "TimeBodyGyroscopeJerk-mean()-X"                    
[28] "TimeBodyGyroscopeJerk-mean()-Y"                    
[29] "TimeBodyGyroscopeJerk-mean()-Z"                    
[30] "TimeBodyGyroscopeJerk-std()-X"                     
[31] "TimeBodyGyroscopeJerk-std()-Y"                     
[32] "TimeBodyGyroscopeJerk-std()-Z"                     
[33] "TimeBodyAccelerometerMagnitude-mean()"             
[34] "TimeBodyAccelerometerMagnitude-std()"              
[35] "TimeGravityAccelerometerMagnitude-mean()"          
[36] "TimeGravityAccelerometerMagnitude-std()"           
[37] "TimeBodyAccelerometerJerkMagnitude-mean()"         
[38] "TimeBodyAccelerometerJerkMagnitude-std()"          
[39] "TimeBodyGyroscopeMagnitude-mean()"                 
[40] "TimeBodyGyroscopeMagnitude-std()"                  
[41] "TimeBodyGyroscopeJerkMagnitude-mean()"             
[42] "TimeBodyGyroscopeJerkMagnitude-std()"              
[43] "FrequencyBodyAccelerometer-mean()-X"               
[44] "FrequencyBodyAccelerometer-mean()-Y"               
[45] "FrequencyBodyAccelerometer-mean()-Z"               
[46] "FrequencyBodyAccelerometer-std()-X"                
[47] "FrequencyBodyAccelerometer-std()-Y"                
[48] "FrequencyBodyAccelerometer-std()-Z"                
[49] "FrequencyBodyAccelerometer-meanFreq()-X"           
[50] "FrequencyBodyAccelerometer-meanFreq()-Y"           
[51] "FrequencyBodyAccelerometer-meanFreq()-Z"           
[52] "FrequencyBodyAccelerometerJerk-mean()-X"           
[53] "FrequencyBodyAccelerometerJerk-mean()-Y"           
[54] "FrequencyBodyAccelerometerJerk-mean()-Z"           
[55] "FrequencyBodyAccelerometerJerk-std()-X"            
[56] "FrequencyBodyAccelerometerJerk-std()-Y"            
[57] "FrequencyBodyAccelerometerJerk-std()-Z"            
[58] "FrequencyBodyAccelerometerJerk-meanFreq()-X"       
[59] "FrequencyBodyAccelerometerJerk-meanFreq()-Y"       
[60] "FrequencyBodyAccelerometerJerk-meanFreq()-Z"       
[61] "FrequencyBodyGyroscope-mean()-X"                   
[62] "FrequencyBodyGyroscope-mean()-Y"                   
[63] "FrequencyBodyGyroscope-mean()-Z"                   
[64] "FrequencyBodyGyroscope-std()-X"                    
[65] "FrequencyBodyGyroscope-std()-Y"                    
[66] "FrequencyBodyGyroscope-std()-Z"                    
[67] "FrequencyBodyGyroscope-meanFreq()-X"               
[68] "FrequencyBodyGyroscope-meanFreq()-Y"               
[69] "FrequencyBodyGyroscope-meanFreq()-Z"               
[70] "FrequencyBodyAccelerometerMagnitude-mean()"        
[71] "FrequencyBodyAccelerometerMagnitude-std()"         
[72] "FrequencyBodyAccelerometerMagnitude-meanFreq()"    
[73] "FrequencyBodyAccelerometerJerkMagnitude-mean()"    
[74] "FrequencyBodyAccelerometerJerkMagnitude-std()"     
[75] "FrequencyBodyAccelerometerJerkMagnitude-meanFreq()"
[76] "FrequencyBodyGyroscopeMagnitude-mean()"            
[77] "FrequencyBodyGyroscopeMagnitude-std()"             
[78] "FrequencyBodyGyroscopeMagnitude-meanFreq()"        
[79] "FrequencyBodyGyroscopeJerkMagnitude-mean()"        
[80] "FrequencyBodyGyroscopeJerkMagnitude-std()"         
[81] "FrequencyBodyGyroscopeJerkMagnitude-meanFreq()"    
[82] "angle(TimeBodyAccelerometerMean,gravity)"          
[83] "angle(TimeBodyAccelerometerJerkMean),gravityMean)" 
[84] "angle(TimeBodyGyroscopeMean,gravityMean)"          
[85] "angle(TimeBodyGyroscopeJerkMean,gravityMean)"      
[86] "angle(X,gravityMean)"                              
[87] "angle(Y,gravityMean)"                              
[88] "angle(Z,gravityMean)"


