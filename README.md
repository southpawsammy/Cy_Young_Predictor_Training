# Cy_Young_Predictor_Training
Using Keras and Tensorflow to create a prediction model for the winner of the Cy Young award from 18 columns (statistics) using historical data

The sequential Keras model is using the 17 metrics, including ERA, FIP, WHIP, etc, to predict the correct share of total votes that each pitcher received, indicated by the 'points' column. The queries used are pulling from a sqlite version of the lahmann database. Data pulled is the top five pitchers that received Cy Young votes in each league of each year from (1975 to 2016)

The correlation map is a cool look at positive and negative correlations between the winner of the Cy Young and each statistic being used to predict. 
