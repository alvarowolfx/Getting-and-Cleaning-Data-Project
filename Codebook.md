Codebook
========================================================

The purpose of this file is to describe each variable used in the project and how they was obtained.

Data Dictionary
========================================================

* SubjectID
  * Number that identifies the subject of this research.
  * 1..30
  
* ActivityID
  * Description of the activity of the subject in the time where the data was collected.
  * WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING,LAYING
  
* Body_Acceleration_Mean_Axis_X_Time_Domain
* Body_Acceleration_Mean_Axis_Y_Time_Domain
* Body_Acceleration_Mean_Axis_Z_Time_Domain
* Body_Acceleration_Standard_Deviation_Axis_X_Time_Domain
* Body_Acceleration_Standard_Deviation_Axis_Y_Time_Domain
* Body_Acceleration_Standard_Deviation_Axis_Z_Time_Domain
* Gravity_Acceleration_Mean_Axis_X_Time_Domain
* Gravity_Acceleration_Mean_Axis_Y_Time_Domain
* Gravity_Acceleration_Mean_Axis_Z_Time_Domain
* Gravity_Acceleration_Standard_Deviation_Axis_X_Time_Domain
* Gravity_Acceleration_Standard_Deviation_Axis_Y_Time_Domain
* Gravity_Acceleration_Standard_Deviation_Axis_Z_Time_Domain
* Body_Acceleration_Jerk_Mean_Axis_X_Time_Domain
* Body_Acceleration_Jerk_Mean_Axis_Y_Time_Domain
* Body_Acceleration_Jerk_Mean_Axis_Z_Time_Domain
* Body_Acceleration_Jerk_Standard_Deviation_Axis_X_Time_Domain
* Body_Acceleration_Jerk_Standard_Deviation_Axis_Y_Time_Domain
* Body_Acceleration_Jerk_Standard_Deviation_Axis_Z_Time_Domain
* Body_Gyroscope_Mean_Axis_X_Time_Domain
* Body_Gyroscope_Mean_Axis_Y_Time_Domain
* Body_Gyroscope_Mean_Axis_Z_Time_Domain
* Body_Gyroscope_Standard_Deviation_Axis_X_Time_Domain
* Body_Gyroscope_Standard_Deviation_Axis_Y_Time_Domain
* Body_Gyroscope_Standard_Deviation_Axis_Z_Time_Domain
* Body_Gyroscope_Jerk_Mean_Axis_X_Time_Domain
* Body_Gyroscope_Jerk_Mean_Axis_Y_Time_Domain
* Body_Gyroscope_Jerk_Mean_Axis_Z_Time_Domain
* Body_Gyroscope_Jerk_Standard_Deviation_Axis_X_Time_Domain
* Body_Gyroscope_Jerk_Standard_Deviation_Axis_Y_Time_Domain
* Body_Gyroscope_Jerk_Standard_Deviation_Axis_Z_Time_Domain
* Body_Acceleration_Magnitude_Mean_Time_Domain
* Body_Acceleration_Magnitude_Standard_Deviation_Time_Domain
* Gravity_Acceleration_Magnitude_Mean_Time_Domain
* Gravity_Acceleration_Magnitude_Standard_Deviation_Time_Domain
* Body_Acceleration_Jerk_Magnitude_Mean_Time_Domain
* Body_Acceleration_Jerk_Magnitude_Standard_Deviation_Time_Domain
* Body_Gyroscope_Magnitude_Mean_Time_Domain
* Body_Gyroscope_Magnitude_Standard_Deviation_Time_Domain
* Body_Gyroscope_Jerk_Magnitude_Mean_Time_Domain
* Body_Gyroscope_Jerk_Magnitude_Standard_Deviation_Time_Domain
* Body_Acceleration_Mean_Axis_X_Frequency_Domain
* Body_Acceleration_Mean_Axis_Y_Frequency_Domain
* Body_Acceleration_Mean_Axis_Z_Frequency_Domain
* Body_Acceleration_Standard_Deviation_Axis_X_Frequency_Domain
* Body_Acceleration_Standard_Deviation_Axis_Y_Frequency_Domain
* Body_Acceleration_Standard_Deviation_Axis_Z_Frequency_Domain
* Body_Acceleration_Jerk_Mean_Axis_X_Frequency_Domain
* Body_Acceleration_Jerk_Mean_Axis_Y_Frequency_Domain
* Body_Acceleration_Jerk_Mean_Axis_Z_Frequency_Domain
* Body_Acceleration_Jerk_Standard_Deviation_Axis_X_Frequency_Domain
* Body_Acceleration_Jerk_Standard_Deviation_Axis_Y_Frequency_Domain
* Body_Acceleration_Jerk_Standard_Deviation_Axis_Z_Frequency_Domain
* Body_Gyroscope_Mean_Axis_X_Frequency_Domain
* Body_Gyroscope_Mean_Axis_Y_Frequency_Domain
* Body_Gyroscope_Mean_Axis_Z_Frequency_Domain
* Body_Gyroscope_Standard_Deviation_Axis_X_Frequency_Domain
* Body_Gyroscope_Standard_Deviation_Axis_Y_Frequency_Domain
* Body_Gyroscope_Standard_Deviation_Axis_Z_Frequency_Domain
* Body_Acceleration_Magnitude_Mean_Frequency_Domain
* Body_Acceleration_Magnitude_Standard_Deviation_Frequency_Domain
* Body_Acceleration_Jerk_Magnitude_Mean_Frequency_Domain
* Body_Acceleration_Jerk_Magnitude_Standard_Deviation_Frequency_Domain
* Body_Gyroscope_Magnitude_Mean_Frequency_Domain
* Body_Gyroscope_Magnitude_Standard_Deviation_Frequency_Domain
* Body_Gyroscope_Jerk_Magnitude_Mean_Frequency_Domain
* Body_Gyroscope_Jerk_Magnitude_Standard_Deviation_Frequency_Domain
  * The above variables come from the accelerometer and gyroscope 3-axial raw signals of the Acceleration on Axis X,Y and Z and the Angular Velocity on Axis X,Y and Z. The variables ending with Time Domain were captured at a constant rate of 50 Hz and then is calculated the Mean or the Standard Deviation of the values. The acceleration signal was separated into body and gravity acceleration signals (variables starting with (Body and Gravity). The variables ending with Frequency Domain were calculated using Fast Fourier Transform (FFT) applied on the Time Domain values.
  * The values are normalized and bounded in [-1,1]

Work done on the data
========================================================

The work done on the data from the project is explained on each function/step of the R script of this repository. 
