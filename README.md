# Deliverable 1: Planning our Analysis

# Video Games Analysis
Git Repository for Project Group 4 

Link to dataset: https://www.kaggle.com/datasets/thedevastator/discovering-hidden-trends-in-global-video-games 

Link to data: https://sbcharitybucket.s3.us-west-2.amazonaws.com/Video_Games.csv

# Project Overview & Selected Topic
- Can we predict global revenues within the first year of a new game's release? Discover the key features for rev. predictions
- Is there a direct connection between score, rating, & sales?

# Data description and why we select it?
- We selected a dataset that includes all video games that were launched between 1980 to 2020. Columns include name, genre ,publisher, platform, sales by region, critic scores, user scores, units etc. 
- We are selecting this dataset because we are interested in gaming and would love to understand how gaming industry had developed over the 20 years.

# List of Technologies Used
- Python
- SQL
- Tableau
- AWS

# Cleaning the Data Set
- Drop null values
- Drop columns: Critic Count, User Count, Developer, Rating (Alternatively try filling in null values with averages of the column)
- Normalize critic score and user score
- Weighted average of Revenues per year for direct comparisons between games - ie 50% (arbitrary) of revenue comes within the first year

# Proposed ML Model:
We are designing a model to predict the revenues of videogames by geography and ultimately global. First, we are examining the statistical relationship of the data set's features to determine relevance. Then we will employ a linear regression model to predict video game revenues. We will examine different methods to improve the accuracy of our model by altering label encoding, dropping variables, and can also change how data points are grouped.


# Proposed Vizualization Analysis
- Best selling genre by market
- User/critic score by games/genres
- Sales by genre by region
