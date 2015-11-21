Human Activity Recognition Using Smartphones Data Sets

There are two tables produced by the run_analysis.R script:

1. A subset of the full accelerometer and gyroscope data, containing the means (of both value and frequency) and standard deviations of the recorded values and merge the subject #, the activity #, activity name. No additional transformations were performed on the data.

2. A tidy summary of the accelerometer and gyroscope data above. This table provides the mean of each feature for every subject / activity combination.

Table 1 (dataMeanStd)

For the original data set see: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Source:
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2) 1 - Smartlab - Non-Linear Complex Systems Laboratory DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.  2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain activityrecognition '@' smartlab.ws

Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.   The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]  An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.

Attribute Information:
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 79-feature vector with the means, frequency means and standard deviations of the time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

Feature Selection: 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were included in the dataset from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

The resulting feature names are in the format: measurement - variable - axis. For example, the mean measurement of tBodyAcc’s X axis is labelled: tBodyAcc-mean()-X. I have kept the original names since they are adequately descriptive and can easily be traced back to the original dataset if need be.

Note all of the accelerometer and gyroscope features are normalized and bounded between -1 and 1.

These features were combined with subject and activity information to complete the table. The full list of features are the following:

1. subject

A number between 1 and 30 representing the group of 30 volunteers within an age bracket of 19-48 years.

2. activity

A number representing one of six activities performed by each participant (1. WALKING, 2. WALKING_UPSTAIRS, 3. WALKING_DOWNSTAIRS, 4. SITTING, 5. STANDING, 6. LAYING).

3. activity.full

The full text describing the activity that is associated with the number indicated in the activity feature. Values include: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

4. tBodyAcc-mean()-X

Mean of the time domain signal of the body accelerometer’s X axis.

5. tBodyAcc-mean()-Y

Mean of the time domain signal of the body accelerometer’s Y axis.

6. tBodyAcc-mean()-Z

Mean of the time domain signal of the body accelerometer’s Z axis.

7. tBodyAcc-std()-X

Standard deviation of the time domain signal of the body accelerometer’s X axis.

8. tBodyAcc-std()-Y

Standard deviation of the time domain signal of the body accelerometer’s Y axis.

9. tBodyAcc-std()-Z

Standard deviation of the time domain signal of the body accelerometer’s Z axis.

10. tGravityAcc-mean()-X

Mean of the time domain signal of the gravity accelerometer’s X axis.

11. tGravityAcc-mean()-Y

Mean of the time domain signal of the gravity accelerometer’s Y axis.

12. tGravityAcc-mean()-Z

Mean of the time domain signal of the gravity accelerometer’s Z axis.

13. tGravityAcc-std()-X

Standard deviation of the time domain signal of the gravity accelerometer’s X axis.

14. tGravityAcc-std()-Y

Standard deviation of the time domain signal of the gravity accelerometer’s Y axis.

15. tGravityAcc-std()-Z

Standard deviation of the time domain signal of the gravity accelerometer’s Z axis.

16. tBodyAccJerk-mean()-X

Mean of the time domain Jerk signal of the body accelerometer’s X axis.

17. tBodyAccJerk-mean()-Y

Mean of the time domain Jerk signal of the body accelerometer’s Y axis.

18. tBodyAccJerk-mean()-Z

Mean of the time domain Jerk signal of the body accelerometer’s Z axis.

19. tBodyAccJerk-std()-X

Standard deviation of the time domain Jerk signal of the body accelerometer’s X axis.

20. tBodyAccJerk-std()-Y

Standard deviation of the time domain Jerk signal of the body accelerometer’s Y axis.

21. tBodyAccJerk-std()-Z

Standard deviation of the time domain Jerk signal of the body accelerometer’s Z axis.

22. tBodyGyro-mean()-X

Mean of the time domain signal of the body gyroscope’s X axis.

23. tBodyGyro-mean()-Y

Mean of the time domain signal of the body gyroscope’s Y axis.

24. tBodyGyro-mean()-Z

Mean of the time domain signal of the body gyroscope’s Z axis.

25. tBodyGyro-std()-X

Standard deviation of the time domain signal of the body gyroscope’s X axis.

26. tBodyGyro-std()-Y

Standard deviation of the time domain signal of the body gyroscope’s Y axis.

27. tBodyGyro-std()-Z

Standard deviation of the time domain signal of the body gyroscope’s Z axis.

28. tBodyGyroJerk-mean()-X

Mean of the time domain jerk signal of the body gyroscope’s X axis.

29. tBodyGyroJerk-mean()-Y

