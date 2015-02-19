Study Design
============

This dataset is a tidy data representation of the original data source from [Anguita et. al., 2013](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The original data source was divided into two subsets, "train" and "test". The subject, X and Y data from these two subsets were merged into a single dataset, so the first 7352 rows correspond to the training subset and the remaining 2947 to the test subset. The variable name assigned to the subject's data was "subject".

The column names for the X data come from the different measures taken with the smartphones. Among all features originally collected, only those that estimated the mean and standard deviation of the corresponding measure were used, e.g. tBodyAcc-mean()-X and tBodyAcc-std()-X. The column selected were those that matched the regular expression `-mean()|-std()`.

Column names were renamed, replacing "-" for "\_" and removing the parenthesis from them in order to avoid naming conflicts with R, e.g. tBodyAcc-mean()-X was renamed to tBodyAcc\_mean\_X.

Originally, the Y data was given as integers. Each integer represented a given activity. We replaced the integer by the corresponding activity using the information provided in the original data source. Therefore, the possible values for the activities are: LAYING, SITTING, STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS. The variable name assigned to the Y data was "activity". 

Finally, the merged dataset was grouped by activity and subject and for each group the mean of the different measures was obtained. The result is a tidy dataset of 180 observations and 68 variables: the first two variables define the group (activity and subject) and the remaining 66 variables represent the mean of the selected measures in the given group, e.g. tBodyAcc\_mean\_X represents the mean of the original tBodyAcc-mean()-X estimations observed for the given subject during the given activity.

The following section is an extract from the original documentation. It describes in detail how the features were selected during the original experiment.

Feature Selection
-----------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

The estimations combined with the different signals resulted in original variable names like tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, ..., tBodyAccMag-mean(), tBodyAccMag-std(), etc.

Code Book
=========

<table>
    <tr>
        <th>Column number</th>
        <th>Variable name</th>
        <th>Description</th>
    </tr>
    <tr>
        <td>1</td>
        <td>activity</td>
        <td><p>Activity that the subject was performing during the observation.</p><p>Factor w/ 6 levels: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS.</p></td>
    </tr>
    <tr>
        <td>2</td>
        <td>subject</td>
        <td><p>The subject (person) that performed the activity. Subjects are identify with factor integers.</p><p>Factor w/ 30 levels: 1, 2, 3, ..., 28, 29, 30</p></td>
    </tr>
    <tr>
        <td>3</td>
        <td>tBodyAcc_mean_X</td>
        <td>mean of the original measure tBodyAcc-mean()-X for the given group</td>
    </tr>
    <tr>
        <td>4</td>
        <td>tBodyAcc_mean_Y</td>
        <td>mean of the original measure tBodyAcc-mean()-Y for the given group</td>
    </tr>
    <tr>
        <td>5</td>
        <td>tBodyAcc_mean_Z</td>
        <td>mean of the original measure tBodyAcc-mean()-Z for the given group</td>
    </tr>
    <tr>
        <td>6</td>
        <td>tBodyAcc_std_X</td>
        <td>mean of the original measure tBodyAcc-std()-X for the given group</td>
    </tr>
    <tr>
        <td>7</td>
        <td>tBodyAcc_std_Y</td>
        <td>mean of the original measure tBodyAcc-std()-Y for the given group</td>
    </tr>
    <tr>
        <td>8</td>
        <td>tBodyAcc_std_Z</td>
        <td>mean of the original measure tBodyAcc-std()-Z for the given group</td>
    </tr>
    <tr>
        <td>9</td>
        <td>tGravityAcc_mean_X</td>
        <td>mean of the original measure tGravityAcc-mean()-X for the given group</td>
    </tr>
    <tr>
        <td>10</td>
        <td>tGravityAcc_mean_Y</td>
        <td>mean of the original measure tGravityAcc-mean()-Y for the given group</td>
    </tr>
    <tr>
        <td>11</td>
        <td>tGravityAcc_mean_Z</td>
        <td>mean of the original measure tGravityAcc-mean()-Z for the given group</td>
    </tr>
    <tr>
        <td>12</td>
        <td>tGravityAcc_std_X</td>
        <td>mean of the original measure tGravityAcc-std()-X for the given group</td>
    </tr>
    <tr>
        <td>13</td>
        <td>tGravityAcc_std_Y</td>
        <td>mean of the original measure tGravityAcc-std()-Y for the given group</td>
    </tr>
    <tr>
        <td>14</td>
        <td>tGravityAcc_std_Z</td>
        <td>mean of the original measure tGravityAcc-std()-Z for the given group</td>
    </tr>
    <tr>
        <td>15</td>
        <td>tBodyAccJerk_mean_X</td>
        <td>mean of the original measure tBodyAccJerk-mean()-X for the given group</td>
    </tr>
    <tr>
        <td>16</td>
        <td>tBodyAccJerk_mean_Y</td>
        <td>mean of the original measure tBodyAccJerk-mean()-Y for the given group</td>
    </tr>
    <tr>
        <td>17</td>
        <td>tBodyAccJerk_mean_Z</td>
        <td>mean of the original measure tBodyAccJerk-mean()-Z for the given group</td>
    </tr>
    <tr>
        <td>18</td>
        <td>tBodyAccJerk_std_X</td>
        <td>mean of the original measure tBodyAccJerk-std()-X for the given group</td>
    </tr>
    <tr>
        <td>19</td>
        <td>tBodyAccJerk_std_Y</td>
        <td>mean of the original measure tBodyAccJerk-std()-Y for the given group</td>
    </tr>
    <tr>
        <td>20</td>
        <td>tBodyAccJerk_std_Z</td>
        <td>mean of the original measure tBodyAccJerk-std()-Z for the given group</td>
    </tr>
    <tr>
        <td>21</td>
        <td>tBodyGyro_mean_X</td>
        <td>mean of the original measure tBodyGyro-mean()-X for the given group</td>
    </tr>
    <tr>
        <td>22</td>
        <td>tBodyGyro_mean_Y</td>
        <td>mean of the original measure tBodyGyro-mean()-Y for the given group</td>
    </tr>
    <tr>
        <td>23</td>
        <td>tBodyGyro_mean_Z</td>
        <td>mean of the original measure tBodyGyro-mean()-Z for the given group</td>
    </tr>
    <tr>
        <td>24</td>
        <td>tBodyGyro_std_X</td>
        <td>mean of the original measure tBodyGyro-std()-X for the given group</td>
    </tr>
    <tr>
        <td>25</td>
        <td>tBodyGyro_std_Y</td>
        <td>mean of the original measure tBodyGyro-std()-Y for the given group</td>
    </tr>
    <tr>
        <td>26</td>
        <td>tBodyGyro_std_Z</td>
        <td>mean of the original measure tBodyGyro-std()-Z for the given group</td>
    </tr>
    <tr>
        <td>27</td>
        <td>tBodyGyroJerk_mean_X</td>
        <td>mean of the original measure tBodyGyroJerk-mean()-X for the given group</td>
    </tr>
    <tr>
        <td>28</td>
        <td>tBodyGyroJerk_mean_Y</td>
        <td>mean of the original measure tBodyGyroJerk-mean()-Y for the given group</td>
    </tr>
    <tr>
        <td>29</td>
        <td>tBodyGyroJerk_mean_Z</td>
        <td>mean of the original measure tBodyGyroJerk-mean()-Z for the given group</td>
    </tr>
    <tr>
        <td>30</td>
        <td>tBodyGyroJerk_std_X</td>
        <td>mean of the original measure tBodyGyroJerk-std()-X for the given group</td>
    </tr>
    <tr>
        <td>31</td>
        <td>tBodyGyroJerk_std_Y</td>
        <td>mean of the original measure tBodyGyroJerk-std()-Y for the given group</td>
    </tr>
    <tr>
        <td>32</td>
        <td>tBodyGyroJerk_std_Z</td>
        <td>mean of the original measure tBodyGyroJerk-std()-Z for the given group</td>
    </tr>
    <tr>
        <td>33</td>
        <td>tBodyAccMag_mean</td>
        <td>mean of the original measure tBodyAccMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>34</td>
        <td>tBodyAccMag_std</td>
        <td>mean of the original measure tBodyAccMag-std() for the given group</td>
    </tr>
    <tr>
        <td>35</td>
        <td>tGravityAccMag_mean</td>
        <td>mean of the original measure tGravityAccMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>36</td>
        <td>tGravityAccMag_std</td>
        <td>mean of the original measure tGravityAccMag-std() for the given group</td>
    </tr>
    <tr>
        <td>37</td>
        <td>tBodyAccJerkMag_mean</td>
        <td>mean of the original measure tBodyAccJerkMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>38</td>
        <td>tBodyAccJerkMag_std</td>
        <td>mean of the original measure tBodyAccJerkMag-std() for the given group</td>
    </tr>
    <tr>
        <td>39</td>
        <td>tBodyGyroMag_mean</td>
        <td>mean of the original measure tBodyGyroMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>40</td>
        <td>tBodyGyroMag_std</td>
        <td>mean of the original measure tBodyGyroMag-std() for the given group</td>
    </tr>
    <tr>
        <td>41</td>
        <td>tBodyGyroJerkMag_mean</td>
        <td>mean of the original measure tBodyGyroJerkMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>42</td>
        <td>tBodyGyroJerkMag_std</td>
        <td>mean of the original measure tBodyGyroJerkMag-std() for the given group</td>
    </tr>
    <tr>
        <td>43</td>
        <td>fBodyAcc_mean_X</td>
        <td>mean of the original measure fBodyAcc-mean()-X for the given group</td>
    </tr>
    <tr>
        <td>44</td>
        <td>fBodyAcc_mean_Y</td>
        <td>mean of the original measure fBodyAcc-mean()-Y for the given group</td>
    </tr>
    <tr>
        <td>45</td>
        <td>fBodyAcc_mean_Z</td>
        <td>mean of the original measure fBodyAcc-mean()-Z for the given group</td>
    </tr>
    <tr>
        <td>46</td>
        <td>fBodyAcc_std_X</td>
        <td>mean of the original measure fBodyAcc-std()-X for the given group</td>
    </tr>
    <tr>
        <td>47</td>
        <td>fBodyAcc_std_Y</td>
        <td>mean of the original measure fBodyAcc-std()-Y for the given group</td>
    </tr>
    <tr>
        <td>48</td>
        <td>fBodyAcc_std_Z</td>
        <td>mean of the original measure fBodyAcc-std()-Z for the given group</td>
    </tr>
    <tr>
        <td>49</td>
        <td>fBodyAccJerk_mean_X</td>
        <td>mean of the original measure fBodyAccJerk-mean()-X for the given group</td>
    </tr>
    <tr>
        <td>50</td>
        <td>fBodyAccJerk_mean_Y</td>
        <td>mean of the original measure fBodyAccJerk-mean()-Y for the given group</td>
    </tr>
    <tr>
        <td>51</td>
        <td>fBodyAccJerk_mean_Z</td>
        <td>mean of the original measure fBodyAccJerk-mean()-Z for the given group</td>
    </tr>
    <tr>
        <td>52</td>
        <td>fBodyAccJerk_std_X</td>
        <td>mean of the original measure fBodyAccJerk-std()-X for the given group</td>
    </tr>
    <tr>
        <td>53</td>
        <td>fBodyAccJerk_std_Y</td>
        <td>mean of the original measure fBodyAccJerk-std()-Y for the given group</td>
    </tr>
    <tr>
        <td>54</td>
        <td>fBodyAccJerk_std_Z</td>
        <td>mean of the original measure fBodyAccJerk-std()-Z for the given group</td>
    </tr>
    <tr>
        <td>55</td>
        <td>fBodyGyro_mean_X</td>
        <td>mean of the original measure fBodyGyro-mean()-X for the given group</td>
    </tr>
    <tr>
        <td>56</td>
        <td>fBodyGyro_mean_Y</td>
        <td>mean of the original measure fBodyGyro-mean()-Y for the given group</td>
    </tr>
    <tr>
        <td>57</td>
        <td>fBodyGyro_mean_Z</td>
        <td>mean of the original measure fBodyGyro-mean()-Z for the given group</td>
    </tr>
    <tr>
        <td>58</td>
        <td>fBodyGyro_std_X</td>
        <td>mean of the original measure fBodyGyro-std()-X for the given group</td>
    </tr>
    <tr>
        <td>59</td>
        <td>fBodyGyro_std_Y</td>
        <td>mean of the original measure fBodyGyro-std()-Y for the given group</td>
    </tr>
    <tr>
        <td>60</td>
        <td>fBodyGyro_std_Z</td>
        <td>mean of the original measure fBodyGyro-std()-Z for the given group</td>
    </tr>
    <tr>
        <td>61</td>
        <td>fBodyAccMag_mean</td>
        <td>mean of the original measure fBodyAccMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>62</td>
        <td>fBodyAccMag_std</td>
        <td>mean of the original measure fBodyAccMag-std() for the given group</td>
    </tr>
    <tr>
        <td>63</td>
        <td>fBodyAccJerkMag_mean</td>
        <td>mean of the original measure fBodyAccJerkMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>64</td>
        <td>fBodyAccJerkMag_std</td>
        <td>mean of the original measure fBodyAccJerkMag-std() for the given group</td>
    </tr>
    <tr>
        <td>65</td>
        <td>fBodyGyroMag_mean</td>
        <td>mean of the original measure fBodyGyroMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>66</td>
        <td>fBodyGyroMag_std</td>
        <td>mean of the original measure fBodyGyroMag-std() for the given group</td>
    </tr>
    <tr>
        <td>67</td>
        <td>fBodyGyroJerkMag_mean</td>
        <td>mean of the original measure fBodyGyroJerkMag-mean() for the given group</td>
    </tr>
    <tr>
        <td>68</td>
        <td>fBodyGyroJerkMag_std</td>
        <td>mean of the original measure fBodyGyroJerkMag-std() for the given group</td>
    </tr>
</table>

