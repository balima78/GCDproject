Description of the DATA
========================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix ‘t’ to denote time) were captured at a constant rate of 50 Hz. 
and the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) – both using a low pass Butterworth filter.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the ‘f’ to indicate frequency domain signals).


Description of abbreviations of measurements
------------------------------------------
leading t or f is based on time or frequency measurements.

1. Body = related to body movement
2. Gravity = acceleration of gravity
3. Acc = accelerometer measurement
4. Gyro = gyroscopic measurements
5. Jerk = sudden movement acceleration
6. Mag = magnitude of movement
7. mean and SD are calculated for each subject for each activity for each mean and SD measurements.

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.

### Variable Descriptions


| Variable | Description
-----------|-------------
| subject | Subject ID
| tbodyacc.mean.x | Mean time for acceleration of body for X direction
| tbodyacc.mean.y | Mean time for acceleration of body for Y direction
| tbodyacc.mean.z | Mean time for acceleration of body for Z direction
| tbodyacc.std.x | Standard deviation of time for acceleration of body for X direction
| tbodyacc.std.y | Standard deviation of time for acceleration of body for Y direction
| tbodyacc.std.z | Standard deviation of time for acceleration of body for Z direction
| tgravityacc.mean.x | Mean time of acceleration of gravity for X direction
| tgravityacc.mean.y | Mean time of acceleration of gravity for Y direction
| tgravityacc.mean.z | Mean time of acceleration of gravity for Z direction
| tgravityacc.std.x | Standard deviation of time of acceleration of gravity for X direction
| tgravityacc.std.y | Standard deviation of time of acceleration of gravity for Y direction
| tgravityacc.std.z | Standard deviation of time of acceleration of gravity for Z direction
| tbodyaccjerk.mean.x | Mean time of body acceleration jerk for X direction
| tbodyaccjerk.mean.y | Mean time of body acceleration jerk for Y direction
| tbodyaccjerk.mean.z | Mean time of body acceleration jerk for Z direction
| tbodyaccjerk.std.x | Standard deviation of time of body acceleration jerk for X direction
| tbodyaccjerk.std.y | Standard deviation of time of body acceleration jerk for Y direction
| tbodyaccjerk.std.z | Standard deviation of time of body acceleration jerk for Z direction
| tbodygyro.mean.x | Mean body gyroscope measurement for X direction
| tbodygyro.mean.y | Mean body gyroscope measurement for Y direction
| tbodygyro.mean.z | Mean body gyroscope measurement for Z direction
| tbodygyro.std.x | Standard deviation of body gyroscope measurement for X direction
| tbodygyro.std.y | Standard deviation of body gyroscope measurement for Y direction
| tbodygyro.std.z | Standard deviation of body gyroscope measurement for Z direction
| tbodygyrojerk.mean.x | Mean jerk signal of body for X direction
| tbodygyrojerk.mean.y | Mean jerk signal of body for Y direction
| tbodygyrojerk.mean.z | Mean jerk signal of body for Z direction
| tbodygyrojerk.std.x | Standard deviation of jerk signal of body for X direction
| tbodygyrojerk.std.y | Standard deviation of jerk signal of body for Y direction
| tbodygyrojerk.std.z | Standard deviation of jerk signal of body for Z direction
| tbodyaccmag.mean | Mean magnitude of body Acc
| tbodyaccmag.std | Standard deviation of magnitude of body Acc
| tgravityaccmag.mean | Mean gravity acceleration magnitude
| tgravityaccmag.std | Standard deviation of gravity acceleration magnitude
| tbodyaccjerkmag.mean | Mean magnitude of body acceleration jerk
| tbodyaccjerkmag.std | Standard deviation of magnitude of body acceleration jerk
| tbodygyromag.mean | Mean magnitude of body gyroscope measurement
| tbodygyromag.std | Standard deviation of magnitude of body gyroscope measurement
| tbodygyrojerkmag.mean | Mean magnitude of body body gyroscope jerk measurement
| tbodygyrojerkmag.std | Standard deviation of magnitude of body body gyroscope jerk measurement
| fbodyacc.mean.x | Mean frequency of body acceleration for X direction
| fbodyacc.mean.y | Mean frequency of body acceleration for Y direction
| fbodyacc.mean.z | Mean frequency of body acceleration for Z direction
| fbodyacc.std.x | Standard deviation of frequency of body acceleration for X direction
| fbodyacc.std.y | Standard deviation of frequency of body acceleration for Y direction
| fbodyacc.std.z | Standard deviation of frequency of body acceleration for Z direction
| fbodyaccjerk.mean.x | Mean frequency of body accerlation jerk for X direction
| fbodyaccjerk.mean.y | Mean frequency of body accerlation jerk for Y direction
| fbodyaccjerk.mean.z | Mean frequency of body accerlation jerk for Z direction
| fbodyaccjerk.std.x | Standard deviation frequency of body accerlation jerk for X direction
| fbodyaccjerk.std.y | Standard deviation frequency of body accerlation jerk for Y direction
| fbodyaccjerk.std.z | Standard deviation frequency of body accerlation jerk for Z direction
| fbodygyro.mean.x | Mean frequency of body gyroscope measurement for X direction
| fbodygyro.mean.y | Mean frequency of body gyroscope measurement for Y direction
| fbodygyro.mean.z | Mean frequency of body gyroscope measurement for Z direction
| fbodygyro.std.x | Standard deviation frequency of body gyroscope measurement for X direction
| fbodygyro.std.y | Standard deviation frequency of body gyroscope measurement for Y direction
| fbodygyro.std.z | Standard deviation frequency of body gyroscope measurement for Z direction
| fbodyaccmag.mean | Mean frequency of body acceleration magnitude
| fbodyaccmag.std | Standard deviation of frequency of body acceleration magnitude
| fbodybodyaccjerkmag.mean | Mean frequency of body acceleration jerk magnitude
| fbodybodyaccjerkmag.std | Standard deviation of frequency of body acceleration jerk magnitude
| fbodybodygyromag.mean | Mean frequency of magnitude of body gyroscope measurement
| fbodybodygyromag.std | Standard deviation of frequency of magnitude of body gyroscope measurement
| fbodybodygyrojerkmag.mean | Mean frequency of magnitude of body gyroscope jerk measurement
| fbodybodygyrojerkmag.std | Standard deviation frequency of magnitude of body gyroscope jerk measurement
| activity | The activity performed

The set of variables that were estimated from these signals are:
-------------------

mean(): Mean value

std(): Standard deviation

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