Mean of the time domain jerk signal of the body gyroscope’s Y axis.

30. tBodyGyroJerk-mean()-Z

Mean of the time domain jerk signal of the body gyroscope’s Z axis.

31. tBodyGyroJerk-std()-X

Standard deviation of the time domain jerk signal of the body gyroscope’s X axis.

32. tBodyGyroJerk-std()-Y

Standard deviation of the time domain jerk signal of the body gyroscope’s Y axis.

33. tBodyGyroJerk-std()-Z

Standard deviation of the time domain jerk signal of the body gyroscope’s Z axis.

34. tBodyAccMag-mean()

Mean of the magnitude of the time domain signal of the body accelerometer using the Euclidean norm.

35. tBodyAccMag-std()

Standard deviation of the magnitude of the time domain signal of the body accelerometer using the Euclidean norm.

36. tGravityAccMag-mean()

Mean of the magnitude of the time domain signal of the gravity accelerometer using the Euclidean norm.

37. tGravityAccMag-std()

Standard deviation of the magnitude of the time domain signal of the gravity accelerometer using the Euclidean norm.

38. tBodyAccJerkMag-mean()

Mean of the magnitude of the time domain jerk signal of the body accelerometer using the Euclidean norm.

39. tBodyAccJerkMag-std()

Standard deviation of the magnitude of the time domain jerk signal of the body accelerometer using the Euclidean norm.

40. tBodyGyroMag-mean()

Mean of the magnitude of the time domain signal of the body gyroscope using the Euclidean norm.

41. tBodyGyroMag-std()

Standard deviation of the magnitude of the time domain signal of the body gyroscope using the Euclidean norm.

42. tBodyGyroJerkMag-mean()

Mean of the magnitude of the time domain jerk signal of the body gyroscope using the Euclidean norm.

43. tBodyGyroJerkMag-std()

Standard deviation of the magnitude of the time domain jerk signal of the body gyroscope using the Euclidean norm.

44. fBodyAcc-mean()-X

Mean of the frequency domain signal of the body accelerometer on the X axis.

45. fBodyAcc-mean()-Y

Mean of the frequency domain signal of the body accelerometer on the Y axis.

46. fBodyAcc-mean()-Z

Mean of the frequency domain signal of the body accelerometer on the Z axis.

47. fBodyAcc-std()-X

Standard deviation of the frequency domain signal of the body accelerometer on the X axis.

48. fBodyAcc-std()-Y

Standard deviation of the frequency domain signal of the body accelerometer on the Y axis.

49. fBodyAcc-std()-Z

Standard deviation of the frequency domain signal of the body accelerometer on the Z axis.

50. fBodyAcc-meanFreq()-X

Mean frequency of the frequency domain signal of the body accelerometer on the X axis.

51. fBodyAcc-meanFreq()-Y

Mean frequency of the frequency domain signal of the body accelerometer on the Y axis.

52. fBodyAcc-meanFreq()-Z

Mean frequency of the frequency domain signal of the body accelerometer on the Z axis.

53. fBodyAccJerk-mean()-X

Mean of the frequency domain Jerk signal of the body accelerometer’s X axis.

54. fBodyAccJerk-mean()-Y

Mean of the frequency domain Jerk signal of the body accelerometer’s Y axis.

55. fBodyAccJerk-mean()-Z

Mean of the frequency domain Jerk signal of the body accelerometer’s Z axis.

56. fBodyAccJerk-std()-X

Standard deviation of the frequency domain Jerk signal of the body accelerometer’s X axis.

57. fBodyAccJerk-std()-Y

Standard deviation of the frequency domain Jerk signal of the body accelerometer’s Y axis.

58. fBodyAccJerk-std()-Z

Standard deviation of the frequency domain Jerk signal of the body accelerometer’s Z axis.

59. fBodyAccJerk-meanFreq()-X

Mean frequency of the frequency domain signal for the body accelerometer’s X axis.

60. fBodyAccJerk-meanFreq()-Y

Mean frequency of the frequency domain signal for the body accelerometer’s Y axis.

61. fBodyAccJerk-meanFreq()-Z

Mean frequency of the frequency domain signal for the body accelerometer’s Z axis.

62. fBodyGyro-mean()-X

Mean of the frequency domain signal for the body gyroscope’s X axis.

63. fBodyGyro-mean()-Y

Mean of the frequency domain signal for the body gyroscope’s Y axis.

64. fBodyGyro-mean()-Z

Mean of the frequency domain signal for the body gyroscope’s Z axis.

65. fBodyGyro-std()-X

