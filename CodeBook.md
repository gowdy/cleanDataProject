
Data read from six text files into six data frames.  Two of those
contain the bulk of the data. Others contain single columns for
Subject number (person) and activity (Walking, etc). The single columns
are added to the appropriate data frame. Then the two data frames are
concatentated.

A new column is created as a Factor of the Activity to make a human
readable string. The Code Book for the dataset is used to define the
numbers.

Mean and standard deviation are then calculated on the three spacial
and three angular accelerations.

A new dataframe is created using the aggregate method which calculates
the mean for each for the six important numbers broken down for each
activity and each subject.

