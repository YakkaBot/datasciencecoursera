
##Study Design
The raw data is from the "Human Activity Recognition Using Smartphones Dataset" produced by [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
DEtails of the study design should be referenced from their work...
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The raw data set can be downloaded from here. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Code Book
*Note: All variable measurements have been normalised over the closed interval [-1, +1] units are therefore not listed.*
*Variable*                                     *|*Description                                                   *|*
|subject                                        |This is an integer representing the test subject.               |
|activity                                       |The activity the subject was performing.                        |
|Time.BodyAcc.mean...X                          |Time Body Acceleration mean X Axis                              |
|Time.BodyAcc.mean...Y                          |Time Body Acceleration mean Y Axis                              |
|Time.BodyAcc.mean...Z                          |Time Body Acceleration mean Z Axis                              |
|Time.BodyAcc.std...X                           |Time Body Acceleration standard deviation X Axis                |
|Time.BodyAcc.std...Y                           |Time Body Acceleration standard deviation Y Axis                |
|Time.BodyAcc.std...Z                           |Time Body Acceleration standard deviation Z Axis                |
|Time.GravityAcc.mean...X                       |Time Gravity Acceleration mean X Axis                           |
|Time.GravityAcc.mean...Y                       |Time Gravity Acceleration mean Y Axis                           |
|Time.GravityAcc.mean...Z                       |Time Gravity Acceleration mean Z Axis                           |
|Time.GravityAcc.std...X                        |Time Gravity Acceleration standard deviation X Axis             |
|Time.GravityAcc.std...Y                        |Time Gravity Acceleration standard deviation Y Axis             |
|Time.GravityAcc.std...Z                        |Time Gravity Acceleration standard deviation Z Axis             |
|Time.BodyAccJerk.mean...X                      |Time Body AccelerationJerk mean X Axis                          |
|Time.BodyAccJerk.mean...Y                      |Time Body AccelerationJerk mean Y Axis                          |
|Time.BodyAccJerk.mean...Z                      |Time Body AccelerationJerk mean Z Axis                          |
|Time.BodyAccJerk.std...X                       |Time Body AccelerationJerk standard deviation X Axis            |
|Time.BodyAccJerk.std...Y                       |Time Body AccelerationJerk standard deviation Y Axis            |
|Time.BodyAccJerk.std...Z                       |Time Body AccelerationJerk standard deviation Z Axis            |
|Time.BodyGyro.mean...X                         |Time Body Gyroscope  mean X Axis                                |
|Time.BodyGyro.mean...Y                         |Time Body Gyroscope  mean Y Axis                                |
|Time.BodyGyro.mean...Z                         |Time Body Gyroscope  mean Z Axis                                |
|Time.BodyGyro.std...X                          |Time Body Gyroscope  standard deviation X Axis                  |
|Time.BodyGyro.std...Y                          |Time Body Gyroscope  standard deviation Y Axis                  |
|Time.BodyGyro.std...Z                          |Time Body Gyroscope  standard deviation Z Axis                  |
|Time.BodyGyroJerk.mean...X                     |Time Body Gyroscope Jerk mean X Axis                            |
|Time.BodyGyroJerk.mean...Y                     |Time Body Gyroscope Jerk mean Y Axis                            |
|Time.BodyGyroJerk.mean...Z                     |Time Body Gyroscope Jerk mean Z Axis                            |
|Time.BodyGyroJerk.std...X                      |Time Body Gyroscope Jerk standard deviation X Axis              |
|Time.BodyGyroJerk.std...Y                      |Time Body Gyroscope Jerk standard deviation Y Axis              |
|Time.BodyGyroJerk.std...Z                      |Time Body Gyroscope Jerk standard deviation Z Axis              |
|Time.BodyAccMag.mean..                         |Time Body AccelerationMag mean                                  |
|Time.BodyAccMag.std..                          |Time Body AccelerationMag standard deviation                    |
|Time.GravityAccMag.mean..                      |Time Gravity AccelerationMag mean                               |
|Time.GravityAccMag.std..                       |Time Gravity AccelerationMag standard deviation                 |
|Time.BodyAccJerkMag.mean..                     |Time Body AccelerationJerkMag mean                              |
|Time.BodyAccJerkMag.std..                      |Time Body AccelerationJerkMag standard deviation                |
|Time.BodyGyroMag.mean..                        |Time Body Gyroscope Mag mean                                    |
|Time.BodyGyroMag.std..                         |Time Body Gyroscope Mag standard deviation                      |
|Time.BodyGyroJerkMag.mean..                    |Time Body Gyroscope JerkMag mean                                |
|Time.BodyGyroJerkMag.std..                     |Time Body Gyroscope JerkMag standard deviation                  |
|Frequency.Domain.BodyAcc.mean...X              |Frequency Domain Body Acceleration mean X Axis                  |
|Frequency.Domain.BodyAcc.mean...Y              |Frequency Domain Body Acceleration mean Y Axis                  |
|Frequency.Domain.BodyAcc.mean...Z              |Frequency Domain Body Acceleration mean Z Axis                  |
|Frequency.Domain.BodyAcc.std...X               |Frequency Domain Body Acceleration standard deviation X Axis    |
|Frequency.Domain.BodyAcc.std...Y               |Frequency Domain Body Acceleration standard deviation Y Axis    |
|Frequency.Domain.BodyAcc.std...Z               |Frequency Domain Body Acceleration standard deviation Z Axis    |
|Frequency.Domain.BodyAcc.meanFreq...X          |Frequency Domain Body Acceleration mean Freq X Axis             |
|Frequency.Domain.BodyAcc.meanFreq...Y          |Frequency Domain Body Acceleration mean Freq Y Axis             |
|Frequency.Domain.BodyAcc.meanFreq...Z          |Frequency Domain Body Acceleration mean Freq Z Axis             |
|Frequency.Domain.BodyAccJerk.mean...X          |Frequency Domain Body AccelerationJerk mean X Axis              |
|Frequency.Domain.BodyAccJerk.mean...Y          |Frequency Domain Body AccelerationJerk mean Y Axis              |
|Frequency.Domain.BodyAccJerk.mean...Z          |Frequency Domain Body AccelerationJerk mean Z Axis              |
|Frequency.Domain.BodyAccJerk.std...X           |Frequency Domain Body AccelerationJerk standard deviation X Axis|
|Frequency.Domain.BodyAccJerk.std...Y           |Frequency Domain Body AccelerationJerk standard deviation Y Axis|
|Frequency.Domain.BodyAccJerk.std...Z           |Frequency Domain Body AccelerationJerk standard deviation Z Axis|
|Frequency.Domain.BodyAccJerk.meanFreq...X      |Frequency Domain Body AccelerationJerk mean Freq X Axis         |
|Frequency.Domain.BodyAccJerk.meanFreq...Y      |Frequency Domain Body AccelerationJerk mean Freq Y Axis         |
|Frequency.Domain.BodyAccJerk.meanFreq...Z      |Frequency Domain Body AccelerationJerk mean Freq Z Axis         |
|Frequency.Domain.BodyGyro.mean...X             |Frequency Domain Body Gyroscope  mean X Axis                    |
|Frequency.Domain.BodyGyro.mean...Y             |Frequency Domain Body Gyroscope  mean Y Axis                    |
|Frequency.Domain.BodyGyro.mean...Z             |Frequency Domain Body Gyroscope  mean Z Axis                    |
|Frequency.Domain.BodyGyro.std...X              |Frequency Domain Body Gyroscope  standard deviation X Axis      |
|Frequency.Domain.BodyGyro.std...Y              |Frequency Domain Body Gyroscope  standard deviation Y Axis      |
|Frequency.Domain.BodyGyro.std...Z              |Frequency Domain Body Gyroscope  standard deviation Z Axis      |
|Frequency.Domain.BodyGyro.meanFreq...X         |Frequency Domain Body Gyroscope  mean Freq X Axis               |
|Frequency.Domain.BodyGyro.meanFreq...Y         |Frequency Domain Body Gyroscope  mean Freq Y Axis               |
|Frequency.Domain.BodyGyro.meanFreq...Z         |Frequency Domain Body Gyroscope  mean Freq Z Axis               |
|Frequency.Domain.BodyAccMag.mean..             |Frequency Domain Body AccelerationMag mean                      |
|Frequency.Domain.BodyAccMag.std..              |Frequency Domain Body AccelerationMag standard deviation        |
|Frequency.Domain.BodyAccMag.meanFreq..         |Frequency Domain Body AccelerationMag mean Freq                 |
|Frequency.Domain.BodyBodyAccJerkMag.mean..     |Frequency Domain BodyBody AccelerationJerkMag mean              |
|Frequency.Domain.BodyBodyAccJerkMag.std..      |Frequency Domain BodyBody AccelerationJerkMag standard deviation|
|Frequency.Domain.BodyBodyAccJerkMag.meanFreq.. |Frequency Domain BodyBody AccelerationJerkMag mean Freq         |
|Frequency.Domain.BodyBodyGyroMag.mean..        |Frequency Domain BodyBody Gyroscope Mag mean                    |
|Frequency.Domain.BodyBodyGyroMag.std..         |Frequency Domain BodyBody Gyroscope Mag standard deviation      |
|Frequency.Domain.BodyBodyGyroMag.meanFreq..    |Frequency Domain BodyBody Gyroscope Mag mean Freq               |
|Frequency.Domain.BodyBodyGyroJerkMag.mean..    |Frequency Domain BodyBody Gyroscope JerkMag mean                |
|Frequency.Domain.BodyBodyGyroJerkMag.std..     |Frequency Domain BodyBody Gyroscope JerkMag standard deviation  |
|Frequency.Domain.BodyBodyGyroJerkMag.meanFreq..|Frequency Domain BodyBody Gyroscope JerkMag mean Freq           |