Standard deviation of the frequency domain signal for the body gyroscope’s X axis.

66. fBodyGyro-std()-Y

Standard deviation of the frequency domain signal for the body gyroscope’s Y axis.

67. fBodyGyro-std()-Z

Standard deviation of the frequency domain signal for the body gyroscope’s Z axis.

68. fBodyGyro-meanFreq()-X

Mean frequency for the frequency domain signal of the body gyroscope’s X axis.

69. fBodyGyro-meanFreq()-Y

Mean frequency for the frequency domain signal of the body gyroscope’s Y axis.

70. fBodyGyro-meanFreq()-Z

Mean frequency for the frequency domain signal of the body gyroscope’s Z axis.

71. fBodyAccMag-mean()

Mean of the magnitude of the frequency domain signal of the body accelerometer using the Euclidean norm.

72. fBodyAccMag-std()

Standard deviation of the magnitude of the frequency domain signal of the body accelerometer using the Euclidean norm.

73. fBodyAccMag-meanFreq()

Mean frequency of the magnitude of the frequency domain signal of the body accelerometer using the Euclidean norm.

74. fBodyBodyAccJerkMag-mean()

Mean of the magnitude of the frequency domain jerk signal of the body accelerometer using the Euclidean norm.

75. fBodyBodyAccJerkMag-std()

Standard deviation of the magnitude of the frequency domain jerk signal of the body accelerometer using the Euclidean norm.

76. fBodyBodyAccJerkMag-meanFreq()

Mean frequency of the magnitude of the frequency domain jerk signal of the body accelerometer using the Euclidean norm.

77. fBodyBodyGyroMag-mean()

Mean of the magnitude of the frequency domain signal of the body gyroscope using the Euclidean norm.

78. fBodyBodyGyroMag-std()

Standard deviation of the magnitude of the frequency domain signal of the body gyroscope using the Euclidean norm.

79. fBodyBodyGyroMag-meanFreq()

Mean frequency of the magnitude of the frequency domain signal of the body gyroscope using the Euclidean norm.

80. fBodyBodyGyroJerkMag-mean()

Mean of the magnitude of the frequency domain jerk signal of the body gyroscope using the Euclidean norm.

81. fBodyBodyGyroJerkMag-std()

Standard deviation of the magnitude of the frequency domain jerk signal of the body gyroscope using the Euclidean norm.

82. fBodyBodyGyroJerkMag-meanFreq()

Mean frequency of the magnitude of the frequency domain jerk signal of the body gyroscope using the Euclidean norm.


Table 2 (dataMeansBySubjectActivity)

This table contains a summary of Table 1 that includes the mean of each of the accelerometer and gyroscope means, mean frequencies and standard deviations above for each combination of participant and activity.

The features are as follows:

1. subject

A number between 1 and 30 representing the group of 30 volunteers within an age bracket of 19-48 years.

2. activity.full

The full text describing the activity that is associated with the number indicated in the activity feature. Values include: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

3. tBodyAcc-mean()-X

Mean of the means of the time domain signal of the body accelerometer’s X axis.

4. tBodyAcc-mean()-Y

Mean of the means of the time domain signal of the body accelerometer’s Y axis.

5. tBodyAcc-mean()-Z

Mean of the means of the time domain signal of the body accelerometer’s Z axis.

6. tBodyAcc-std()-X

Mean of the standard deviations of the time domain signal of the body accelerometer’s X axis.

7. tBodyAcc-std()-Y

Mean of the standard deviations of the time domain signal of the body accelerometer’s Y axis.

8. tBodyAcc-std()-Z

Mean of the standard deviations of the time domain signal of the body accelerometer’s Z axis.

9. tGravityAcc-mean()-X

Mean of the means of the time domain signal of the gravity accelerometer’s X axis.

10. tGravityAcc-mean()-Y

Mean of the means of the time domain signal of the gravity accelerometer’s Y axis.

11. tGravityAcc-mean()-Z

Mean of the means of the time domain signal of the gravity accelerometer’s Z axis.

12. tGravityAcc-std()-X

Mean of the standard deviations of the time domain signal of the gravity accelerometer’s X axis.

13. tGravityAcc-std()-Y

Mean of the standard deviations of the time domain signal of the gravity accelerometer’s Y axis.

14. tGravityAcc-std()-Z

Mean of the standard deviations of the time domain signal of the gravity accelerometer’s Z axis.

15. tBodyAccJerk-mean()-X

Mean of the means of the time domain Jerk signal of the body accelerometer’s X axis.

16. tBodyAccJerk-mean()-Y

Mean of the means of the time domain Jerk signal of the body accelerometer’s Y axis.

17. tBodyAccJerk-mean()-Z

Mean of the means of the time domain Jerk signal of the body accelerometer’s Z axis.

18. tBodyAccJerk-std()-X

Mean of the standard deviations of the time domain Jerk signal of the body accelerometer’s X axis.

19. tBodyAccJerk-std()-Y

Mean of the standard deviations of the time domain Jerk signal of the body accelerometer’s Y axis.

20. tBodyAccJerk-std()-Z

Mean of the standard deviations of the time domain Jerk signal of the body accelerometer’s Z axis.

21. tBodyGyro-mean()-X

Mean of the means of the time domain signal of the body gyroscope’s X axis.

22. tBodyGyro-mean()-Y

Mean of the time means of the domain signal of the body gyroscope’s Y axis.

23. tBodyGyro-mean()-Z

Mean of the means of the time domain signal of the body gyroscope’s Z axis.

24. tBodyGyro-std()-X

Mean of the standard deviations of the time domain signal of the body gyroscope’s X axis.

25. tBodyGyro-std()-Y

Mean of the standard deviations of the time domain signal of the body gyroscope’s Y axis.

26. tBodyGyro-std()-Z

Mean of the standard deviations of the time domain signal of the body gyroscope’s Z axis.

27. tBodyGyroJerk-mean()-X

Mean of the means of the time domain jerk signal of the body gyroscope’s X axis.

28. tBodyGyroJerk-mean()-Y

Mean of the means of the time domain jerk signal of the body gyroscope’s Y axis.

29. tBodyGyroJerk-mean()-Z

Mean of the means of the time domain jerk signal of the body gyroscope’s Z axis.

30. tBodyGyroJerk-std()-X

Mean of the standard deviations of the time domain jerk signal of the body gyroscope’s X axis.

31. tBodyGyroJerk-std()-Y

Mean of the standard deviations of the time domain jerk signal of the body gyroscope’s Y axis.

32. tBodyGyroJerk-std()-Z

Mean of the standard deviations of the time domain jerk signal of the body gyroscope’s Z axis.

33. tBodyAccMag-mean()

Mean of the means of the magnitude of the time domain signal of the body accelerometer using the Euclidean norm.

34. tBodyAccMag-std()

Mean of the standard deviations of the magnitude of the time domain signal of the body accelerometer using the Euclidean norm.

35. tGravityAccMag-mean()

Mean of the means of the magnitude of the time domain signal of the gravity accelerometer using the Euclidean norm.

36. tGravityAccMag-std()

Mean of the standard deviations of the magnitude of the time domain signal of the gravity accelerometer using the Euclidean norm.

37. tBodyAccJerkMag-mean()

Mean of the means of the magnitude of the time domain jerk signal of the body accelerometer using the Euclidean norm.

38. tBodyAccJerkMag-std()

Mean of the standard deviations of the magnitude of the time domain jerk signal of the body accelerometer using the Euclidean norm.

39. tBodyGyroMag-mean()

Mean of the means of the magnitude of the time domain signal of the body gyroscope using the Euclidean norm.

40. tBodyGyroMag-std()

Mean of the standard deviations of the magnitude of the time domain signal of the body gyroscope using the Euclidean norm.

41. tBodyGyroJerkMag-mean()

Mean of the means of the magnitude of the time domain jerk signal of the body gyroscope using the Euclidean norm.

42. tBodyGyroJerkMag-std()

Mean of the standard deviations of the magnitude of the time domain jerk signal of the body gyroscope using the Euclidean norm.

43. fBodyAcc-mean()-X

Mean of the means of the frequency domain signal of the body accelerometer on the X axis.

44. fBodyAcc-mean()-Y

Mean of the means of the frequency domain signal of the body accelerometer on the Y axis.

45. fBodyAcc-mean()-Z

Mean of the means of the frequency domain signal of the body accelerometer on the Z axis.

46. fBodyAcc-std()-X

Mean of the standard deviations of the frequency domain signal of the body accelerometer on the X axis.

47. fBodyAcc-std()-Y

Mean of the standard deviations of the frequency domain signal of the body accelerometer on the Y axis.

48. fBodyAcc-std()-Z

Mean of the standard deviations of the frequency domain signal of the body accelerometer on the Z axis.

49. fBodyAcc-meanFreq()-X

Mean of the mean frequencies of the frequency domain signal of the body accelerometer on the X axis.

50. fBodyAcc-meanFreq()-Y

Mean of the mean frequencies of the frequency domain signal of the body accelerometer on the Y axis.

51. fBodyAcc-meanFreq()-Z

Mean of the mean frequencies of the frequency domain signal of the body accelerometer on the Z axis.

52. fBodyAccJerk-mean()-X

Mean of the means of the frequency domain Jerk signal of the body accelerometer’s X axis.

53. fBodyAccJerk-mean()-Y

Mean of the means of the frequency domain Jerk signal of the body accelerometer’s Y axis.

54. fBodyAccJerk-mean()-Z

Mean of the means of the frequency domain Jerk signal of the body accelerometer’s Z axis.

55. fBodyAccJerk-std()-X

Mean of the standard deviations of the frequency domain Jerk signal of the body accelerometer’s X axis.

56. fBodyAccJerk-std()-Y

Mean of the standard deviations of the frequency domain Jerk signal of the body accelerometer’s Y axis.

57. fBodyAccJerk-std()-Z

Mean of the standard deviations of the frequency domain Jerk signal of the body accelerometer’s Z axis.

58. fBodyAccJerk-meanFreq()-X

Mean of the mean frequencies of the frequency domain signal for the body accelerometer’s X axis.

59. fBodyAccJerk-meanFreq()-Y

Mean of the mean frequencies of the frequency domain signal for the body accelerometer’s Y axis.

60. fBodyAccJerk-meanFreq()-Z

Mean of the mean frequencies of the frequency domain signal for the body accelerometer’s Z axis.

61. fBodyGyro-mean()-X

Mean of the means of the frequency domain signal for the body gyroscope’s X axis.

62. fBodyGyro-mean()-Y

Mean of the means of the frequency domain signal for the body gyroscope’s Y axis.

63. fBodyGyro-mean()-Z

Mean of the means of the frequency domain signal for the body gyroscope’s Z axis.

64. fBodyGyro-std()-X

Mean of the standard deviations of the frequency domain signal for the body gyroscope’s X axis.

65. fBodyGyro-std()-Y

Mean of the standard deviations of the frequency domain signal for the body gyroscope’s Y axis.

66. fBodyGyro-std()-Z

Mean of the standard deviations of the frequency domain signal for the body gyroscope’s Z axis.

67. fBodyGyro-meanFreq()-X

Mean of the mean frequencies for the frequency domain signal of the body gyroscope’s X axis.

68. fBodyGyro-meanFreq()-Y

Mean of the mean frequencies for the frequency domain signal of the body gyroscope’s Y axis.

69. fBodyGyro-meanFreq()-Z

Mean of the mean frequencies for the frequency domain signal of the body gyroscope’s Z axis.

70. fBodyAccMag-mean()

Mean of the means of the magnitude of the frequency domain signal of the body accelerometer using the Euclidean norm.

71. fBodyAccMag-std()

Mean of the standard deviations of the magnitude of the frequency domain signal of the body accelerometer using the Euclidean norm.

72. fBodyAccMag-meanFreq()

Mean of the mean frequencies of the magnitude of the frequency domain signal of the body accelerometer using the Euclidean norm.

73. fBodyBodyAccJerkMag-mean()

Mean of the means of the magnitude of the frequency domain jerk signal of the body accelerometer using the Euclidean norm.

74. fBodyBodyAccJerkMag-std()

Mean of the standard deviations of the magnitude of the frequency domain jerk signal of the body accelerometer using the Euclidean norm.

75. fBodyBodyAccJerkMag-meanFreq()

Mean of the mean frequencies of the magnitude of the frequency domain jerk signal of the body accelerometer using the Euclidean norm.

76. fBodyBodyGyroMag-mean()

Mean of the means of the magnitude of the frequency domain signal of the body gyroscope using the Euclidean norm.

77. fBodyBodyGyroMag-std()

Mean of the standard deviations of the magnitude of the frequency domain signal of the body gyroscope using the Euclidean norm.

78. fBodyBodyGyroMag-meanFreq()

Mean of the mean frequencies of the magnitude of the frequency domain signal of the body gyroscope using the Euclidean norm.

79. fBodyBodyGyroJerkMag-mean()

Mean of the means of the magnitude of the frequency domain jerk signal of the body gyroscope using the Euclidean norm.

80. fBodyBodyGyroJerkMag-std()

Mean of the standard deviations of the magnitude of the frequency domain jerk signal of the body gyroscope using the Euclidean norm.

81. fBodyBodyGyroJerkMag-meanFreq()

Mean of the mean frequencies of the magnitude of the frequency domain jerk signal of the body gyroscope using the Euclidean norm.
